/**********************************************************************
 * Copyright (c) 2020-2023
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTIABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 **********************************************************************/

#include <linux/ktime.h>
#include <linux/sched/clock.h>

#include "nvmev.h"
#include "ssd.h"
#include "zns_ftl.h"

static void __init_descriptor(struct zns_ftl *zns_ftl)
{
	struct zone_descriptor *zone_descs;
	uint32_t zone_size = zns_ftl->zp.zone_size;
	uint32_t nr_zones = zns_ftl->zp.nr_zones;
	uint64_t zslba = 0;
	uint32_t i = 0;
	const uint32_t zrwa_buffer_size = zns_ftl->zp.zrwa_buffer_size;

	zns_ftl->zone_descs = kmalloc(sizeof(struct zone_descriptor) * nr_zones, GFP_KERNEL);
	zns_ftl->report_buffer = kmalloc(sizeof(struct zone_report) +
						 sizeof(struct zone_descriptor) * nr_zones,
					 GFP_KERNEL);
	zns_ftl->zwra_buffer = kmalloc(sizeof(struct buffer) * nr_zones, GFP_KERNEL);

	zone_descs = zns_ftl->zone_descs;
	memset(zone_descs, 0, sizeof(struct zone_descriptor) * zns_ftl->zp.nr_zones);

	for (i = 0; i < nr_zones; i++) {
		zone_descs[i].state = ZONE_STATE_EMPTY;
		zone_descs[i].type = ZONE_TYPE_SEQ_WRITE_REQUIRED;

		zone_descs[i].zslba = zslba;
		zone_descs[i].wp = zslba;
		zslba += BYTE_TO_LBA(zone_size);
		zone_descs[i].zone_capacity = BYTE_TO_LBA(zone_size);

		buffer_init(&(zns_ftl->zwra_buffer[i]), zrwa_buffer_size);

		NVMEV_ZNS_DEBUG("[i] zslba 0x%llx zone capacity 0x%llx\n", zone_descs[i].zslba,
				zone_descs[i].zone_capacity);
	}
}

static void __remove_descriptor(struct zns_ftl *zns_ftl)
{
	kfree(zns_ftl->zwra_buffer);
	kfree(zns_ftl->report_buffer);
	kfree(zns_ftl->zone_descs);
}

static void __init_resource(struct zns_ftl *zns_ftl)
{
	struct zone_resource_info *res_infos = zns_ftl->res_infos;

	res_infos[ACTIVE_ZONE].total_cnt = zns_ftl->zp.nr_zones;
	res_infos[ACTIVE_ZONE].acquired_cnt = 0;

	res_infos[OPEN_ZONE].total_cnt = zns_ftl->zp.nr_zones;
	res_infos[OPEN_ZONE].acquired_cnt = 0;

	res_infos[ZRWA_ZONE].total_cnt = zns_ftl->zp.nr_zones;
	res_infos[ZRWA_ZONE].acquired_cnt = 0;
}

static void zns_init_params(struct znsparams *zpp, struct ssdparams *spp, uint64_t capacity)
{
	zpp->zone_size = ZONE_SIZE;
	zpp->nr_zones = capacity / ZONE_SIZE;
	zpp->dies_per_zone = DIES_PER_ZONE;
	zpp->nr_active_zones = zpp->nr_zones; // max
	zpp->nr_open_zones = zpp->nr_zones; // max
	zpp->nr_zrwa_zones = MAX_ZRWA_ZONES;
	zpp->zrwa_size = ZRWA_SIZE;
	zpp->zrwafg_size = ZRWAFG_SIZE;
	zpp->zrwa_buffer_size = ZRWA_BUFFER_SIZE;
	zpp->lbas_per_zrwa = zpp->zrwa_size / spp->secsz;
	zpp->lbas_per_zrwafg = zpp->zrwafg_size / spp->secsz;

	NVMEV_ASSERT((capacity % zpp->zone_size) == 0);
	/* It should be 4KB aligned, according to lpn size */
	NVMEV_ASSERT((zpp->zone_size % spp->pgsz) == 0);

	NVMEV_INFO("zone_size=%d(KB), # zones=%d # die/zone=%d \n", zpp->zone_size, zpp->nr_zones,
		   zpp->dies_per_zone);
}

static void zns_init_ftl(struct zns_ftl *zns_ftl, struct znsparams *zpp, struct ssd *ssd,
			 void *mapped_addr)
{
	/*copy znsparams*/
	zns_ftl->zp = *zpp;

	zns_ftl->ssd = ssd;
	zns_ftl->storage_base_addr = mapped_addr;

	__init_descriptor(zns_ftl);
	__init_resource(zns_ftl);
}

void zns_init_namespace(struct nvmev_ns *ns, uint32_t id, uint64_t size, void *mapped_addr,
			uint32_t cpu_nr_dispatcher)
{
	struct ssd *ssd;
	struct zns_ftl *zns_ftl;

	struct ssdparams spp;
	struct znsparams zpp;

	const uint32_t nr_parts = 1; /* Not support multi partitions for zns*/
	NVMEV_ASSERT(nr_parts == 1);

	ssd = kmalloc(sizeof(struct ssd), GFP_KERNEL);
	ssd_init_params(&spp, size, nr_parts);
	ssd_init(ssd, &spp, cpu_nr_dispatcher);

	zns_ftl = kmalloc(sizeof(struct zns_ftl) * nr_parts, GFP_KERNEL);
	zns_init_params(&zpp, &spp, size);
	zns_init_ftl(zns_ftl, &zpp, ssd, mapped_addr);

	ns->id = id;
	ns->csi = NVME_CSI_ZNS;
	ns->nr_parts = nr_parts;
	ns->ftls = (void *)zns_ftl;
	ns->size = size;
	ns->mapped = mapped_addr;
	/*register io command handler*/
	ns->proc_io_cmd = zns_proc_nvme_io_cmd;
	return;
}

void zns_remove_namespace(struct nvmev_ns *ns)
{
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;

	ssd_remove(zns_ftl->ssd);

	__remove_descriptor(zns_ftl);
	kfree(zns_ftl->ssd);
	kfree(zns_ftl);

	ns->ftls = NULL;
}

static void zns_flush(struct nvmev_ns *ns, struct nvmev_request *req, struct nvmev_result *ret)
{
	uint64_t start, latest;
	uint32_t i;
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;

	start = local_clock();
	latest = start;
	for (i = 0; i < ns->nr_parts; i++) {
		latest = max(latest, ssd_next_idle_time(zns_ftl[i].ssd));
	}

	NVMEV_DEBUG("%s latency=%llu\n", __FUNCTION__, latest - start);

	ret->status = NVME_SC_SUCCESS;
	ret->nsecs_target = latest;
	return;
}

bool zns_proc_nvme_io_cmd(struct nvmev_ns *ns, struct nvmev_request *req, struct nvmev_result *ret)
{
	struct nvme_command *cmd = req->cmd;
	NVMEV_ASSERT(ns->csi == NVME_CSI_ZNS);
	/*still not support multi partitions ...*/
	NVMEV_ASSERT(ns->nr_parts == 1);

	switch (cmd->common.opcode) {
	case nvme_cmd_write:
		if (!zns_write(ns, req, ret))
			return false;
		break;
	case nvme_cmd_read:
		if (!zns_read(ns, req, ret))
			return false;
		break;
	case nvme_cmd_flush:
		zns_flush(ns, req, ret);
		break;
	case nvme_cmd_zone_mgmt_send:
		zns_zmgmt_send(ns, req, ret);
		break;
	case nvme_cmd_zone_mgmt_recv:
		zns_zmgmt_recv(ns, req, ret);
		break;
	case nvme_cmd_zone_append:
		NVMEV_INFO("Zone Append is not implemented yet!\n");
	default:
		NVMEV_ERROR("%s: unimplemented command: %s(%d)\n", __func__,
			   nvme_opcode_string(cmd->common.opcode), cmd->common.opcode);
		break;
	}

	return true;
}
