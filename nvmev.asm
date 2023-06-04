
nvmev.ko：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <__pfx_set_parse_mem_param>:
       0:	90                   	nop
       1:	90                   	nop
       2:	90                   	nop
       3:	90                   	nop
       4:	90                   	nop
       5:	90                   	nop
       6:	90                   	nop
       7:	90                   	nop
       8:	90                   	nop
       9:	90                   	nop
       a:	90                   	nop
       b:	90                   	nop
       c:	90                   	nop
       d:	90                   	nop
       e:	90                   	nop
       f:	90                   	nop

0000000000000010 <set_parse_mem_param>:
static unsigned int debug = 0;

extern int io_using_dma;

static int set_parse_mem_param(const char *val, const struct kernel_param *kp)
{
      10:	f3 0f 1e fa          	endbr64
      14:	e8 00 00 00 00       	call   19 <set_parse_mem_param+0x9>
      19:	53                   	push   %rbx
	unsigned long *arg = (unsigned long *)kp->arg;
      1a:	48 8b 5e 20          	mov    0x20(%rsi),%rbx
	*arg = memparse(val, NULL);
      1e:	31 f6                	xor    %esi,%esi
      20:	e8 00 00 00 00       	call   25 <set_parse_mem_param+0x15>
      25:	48 89 03             	mov    %rax,(%rbx)
	return 0;
}
      28:	31 c0                	xor    %eax,%eax
      2a:	5b                   	pop    %rbx
      2b:	e9 00 00 00 00       	jmp    30 <__pfx___proc_file_open>

0000000000000030 <__pfx___proc_file_open>:
      30:	90                   	nop
      31:	90                   	nop
      32:	90                   	nop
      33:	90                   	nop
      34:	90                   	nop
      35:	90                   	nop
      36:	90                   	nop
      37:	90                   	nop
      38:	90                   	nop
      39:	90                   	nop
      3a:	90                   	nop
      3b:	90                   	nop
      3c:	90                   	nop
      3d:	90                   	nop
      3e:	90                   	nop
      3f:	90                   	nop

0000000000000040 <__proc_file_open>:

	return count;
}

static int __proc_file_open(struct inode *inode, struct file *file)
{
      40:	f3 0f 1e fa          	endbr64
      44:	e8 00 00 00 00       	call   49 <__proc_file_open+0x9>
	return single_open(file, __proc_file_read, (char *)file->f_path.dentry->d_name.name);
      49:	48 8b 46 18          	mov    0x18(%rsi),%rax
{
      4d:	48 89 f7             	mov    %rsi,%rdi
	return single_open(file, __proc_file_read, (char *)file->f_path.dentry->d_name.name);
      50:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
      57:	48 8b 50 28          	mov    0x28(%rax),%rdx
      5b:	e9 00 00 00 00       	jmp    60 <__pfx___proc_file_read>

0000000000000060 <__pfx___proc_file_read>:
      60:	90                   	nop
      61:	90                   	nop
      62:	90                   	nop
      63:	90                   	nop
      64:	90                   	nop
      65:	90                   	nop
      66:	90                   	nop
      67:	90                   	nop
      68:	90                   	nop
      69:	90                   	nop
      6a:	90                   	nop
      6b:	90                   	nop
      6c:	90                   	nop
      6d:	90                   	nop
      6e:	90                   	nop
      6f:	90                   	nop

0000000000000070 <__proc_file_read>:
{
      70:	f3 0f 1e fa          	endbr64
      74:	e8 00 00 00 00       	call   79 <__proc_file_read+0x9>
      79:	41 57                	push   %r15
	if (strcmp(filename, "read_times") == 0) {
      7b:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
{
      82:	41 56                	push   %r14
      84:	41 55                	push   %r13
      86:	49 89 fd             	mov    %rdi,%r13
      89:	41 54                	push   %r12
      8b:	55                   	push   %rbp
      8c:	53                   	push   %rbx
      8d:	48 83 ec 10          	sub    $0x10,%rsp
	const char *filename = m->private;
      91:	48 8b 5f 70          	mov    0x70(%rdi),%rbx
	struct nvmev_config *cfg = &nvmev_vdev->config;
      95:	48 8b 2d 00 00 00 00 	mov    0x0(%rip),%rbp        # 9c <__proc_file_read+0x2c>
	if (strcmp(filename, "read_times") == 0) {
      9c:	48 89 df             	mov    %rbx,%rdi
      9f:	e8 00 00 00 00       	call   a4 <__proc_file_read+0x34>
      a4:	85 c0                	test   %eax,%eax
      a6:	0f 84 54 01 00 00    	je     200 <__proc_file_read+0x190>
	} else if (strcmp(filename, "write_times") == 0) {
      ac:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
      b3:	48 89 df             	mov    %rbx,%rdi
      b6:	e8 00 00 00 00       	call   bb <__proc_file_read+0x4b>
      bb:	85 c0                	test   %eax,%eax
      bd:	0f 84 06 01 00 00    	je     1c9 <__proc_file_read+0x159>
	} else if (strcmp(filename, "io_units") == 0) {
      c3:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
      ca:	48 89 df             	mov    %rbx,%rdi
      cd:	e8 00 00 00 00       	call   d2 <__proc_file_read+0x62>
      d2:	85 c0                	test   %eax,%eax
      d4:	0f 84 4a 01 00 00    	je     224 <__proc_file_read+0x1b4>
	} else if (strcmp(filename, "stat") == 0) {
      da:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
      e1:	48 89 df             	mov    %rbx,%rdi
      e4:	e8 00 00 00 00       	call   e9 <__proc_file_read+0x79>
      e9:	85 c0                	test   %eax,%eax
      eb:	0f 85 fa 00 00 00    	jne    1eb <__proc_file_read+0x17b>
		for (i = 1; i <= nvmev_vdev->nr_sq; i++) {
      f1:	44 8b b5 b4 01 00 00 	mov    0x1b4(%rbp),%r14d
      f8:	45 85 f6             	test   %r14d,%r14d
      fb:	0f 84 40 01 00 00    	je     241 <__proc_file_read+0x1d1>
     101:	41 bc 01 00 00 00    	mov    $0x1,%r12d
		unsigned long long total_io = 0;
     107:	45 31 d2             	xor    %r10d,%r10d
		unsigned int nr_dispatch = 0;
     10a:	45 31 ff             	xor    %r15d,%r15d
		unsigned int nr_in_flight = 0;
     10d:	45 31 f6             	xor    %r14d,%r14d
			struct nvmev_submission_queue *sq = nvmev_vdev->sqes[i];
     110:	49 63 d4             	movslq %r12d,%rdx
     113:	48 8b 9c d5 c8 01 00 	mov    0x1c8(%rbp,%rdx,8),%rbx
     11a:	00 
			if (!sq)
     11b:	48 85 db             	test   %rbx,%rbx
     11e:	74 7b                	je     19b <__proc_file_read+0x12b>
	int diff = nvmev_vdev->dbs[dbs_idx] - nvmev_vdev->old_dbs[dbs_idx];
     120:	4c 8b 9d 98 01 00 00 	mov    0x198(%rbp),%r11
     127:	48 8b 8d a0 01 00 00 	mov    0x1a0(%rbp),%rcx
     12e:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
			seq_printf(m, "%2d: %2u %4u %4u %4u %4u %llu\n", i,
     133:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     13a:	8b 7b 18             	mov    0x18(%rbx),%edi
     13d:	8b 53 1c             	mov    0x1c(%rbx),%edx
     140:	89 44 24 04          	mov    %eax,0x4(%rsp)
	int diff = nvmev_vdev->dbs[dbs_idx] - nvmev_vdev->old_dbs[dbs_idx];
     144:	42 8b 0c e1          	mov    (%rcx,%r12,8),%ecx
     148:	43 2b 0c e3          	sub    (%r11,%r12,8),%ecx
		diff += queue_size;
     14c:	44 8b 5b 10          	mov    0x10(%rbx),%r11d
			seq_printf(m, "%2d: %2u %4u %4u %4u %4u %llu\n", i,
     150:	44 8b 4b 24          	mov    0x24(%rbx),%r9d
     154:	44 8b 43 20          	mov    0x20(%rbx),%r8d
     158:	ff 73 28             	push   0x28(%rbx)
		diff += queue_size;
     15b:	41 01 cb             	add    %ecx,%r11d
			seq_printf(m, "%2d: %2u %4u %4u %4u %4u %llu\n", i,
     15e:	57                   	push   %rdi
		diff += queue_size;
     15f:	85 c9                	test   %ecx,%ecx
			seq_printf(m, "%2d: %2u %4u %4u %4u %4u %llu\n", i,
     161:	4c 89 ef             	mov    %r13,%rdi
     164:	52                   	push   %rdx
		diff += queue_size;
     165:	41 0f 48 cb          	cmovs  %r11d,%ecx
			seq_printf(m, "%2d: %2u %4u %4u %4u %4u %llu\n", i,
     169:	44 89 e2             	mov    %r12d,%edx
     16c:	e8 00 00 00 00       	call   171 <__proc_file_read+0x101>
			nr_in_flight += sq->stat.nr_in_flight;
     171:	44 03 73 20          	add    0x20(%rbx),%r14d
			nr_dispatched += sq->stat.nr_dispatched;
     175:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
			total_io += sq->stat.total_io;
     179:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
			nr_dispatch += sq->stat.nr_dispatch;
     17e:	44 03 7b 1c          	add    0x1c(%rbx),%r15d
			nr_dispatched += sq->stat.nr_dispatched;
     182:	03 43 18             	add    0x18(%rbx),%eax
			total_io += sq->stat.total_io;
     185:	4c 03 53 28          	add    0x28(%rbx),%r10
			sq->stat.max_nr_in_flight = 0;
     189:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%rbx)
     190:	48 8b 2d 00 00 00 00 	mov    0x0(%rip),%rbp        # 197 <__proc_file_read+0x127>
     197:	48 83 c4 18          	add    $0x18,%rsp
		for (i = 1; i <= nvmev_vdev->nr_sq; i++) {
     19b:	49 83 c4 01          	add    $0x1,%r12
     19f:	44 39 a5 b4 01 00 00 	cmp    %r12d,0x1b4(%rbp)
     1a6:	0f 83 64 ff ff ff    	jae    110 <__proc_file_read+0xa0>
		seq_printf(m, "total: %u %u %u %llu\n", nr_in_flight, nr_dispatch, nr_dispatched,
     1ac:	4d 89 d1             	mov    %r10,%r9
     1af:	41 89 c0             	mov    %eax,%r8d
     1b2:	44 89 f9             	mov    %r15d,%ecx
     1b5:	44 89 f2             	mov    %r14d,%edx
     1b8:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     1bf:	4c 89 ef             	mov    %r13,%rdi
     1c2:	e8 00 00 00 00       	call   1c7 <__proc_file_read+0x157>
     1c7:	eb 22                	jmp    1eb <__proc_file_read+0x17b>
		seq_printf(m, "%u + %u x + %u", cfg->write_delay, cfg->write_time,
     1c9:	8b 8d 58 01 00 00    	mov    0x158(%rbp),%ecx
     1cf:	8b 95 54 01 00 00    	mov    0x154(%rbp),%edx
     1d5:	4c 89 ef             	mov    %r13,%rdi
     1d8:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     1df:	44 8b 85 5c 01 00 00 	mov    0x15c(%rbp),%r8d
     1e6:	e8 00 00 00 00       	call   1eb <__proc_file_read+0x17b>
}
     1eb:	48 83 c4 10          	add    $0x10,%rsp
     1ef:	31 c0                	xor    %eax,%eax
     1f1:	5b                   	pop    %rbx
     1f2:	5d                   	pop    %rbp
     1f3:	41 5c                	pop    %r12
     1f5:	41 5d                	pop    %r13
     1f7:	41 5e                	pop    %r14
     1f9:	41 5f                	pop    %r15
     1fb:	e9 00 00 00 00       	jmp    200 <__proc_file_read+0x190>
		seq_printf(m, "%u + %u x + %u", cfg->read_delay, cfg->read_time,
     200:	8b 8d 4c 01 00 00    	mov    0x14c(%rbp),%ecx
     206:	8b 95 48 01 00 00    	mov    0x148(%rbp),%edx
     20c:	4c 89 ef             	mov    %r13,%rdi
     20f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     216:	44 8b 85 50 01 00 00 	mov    0x150(%rbp),%r8d
     21d:	e8 00 00 00 00       	call   222 <__proc_file_read+0x1b2>
     222:	eb c7                	jmp    1eb <__proc_file_read+0x17b>
		seq_printf(m, "%u x %u", cfg->nr_io_units, cfg->io_unit_shift);
     224:	8b 8d bc 00 00 00    	mov    0xbc(%rbp),%ecx
     22a:	8b 95 b8 00 00 00    	mov    0xb8(%rbp),%edx
     230:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     237:	4c 89 ef             	mov    %r13,%rdi
     23a:	e8 00 00 00 00       	call   23f <__proc_file_read+0x1cf>
     23f:	eb aa                	jmp    1eb <__proc_file_read+0x17b>
		unsigned int nr_dispatched = 0;
     241:	31 c0                	xor    %eax,%eax
		unsigned int nr_dispatch = 0;
     243:	45 31 ff             	xor    %r15d,%r15d
		unsigned long long total_io = 0;
     246:	45 31 d2             	xor    %r10d,%r10d
     249:	e9 5e ff ff ff       	jmp    1ac <__proc_file_read+0x13c>
     24e:	66 90                	xchg   %ax,%ax

0000000000000250 <__pfx_nvmev_dispatcher>:
     250:	90                   	nop
     251:	90                   	nop
     252:	90                   	nop
     253:	90                   	nop
     254:	90                   	nop
     255:	90                   	nop
     256:	90                   	nop
     257:	90                   	nop
     258:	90                   	nop
     259:	90                   	nop
     25a:	90                   	nop
     25b:	90                   	nop
     25c:	90                   	nop
     25d:	90                   	nop
     25e:	90                   	nop
     25f:	90                   	nop

0000000000000260 <nvmev_dispatcher>:
{
     260:	f3 0f 1e fa          	endbr64
     264:	e8 00 00 00 00       	call   269 <nvmev_dispatcher+0x9>
	NVMEV_INFO("nvmev_dispatcher started on cpu %d (node %d)\n",
     269:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 270 <nvmev_dispatcher+0x10>
{
     270:	41 54                	push   %r12
	NVMEV_INFO("nvmev_dispatcher started on cpu %d (node %d)\n",
     272:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     279:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
{
     280:	55                   	push   %rbp
     281:	53                   	push   %rbx
	NVMEV_INFO("nvmev_dispatcher started on cpu %d (node %d)\n",
     282:	48 63 88 c0 00 00 00 	movslq 0xc0(%rax),%rcx
#endif

#ifndef cpu_to_node
static inline int cpu_to_node(int cpu)
{
	return per_cpu(numa_node, cpu);
     289:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
     290:	48 89 ca             	mov    %rcx,%rdx
     293:	48 8b 0c cd 00 00 00 	mov    0x0(,%rcx,8),%rcx
     29a:	00 
     29b:	8b 0c 01             	mov    (%rcx,%rax,1),%ecx
     29e:	e8 00 00 00 00       	call   2a3 <nvmev_dispatcher+0x43>
	while (!kthread_should_stop()) {
     2a3:	e8 00 00 00 00       	call   2a8 <nvmev_dispatcher+0x48>
     2a8:	84 c0                	test   %al,%al
     2aa:	0f 85 5c 01 00 00    	jne    40c <nvmev_dispatcher+0x1ac>
		nvmev_proc_bars();
     2b0:	e8 00 00 00 00       	call   2b5 <nvmev_dispatcher+0x55>
	new_db = nvmev_vdev->dbs[0];
     2b5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2bc <nvmev_dispatcher+0x5c>
     2bc:	48 8b 88 a0 01 00 00 	mov    0x1a0(%rax),%rcx
	if (new_db != nvmev_vdev->old_dbs[0]) {
     2c3:	48 8b 90 98 01 00 00 	mov    0x198(%rax),%rdx
	new_db = nvmev_vdev->dbs[0];
     2ca:	8b 19                	mov    (%rcx),%ebx
	if (new_db != nvmev_vdev->old_dbs[0]) {
     2cc:	8b 32                	mov    (%rdx),%esi
     2ce:	39 f3                	cmp    %esi,%ebx
     2d0:	74 2c                	je     2fe <nvmev_dispatcher+0x9e>
		nvmev_proc_admin_sq(new_db, nvmev_vdev->old_dbs[0]);
     2d2:	89 df                	mov    %ebx,%edi
     2d4:	e8 00 00 00 00       	call   2d9 <nvmev_dispatcher+0x79>
		nvmev_vdev->old_dbs[0] = new_db;
     2d9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2e0 <nvmev_dispatcher+0x80>
     2e0:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
     2e7:	89 18                	mov    %ebx,(%rax)
	new_db = nvmev_vdev->dbs[1];
     2e9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2f0 <nvmev_dispatcher+0x90>
     2f0:	48 8b 88 a0 01 00 00 	mov    0x1a0(%rax),%rcx
	if (new_db != nvmev_vdev->old_dbs[1]) {
     2f7:	48 8b 90 98 01 00 00 	mov    0x198(%rax),%rdx
	new_db = nvmev_vdev->dbs[1];
     2fe:	8b 59 04             	mov    0x4(%rcx),%ebx
	if (new_db != nvmev_vdev->old_dbs[1]) {
     301:	8b 72 04             	mov    0x4(%rdx),%esi
     304:	39 f3                	cmp    %esi,%ebx
     306:	74 1f                	je     327 <nvmev_dispatcher+0xc7>
		nvmev_proc_admin_cq(new_db, nvmev_vdev->old_dbs[1]);
     308:	89 df                	mov    %ebx,%edi
     30a:	e8 00 00 00 00       	call   30f <nvmev_dispatcher+0xaf>
		nvmev_vdev->old_dbs[1] = new_db;
     30f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 316 <nvmev_dispatcher+0xb6>
     316:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
     31d:	89 58 04             	mov    %ebx,0x4(%rax)
	for (qid = 1; qid <= nvmev_vdev->nr_sq; qid++) {
     320:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 327 <nvmev_dispatcher+0xc7>
     327:	8b 88 b4 01 00 00    	mov    0x1b4(%rax),%ecx
     32d:	85 c9                	test   %ecx,%ecx
     32f:	74 58                	je     389 <nvmev_dispatcher+0x129>
     331:	bb 01 00 00 00       	mov    $0x1,%ebx
		if (nvmev_vdev->sqes[qid] == NULL)
     336:	48 63 d3             	movslq %ebx,%rdx
     339:	89 df                	mov    %ebx,%edi
     33b:	48 83 bc d0 c8 01 00 	cmpq   $0x0,0x1c8(%rax,%rdx,8)
     342:	00 00 
     344:	74 37                	je     37d <nvmev_dispatcher+0x11d>
		new_db = nvmev_vdev->dbs[dbs_idx];
     346:	48 8b 90 a0 01 00 00 	mov    0x1a0(%rax),%rdx
     34d:	8b 34 da             	mov    (%rdx,%rbx,8),%esi
		old_db = nvmev_vdev->old_dbs[dbs_idx];
     350:	48 8b 90 98 01 00 00 	mov    0x198(%rax),%rdx
     357:	8b 14 da             	mov    (%rdx,%rbx,8),%edx
		if (new_db != old_db) {
     35a:	39 d6                	cmp    %edx,%esi
     35c:	74 1f                	je     37d <nvmev_dispatcher+0x11d>
			nvmev_vdev->old_dbs[dbs_idx] = nvmev_proc_io_sq(qid, new_db, old_db);
     35e:	e8 00 00 00 00       	call   363 <nvmev_dispatcher+0x103>
     363:	89 c2                	mov    %eax,%edx
     365:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 36c <nvmev_dispatcher+0x10c>
     36c:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
     373:	89 14 d8             	mov    %edx,(%rax,%rbx,8)
     376:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 37d <nvmev_dispatcher+0x11d>
	for (qid = 1; qid <= nvmev_vdev->nr_sq; qid++) {
     37d:	48 83 c3 01          	add    $0x1,%rbx
     381:	39 98 b4 01 00 00    	cmp    %ebx,0x1b4(%rax)
     387:	73 ad                	jae    336 <nvmev_dispatcher+0xd6>
	for (qid = 1; qid <= nvmev_vdev->nr_cq; qid++) {
     389:	8b 90 b8 01 00 00    	mov    0x1b8(%rax),%edx
     38f:	bb 01 00 00 00       	mov    $0x1,%ebx
     394:	85 d2                	test   %edx,%edx
     396:	74 62                	je     3fa <nvmev_dispatcher+0x19a>
		if (nvmev_vdev->cqes[qid] == NULL)
     398:	48 63 d3             	movslq %ebx,%rdx
     39b:	89 df                	mov    %ebx,%edi
     39d:	48 83 bc d0 10 04 00 	cmpq   $0x0,0x410(%rax,%rdx,8)
     3a4:	00 00 
     3a6:	74 46                	je     3ee <nvmev_dispatcher+0x18e>
		new_db = nvmev_vdev->dbs[dbs_idx];
     3a8:	48 8b 90 a0 01 00 00 	mov    0x1a0(%rax),%rdx
     3af:	48 8d 2c dd 00 00 00 	lea    0x0(,%rbx,8),%rbp
     3b6:	00 
     3b7:	44 8b 64 2a 04       	mov    0x4(%rdx,%rbp,1),%r12d
		old_db = nvmev_vdev->old_dbs[dbs_idx];
     3bc:	48 8b 90 98 01 00 00 	mov    0x198(%rax),%rdx
     3c3:	8b 54 2a 04          	mov    0x4(%rdx,%rbp,1),%edx
		if (new_db != old_db) {
     3c7:	41 39 d4             	cmp    %edx,%r12d
     3ca:	74 22                	je     3ee <nvmev_dispatcher+0x18e>
			nvmev_proc_io_cq(qid, new_db, old_db);
     3cc:	44 89 e6             	mov    %r12d,%esi
     3cf:	e8 00 00 00 00       	call   3d4 <nvmev_dispatcher+0x174>
			nvmev_vdev->old_dbs[dbs_idx] = new_db;
     3d4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 3db <nvmev_dispatcher+0x17b>
     3db:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
     3e2:	44 89 64 28 04       	mov    %r12d,0x4(%rax,%rbp,1)
     3e7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 3ee <nvmev_dispatcher+0x18e>
	for (qid = 1; qid <= nvmev_vdev->nr_cq; qid++) {
     3ee:	48 83 c3 01          	add    $0x1,%rbx
     3f2:	39 98 b8 01 00 00    	cmp    %ebx,0x1b8(%rax)
     3f8:	73 9e                	jae    398 <nvmev_dispatcher+0x138>

DECLARE_STATIC_CALL(cond_resched, __cond_resched);

static __always_inline int _cond_resched(void)
{
	return static_call_mod(cond_resched)();
     3fa:	e8 00 00 00 00       	call   3ff <nvmev_dispatcher+0x19f>
	while (!kthread_should_stop()) {
     3ff:	e8 00 00 00 00       	call   404 <nvmev_dispatcher+0x1a4>
     404:	84 c0                	test   %al,%al
     406:	0f 84 a4 fe ff ff    	je     2b0 <nvmev_dispatcher+0x50>
}
     40c:	5b                   	pop    %rbx
     40d:	31 c0                	xor    %eax,%eax
     40f:	5d                   	pop    %rbp
     410:	41 5c                	pop    %r12
     412:	e9 00 00 00 00       	jmp    417 <nvmev_dispatcher+0x1b7>
     417:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     41e:	00 00 

0000000000000420 <__pfx___proc_file_write>:
     420:	90                   	nop
     421:	90                   	nop
     422:	90                   	nop
     423:	90                   	nop
     424:	90                   	nop
     425:	90                   	nop
     426:	90                   	nop
     427:	90                   	nop
     428:	90                   	nop
     429:	90                   	nop
     42a:	90                   	nop
     42b:	90                   	nop
     42c:	90                   	nop
     42d:	90                   	nop
     42e:	90                   	nop
     42f:	90                   	nop

0000000000000430 <__proc_file_write>:
{
     430:	f3 0f 1e fa          	endbr64
     434:	e8 00 00 00 00       	call   439 <__proc_file_write+0x9>
     439:	41 57                	push   %r15
	char input[128];
     43b:	b9 10 00 00 00       	mov    $0x10,%ecx
{
     440:	41 56                	push   %r14
     442:	41 55                	push   %r13
     444:	49 89 f5             	mov    %rsi,%r13
     447:	41 54                	push   %r12
     449:	55                   	push   %rbp
     44a:	48 89 d5             	mov    %rdx,%rbp
     44d:	53                   	push   %rbx
	nr_copied = copy_from_user(input, buf, min(len, sizeof(input)));
     44e:	bb 80 00 00 00       	mov    $0x80,%ebx
{
     453:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
	struct nvmev_config *cfg = &nvmev_vdev->config;
     45a:	4c 8b 3d 00 00 00 00 	mov    0x0(%rip),%r15        # 461 <__proc_file_write+0x31>
	const char *filename = file->f_path.dentry->d_name.name;
     461:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
     468:	00 00 
     46a:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
     471:	00 
     472:	48 8b 47 18          	mov    0x18(%rdi),%rax
	char input[128];
     476:	49 89 e4             	mov    %rsp,%r12
     479:	4c 89 e7             	mov    %r12,%rdi
	const char *filename = file->f_path.dentry->d_name.name;
     47c:	4c 8b 70 28          	mov    0x28(%rax),%r14
	char input[128];
     480:	31 c0                	xor    %eax,%eax
	nr_copied = copy_from_user(input, buf, min(len, sizeof(input)));
     482:	48 39 da             	cmp    %rbx,%rdx
	char input[128];
     485:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	nr_copied = copy_from_user(input, buf, min(len, sizeof(input)));
     488:	48 0f 46 da          	cmovbe %rdx,%rbx

static __always_inline void check_object_size(const void *ptr, unsigned long n,
					      bool to_user)
{
	if (!__builtin_constant_p(n))
		__check_object_size(ptr, n, to_user);
     48c:	4c 89 e7             	mov    %r12,%rdi
     48f:	31 d2                	xor    %edx,%edx
     491:	48 89 de             	mov    %rbx,%rsi
     494:	e8 00 00 00 00       	call   499 <__proc_file_write+0x69>

static __always_inline unsigned long __must_check
copy_from_user(void *to, const void __user *from, unsigned long n)
{
	if (check_copy_size(to, n, false))
		n = _copy_from_user(to, from, n);
     499:	4c 89 ee             	mov    %r13,%rsi
     49c:	4c 89 e7             	mov    %r12,%rdi
     49f:	48 89 da             	mov    %rbx,%rdx
     4a2:	e8 00 00 00 00       	call   4a7 <__proc_file_write+0x77>
	if (!strcmp(filename, "read_times")) {
     4a7:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     4ae:	4c 89 f7             	mov    %r14,%rdi
     4b1:	e8 00 00 00 00       	call   4b6 <__proc_file_write+0x86>
     4b6:	85 c0                	test   %eax,%eax
     4b8:	0f 84 da 00 00 00    	je     598 <__proc_file_write+0x168>
	} else if (!strcmp(filename, "write_times")) {
     4be:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     4c5:	4c 89 f7             	mov    %r14,%rdi
     4c8:	e8 00 00 00 00       	call   4cd <__proc_file_write+0x9d>
     4cd:	85 c0                	test   %eax,%eax
     4cf:	74 73                	je     544 <__proc_file_write+0x114>
	} else if (!strcmp(filename, "io_units")) {
     4d1:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     4d8:	4c 89 f7             	mov    %r14,%rdi
     4db:	e8 00 00 00 00       	call   4e0 <__proc_file_write+0xb0>
     4e0:	85 c0                	test   %eax,%eax
     4e2:	0f 84 d6 00 00 00    	je     5be <__proc_file_write+0x18e>
	} else if (!strcmp(filename, "stat")) {
     4e8:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     4ef:	4c 89 f7             	mov    %r14,%rdi
     4f2:	e8 00 00 00 00       	call   4f7 <__proc_file_write+0xc7>
     4f7:	85 c0                	test   %eax,%eax
     4f9:	75 6d                	jne    568 <__proc_file_write+0x138>
		for (i = 1; i <= nvmev_vdev->nr_sq; i++) {
     4fb:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 502 <__proc_file_write+0xd2>
     502:	8b 86 b4 01 00 00    	mov    0x1b4(%rsi),%eax
     508:	85 c0                	test   %eax,%eax
     50a:	74 5c                	je     568 <__proc_file_write+0x138>
     50c:	b8 01 00 00 00       	mov    $0x1,%eax
			struct nvmev_submission_queue *sq = nvmev_vdev->sqes[i];
     511:	48 8b 94 c6 c8 01 00 	mov    0x1c8(%rsi,%rax,8),%rdx
     518:	00 
			if (!sq)
     519:	48 85 d2             	test   %rdx,%rdx
     51c:	74 18                	je     536 <__proc_file_write+0x106>
			memset(&sq->stat, 0x00, sizeof(sq->stat));
     51e:	48 c7 42 18 00 00 00 	movq   $0x0,0x18(%rdx)
     525:	00 
     526:	48 c7 42 20 00 00 00 	movq   $0x0,0x20(%rdx)
     52d:	00 
     52e:	48 c7 42 28 00 00 00 	movq   $0x0,0x28(%rdx)
     535:	00 
		for (i = 1; i <= nvmev_vdev->nr_sq; i++) {
     536:	48 83 c0 01          	add    $0x1,%rax
     53a:	39 86 b4 01 00 00    	cmp    %eax,0x1b4(%rsi)
     540:	73 cf                	jae    511 <__proc_file_write+0xe1>
     542:	eb 24                	jmp    568 <__proc_file_write+0x138>
		ret = sscanf(input, "%u %u %u", &cfg->write_delay, &cfg->write_time,
     544:	49 8d 8f 58 01 00 00 	lea    0x158(%r15),%rcx
     54b:	49 8d 97 54 01 00 00 	lea    0x154(%r15),%rdx
     552:	4c 89 e7             	mov    %r12,%rdi
     555:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     55c:	4d 8d 87 5c 01 00 00 	lea    0x15c(%r15),%r8
     563:	e8 00 00 00 00       	call   568 <__proc_file_write+0x138>
}
     568:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
     56f:	00 
     570:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
     577:	00 00 
     579:	0f 85 ac 00 00 00    	jne    62b <__proc_file_write+0x1fb>
     57f:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
     586:	48 89 e8             	mov    %rbp,%rax
     589:	5b                   	pop    %rbx
     58a:	5d                   	pop    %rbp
     58b:	41 5c                	pop    %r12
     58d:	41 5d                	pop    %r13
     58f:	41 5e                	pop    %r14
     591:	41 5f                	pop    %r15
     593:	e9 00 00 00 00       	jmp    598 <__proc_file_write+0x168>
		ret = sscanf(input, "%u %u %u", &cfg->read_delay, &cfg->read_time,
     598:	49 8d 8f 4c 01 00 00 	lea    0x14c(%r15),%rcx
     59f:	49 8d 97 48 01 00 00 	lea    0x148(%r15),%rdx
     5a6:	4c 89 e7             	mov    %r12,%rdi
     5a9:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     5b0:	4d 8d 87 50 01 00 00 	lea    0x150(%r15),%r8
     5b7:	e8 00 00 00 00       	call   5bc <__proc_file_write+0x18c>
     5bc:	eb aa                	jmp    568 <__proc_file_write+0x138>
		ret = sscanf(input, "%d %d", &cfg->nr_io_units, &cfg->io_unit_shift);
     5be:	49 8d 8f bc 00 00 00 	lea    0xbc(%r15),%rcx
     5c5:	49 8d 97 b8 00 00 00 	lea    0xb8(%r15),%rdx
     5cc:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     5d3:	4c 89 e7             	mov    %r12,%rdi
     5d6:	e8 00 00 00 00       	call   5db <__proc_file_write+0x1ab>
		if (ret < 1)
     5db:	85 c0                	test   %eax,%eax
     5dd:	74 89                	je     568 <__proc_file_write+0x138>
			kzalloc(sizeof(*nvmev_vdev->io_unit_stat) * cfg->nr_io_units, GFP_KERNEL);
     5df:	41 8b bf b8 00 00 00 	mov    0xb8(%r15),%edi
		old_stat = nvmev_vdev->io_unit_stat;
     5e6:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 5ed <__proc_file_write+0x1bd>
		index = kmalloc_index(size);
		return kmalloc_trace(
				kmalloc_caches[kmalloc_type(flags)][index],
				flags, size);
	}
	return __kmalloc(size, flags);
     5ed:	be c0 0d 00 00       	mov    $0xdc0,%esi
			kzalloc(sizeof(*nvmev_vdev->io_unit_stat) * cfg->nr_io_units, GFP_KERNEL);
     5f2:	48 c1 e7 03          	shl    $0x3,%rdi
		old_stat = nvmev_vdev->io_unit_stat;
     5f6:	4c 8b a3 88 06 00 00 	mov    0x688(%rbx),%r12
     5fd:	e8 00 00 00 00       	call   602 <__proc_file_write+0x1d2>
		nvmev_vdev->io_unit_stat =
     602:	48 89 83 88 06 00 00 	mov    %rax,0x688(%rbx)
     609:	bb 64 00 00 00       	mov    $0x64,%ebx
		mdelay(100); /* XXX: Delay the free of old stat so that outstanding
     60e:	bf 58 89 41 00       	mov    $0x418958,%edi
     613:	e8 00 00 00 00       	call   618 <__proc_file_write+0x1e8>
     618:	48 83 eb 01          	sub    $0x1,%rbx
     61c:	75 f0                	jne    60e <__proc_file_write+0x1de>
		kfree(old_stat);
     61e:	4c 89 e7             	mov    %r12,%rdi
     621:	e8 00 00 00 00       	call   626 <__proc_file_write+0x1f6>
     626:	e9 3d ff ff ff       	jmp    568 <__proc_file_write+0x138>
}
     62b:	e8 00 00 00 00       	call   630 <__pfx_NVMEV_STORAGE_INIT>

0000000000000630 <__pfx_NVMEV_STORAGE_INIT>:
     630:	90                   	nop
     631:	90                   	nop
     632:	90                   	nop
     633:	90                   	nop
     634:	90                   	nop
     635:	90                   	nop
     636:	90                   	nop
     637:	90                   	nop
     638:	90                   	nop
     639:	90                   	nop
     63a:	90                   	nop
     63b:	90                   	nop
     63c:	90                   	nop
     63d:	90                   	nop
     63e:	90                   	nop
     63f:	90                   	nop

0000000000000640 <NVMEV_STORAGE_INIT>:
	.release = single_release,
};
#endif

void NVMEV_STORAGE_INIT(struct nvmev_dev *nvmev_vdev)
{
     640:	f3 0f 1e fa          	endbr64
     644:	e8 00 00 00 00       	call   649 <NVMEV_STORAGE_INIT+0x9>
     649:	53                   	push   %rbx
	NVMEV_INFO("Storage : %lx + %lx\n", nvmev_vdev->config.storage_start,
     64a:	48 8b 8f b0 00 00 00 	mov    0xb0(%rdi),%rcx
{
     651:	48 89 fb             	mov    %rdi,%rbx
	NVMEV_INFO("Storage : %lx + %lx\n", nvmev_vdev->config.storage_start,
     654:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     65b:	48 8b 97 a8 00 00 00 	mov    0xa8(%rdi),%rdx
     662:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     669:	e8 00 00 00 00       	call   66e <NVMEV_STORAGE_INIT+0x2e>
		   nvmev_vdev->config.storage_size);

	nvmev_vdev->io_unit_stat = kzalloc(
		sizeof(*nvmev_vdev->io_unit_stat) * nvmev_vdev->config.nr_io_units, GFP_KERNEL);
     66e:	8b bb b8 00 00 00    	mov    0xb8(%rbx),%edi
     674:	be c0 0d 00 00       	mov    $0xdc0,%esi
	nvmev_vdev->io_unit_stat = kzalloc(
     679:	48 c1 e7 03          	shl    $0x3,%rdi
     67d:	e8 00 00 00 00       	call   682 <NVMEV_STORAGE_INIT+0x42>

	nvmev_vdev->storage_mapped = memremap(nvmev_vdev->config.storage_start,
     682:	48 8b b3 b0 00 00 00 	mov    0xb0(%rbx),%rsi
     689:	ba 01 00 00 00       	mov    $0x1,%edx
     68e:	48 8b bb a8 00 00 00 	mov    0xa8(%rbx),%rdi
	nvmev_vdev->io_unit_stat = kzalloc(
     695:	48 89 83 88 06 00 00 	mov    %rax,0x688(%rbx)
	nvmev_vdev->storage_mapped = memremap(nvmev_vdev->config.storage_start,
     69c:	e8 00 00 00 00       	call   6a1 <NVMEV_STORAGE_INIT+0x61>
     6a1:	48 89 83 68 01 00 00 	mov    %rax,0x168(%rbx)
					      nvmev_vdev->config.storage_size, MEMREMAP_WB);

	if (nvmev_vdev->storage_mapped == NULL)
     6a8:	48 85 c0             	test   %rax,%rax
     6ab:	0f 84 d5 00 00 00    	je     786 <NVMEV_STORAGE_INIT+0x146>
		NVMEV_ERROR("Failed to map storage memory.\n");

	nvmev_vdev->proc_root = proc_mkdir("nvmev", NULL);
     6b1:	31 f6                	xor    %esi,%esi
     6b3:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     6ba:	e8 00 00 00 00       	call   6bf <NVMEV_STORAGE_INIT+0x7f>
	nvmev_vdev->proc_read_times =
		proc_create("read_times", 0664, nvmev_vdev->proc_root, &proc_file_fops);
     6bf:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
     6c6:	be b4 01 00 00       	mov    $0x1b4,%esi
     6cb:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
	nvmev_vdev->proc_root = proc_mkdir("nvmev", NULL);
     6d2:	48 89 83 60 06 00 00 	mov    %rax,0x660(%rbx)
     6d9:	48 89 c2             	mov    %rax,%rdx
		proc_create("read_times", 0664, nvmev_vdev->proc_root, &proc_file_fops);
     6dc:	e8 00 00 00 00       	call   6e1 <NVMEV_STORAGE_INIT+0xa1>
	nvmev_vdev->proc_write_times =
		proc_create("write_times", 0664, nvmev_vdev->proc_root, &proc_file_fops);
     6e1:	48 8b 93 60 06 00 00 	mov    0x660(%rbx),%rdx
     6e8:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
     6ef:	be b4 01 00 00       	mov    $0x1b4,%esi
	nvmev_vdev->proc_read_times =
     6f4:	48 89 83 68 06 00 00 	mov    %rax,0x668(%rbx)
		proc_create("write_times", 0664, nvmev_vdev->proc_root, &proc_file_fops);
     6fb:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     702:	e8 00 00 00 00       	call   707 <NVMEV_STORAGE_INIT+0xc7>
	nvmev_vdev->proc_io_units =
		proc_create("io_units", 0664, nvmev_vdev->proc_root, &proc_file_fops);
     707:	48 8b 93 60 06 00 00 	mov    0x660(%rbx),%rdx
     70e:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
     715:	be b4 01 00 00       	mov    $0x1b4,%esi
	nvmev_vdev->proc_write_times =
     71a:	48 89 83 70 06 00 00 	mov    %rax,0x670(%rbx)
		proc_create("io_units", 0664, nvmev_vdev->proc_root, &proc_file_fops);
     721:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     728:	e8 00 00 00 00       	call   72d <NVMEV_STORAGE_INIT+0xed>
	nvmev_vdev->proc_stat = proc_create("stat", 0444, nvmev_vdev->proc_root, &proc_file_fops);
     72d:	48 8b 93 60 06 00 00 	mov    0x660(%rbx),%rdx
     734:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
     73b:	be 24 01 00 00       	mov    $0x124,%esi
	nvmev_vdev->proc_io_units =
     740:	48 89 83 78 06 00 00 	mov    %rax,0x678(%rbx)
	nvmev_vdev->proc_stat = proc_create("stat", 0444, nvmev_vdev->proc_root, &proc_file_fops);
     747:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     74e:	e8 00 00 00 00       	call   753 <NVMEV_STORAGE_INIT+0x113>
	nvmev_vdev->proc_stat = proc_create("debug", 0444, nvmev_vdev->proc_root, &proc_file_fops);
     753:	48 8b 93 60 06 00 00 	mov    0x660(%rbx),%rdx
     75a:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
     761:	be 24 01 00 00       	mov    $0x124,%esi
	nvmev_vdev->proc_stat = proc_create("stat", 0444, nvmev_vdev->proc_root, &proc_file_fops);
     766:	48 89 83 80 06 00 00 	mov    %rax,0x680(%rbx)
	nvmev_vdev->proc_stat = proc_create("debug", 0444, nvmev_vdev->proc_root, &proc_file_fops);
     76d:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     774:	e8 00 00 00 00       	call   779 <NVMEV_STORAGE_INIT+0x139>
     779:	48 89 83 80 06 00 00 	mov    %rax,0x680(%rbx)
}
     780:	5b                   	pop    %rbx
     781:	e9 00 00 00 00       	jmp    786 <NVMEV_STORAGE_INIT+0x146>
		NVMEV_ERROR("Failed to map storage memory.\n");
     786:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     78d:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     794:	e8 00 00 00 00       	call   799 <NVMEV_STORAGE_INIT+0x159>
     799:	e9 13 ff ff ff       	jmp    6b1 <NVMEV_STORAGE_INIT+0x71>
     79e:	66 90                	xchg   %ax,%ax

00000000000007a0 <__pfx_NVMEV_STORAGE_FINAL>:
     7a0:	90                   	nop
     7a1:	90                   	nop
     7a2:	90                   	nop
     7a3:	90                   	nop
     7a4:	90                   	nop
     7a5:	90                   	nop
     7a6:	90                   	nop
     7a7:	90                   	nop
     7a8:	90                   	nop
     7a9:	90                   	nop
     7aa:	90                   	nop
     7ab:	90                   	nop
     7ac:	90                   	nop
     7ad:	90                   	nop
     7ae:	90                   	nop
     7af:	90                   	nop

00000000000007b0 <NVMEV_STORAGE_FINAL>:

void NVMEV_STORAGE_FINAL(struct nvmev_dev *nvmev_vdev)
{
     7b0:	f3 0f 1e fa          	endbr64
     7b4:	e8 00 00 00 00       	call   7b9 <NVMEV_STORAGE_FINAL+0x9>
     7b9:	53                   	push   %rbx
	remove_proc_entry("read_times", nvmev_vdev->proc_root);
     7ba:	48 8b b7 60 06 00 00 	mov    0x660(%rdi),%rsi
{
     7c1:	48 89 fb             	mov    %rdi,%rbx
	remove_proc_entry("read_times", nvmev_vdev->proc_root);
     7c4:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     7cb:	e8 00 00 00 00       	call   7d0 <NVMEV_STORAGE_FINAL+0x20>
	remove_proc_entry("write_times", nvmev_vdev->proc_root);
     7d0:	48 8b b3 60 06 00 00 	mov    0x660(%rbx),%rsi
     7d7:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     7de:	e8 00 00 00 00       	call   7e3 <NVMEV_STORAGE_FINAL+0x33>
	remove_proc_entry("io_units", nvmev_vdev->proc_root);
     7e3:	48 8b b3 60 06 00 00 	mov    0x660(%rbx),%rsi
     7ea:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     7f1:	e8 00 00 00 00       	call   7f6 <NVMEV_STORAGE_FINAL+0x46>
	remove_proc_entry("stat", nvmev_vdev->proc_root);
     7f6:	48 8b b3 60 06 00 00 	mov    0x660(%rbx),%rsi
     7fd:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     804:	e8 00 00 00 00       	call   809 <NVMEV_STORAGE_FINAL+0x59>
	remove_proc_entry("debug", nvmev_vdev->proc_root);
     809:	48 8b b3 60 06 00 00 	mov    0x660(%rbx),%rsi
     810:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     817:	e8 00 00 00 00       	call   81c <NVMEV_STORAGE_FINAL+0x6c>

	remove_proc_entry("nvmev", NULL);
     81c:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     823:	31 f6                	xor    %esi,%esi
     825:	e8 00 00 00 00       	call   82a <NVMEV_STORAGE_FINAL+0x7a>

	if (nvmev_vdev->storage_mapped)
     82a:	48 8b bb 68 01 00 00 	mov    0x168(%rbx),%rdi
     831:	48 85 ff             	test   %rdi,%rdi
     834:	74 05                	je     83b <NVMEV_STORAGE_FINAL+0x8b>
		memunmap(nvmev_vdev->storage_mapped);
     836:	e8 00 00 00 00       	call   83b <NVMEV_STORAGE_FINAL+0x8b>

	if (nvmev_vdev->io_unit_stat)
     83b:	48 8b bb 88 06 00 00 	mov    0x688(%rbx),%rdi
     842:	48 85 ff             	test   %rdi,%rdi
     845:	74 06                	je     84d <NVMEV_STORAGE_FINAL+0x9d>
		kfree(nvmev_vdev->io_unit_stat);
}
     847:	5b                   	pop    %rbx
		kfree(nvmev_vdev->io_unit_stat);
     848:	e9 00 00 00 00       	jmp    84d <NVMEV_STORAGE_FINAL+0x9d>
}
     84d:	5b                   	pop    %rbx
     84e:	e9 00 00 00 00       	jmp    853 <NVMEV_STORAGE_FINAL+0xa3>
     853:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     85a:	00 00 00 00 
     85e:	66 90                	xchg   %ax,%ax

0000000000000860 <__pfx_cleanup_module>:
     860:	90                   	nop
     861:	90                   	nop
     862:	90                   	nop
     863:	90                   	nop
     864:	90                   	nop
     865:	90                   	nop
     866:	90                   	nop
     867:	90                   	nop
     868:	90                   	nop
     869:	90                   	nop
     86a:	90                   	nop
     86b:	90                   	nop
     86c:	90                   	nop
     86d:	90                   	nop
     86e:	90                   	nop
     86f:	90                   	nop

0000000000000870 <cleanup_module>:
	VDEV_FINALIZE(nvmev_vdev);
	return -EIO;
}

static void NVMeV_exit(void)
{
     870:	f3 0f 1e fa          	endbr64
     874:	e8 00 00 00 00       	call   879 <cleanup_module+0x9>
     879:	55                   	push   %rbp
     87a:	53                   	push   %rbx
	int i;

	if (!nvmev_vdev) {
     87b:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 882 <cleanup_module+0x12>
     882:	48 85 db             	test   %rbx,%rbx
     885:	0f 84 19 01 00 00    	je     9a4 <cleanup_module+0x134>
		NVMEV_ERROR("VDEV_FINALIZE(NULL)\n");
		return;
	}

	if (nvmev_vdev->virt_bus != NULL) {
     88b:	48 8b 3b             	mov    (%rbx),%rdi
     88e:	48 85 ff             	test   %rdi,%rdi
     891:	74 1b                	je     8ae <cleanup_module+0x3e>
		pci_stop_root_bus(nvmev_vdev->virt_bus);
     893:	e8 00 00 00 00       	call   898 <cleanup_module+0x28>
		pci_remove_root_bus(nvmev_vdev->virt_bus);
     898:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 89f <cleanup_module+0x2f>
     89f:	48 8b 38             	mov    (%rax),%rdi
     8a2:	e8 00 00 00 00       	call   8a7 <cleanup_module+0x37>
	}

	NVMEV_REG_PROC_FINAL(nvmev_vdev);
     8a7:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 8ae <cleanup_module+0x3e>
	if (!IS_ERR_OR_NULL(nvmev_vdev->nvmev_manager)) {
     8ae:	48 8b bb 60 01 00 00 	mov    0x160(%rbx),%rdi
	return IS_ERR_VALUE((unsigned long)ptr);
}

static inline bool __must_check IS_ERR_OR_NULL(__force const void *ptr)
{
	return unlikely(!ptr) || IS_ERR_VALUE((unsigned long)ptr);
     8b5:	48 85 ff             	test   %rdi,%rdi
     8b8:	74 20                	je     8da <cleanup_module+0x6a>
     8ba:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
     8c1:	77 17                	ja     8da <cleanup_module+0x6a>
		kthread_stop(nvmev_vdev->nvmev_manager);
     8c3:	e8 00 00 00 00       	call   8c8 <cleanup_module+0x58>
		nvmev_vdev->nvmev_manager = NULL;
     8c8:	48 c7 83 60 01 00 00 	movq   $0x0,0x160(%rbx)
     8cf:	00 00 00 00 
	NVMEV_IO_PROC_FINAL(nvmev_vdev);
     8d3:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 8da <cleanup_module+0x6a>
     8da:	48 89 df             	mov    %rbx,%rdi
     8dd:	e8 00 00 00 00       	call   8e2 <cleanup_module+0x72>

	NVMEV_NAMESPACE_FINAL(nvmev_vdev);
     8e2:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 8e9 <cleanup_module+0x79>
	struct nvmev_ns *ns = nvmev_vdev->ns;
     8e9:	48 8b ab a8 01 00 00 	mov    0x1a8(%rbx),%rbp
			zns_remove_namespace(&ns[i]);
     8f0:	48 89 ef             	mov    %rbp,%rdi
     8f3:	e8 00 00 00 00       	call   8f8 <cleanup_module+0x88>
	kfree(ns);
     8f8:	48 89 ef             	mov    %rbp,%rdi
     8fb:	e8 00 00 00 00       	call   900 <cleanup_module+0x90>
	NVMEV_STORAGE_FINAL(nvmev_vdev);
     900:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 907 <cleanup_module+0x97>
	nvmev_vdev->ns = NULL;
     907:	48 c7 83 a8 01 00 00 	movq   $0x0,0x1a8(%rbx)
     90e:	00 00 00 00 
	NVMEV_STORAGE_FINAL(nvmev_vdev);
     912:	e8 00 00 00 00       	call   917 <cleanup_module+0xa7>

	for (i = 0; i < nvmev_vdev->nr_sq; i++) {
     917:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 91e <cleanup_module+0xae>
     91e:	8b 97 b4 01 00 00    	mov    0x1b4(%rdi),%edx
     924:	85 d2                	test   %edx,%edx
     926:	74 2c                	je     954 <cleanup_module+0xe4>
     928:	31 db                	xor    %ebx,%ebx
		if (nvmev_vdev->sqes[i])
     92a:	48 63 c3             	movslq %ebx,%rax
     92d:	48 8b 84 c7 c8 01 00 	mov    0x1c8(%rdi,%rax,8),%rax
     934:	00 
     935:	48 85 c0             	test   %rax,%rax
     938:	74 0f                	je     949 <cleanup_module+0xd9>
			kfree(nvmev_vdev->sqes[i]);
     93a:	48 89 c7             	mov    %rax,%rdi
     93d:	e8 00 00 00 00       	call   942 <cleanup_module+0xd2>
     942:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 949 <cleanup_module+0xd9>
	for (i = 0; i < nvmev_vdev->nr_sq; i++) {
     949:	83 c3 01             	add    $0x1,%ebx
     94c:	3b 9f b4 01 00 00    	cmp    0x1b4(%rdi),%ebx
     952:	72 d6                	jb     92a <cleanup_module+0xba>
	}

	for (i = 0; i < nvmev_vdev->nr_cq; i++) {
     954:	8b 87 b8 01 00 00    	mov    0x1b8(%rdi),%eax
     95a:	85 c0                	test   %eax,%eax
     95c:	74 2c                	je     98a <cleanup_module+0x11a>
     95e:	31 db                	xor    %ebx,%ebx
		if (nvmev_vdev->cqes[i])
     960:	48 63 c3             	movslq %ebx,%rax
     963:	48 8b 84 c7 10 04 00 	mov    0x410(%rdi,%rax,8),%rax
     96a:	00 
     96b:	48 85 c0             	test   %rax,%rax
     96e:	74 0f                	je     97f <cleanup_module+0x10f>
			kfree(nvmev_vdev->cqes[i]);
     970:	48 89 c7             	mov    %rax,%rdi
     973:	e8 00 00 00 00       	call   978 <cleanup_module+0x108>
     978:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 97f <cleanup_module+0x10f>
	for (i = 0; i < nvmev_vdev->nr_cq; i++) {
     97f:	83 c3 01             	add    $0x1,%ebx
     982:	3b 9f b8 01 00 00    	cmp    0x1b8(%rdi),%ebx
     988:	72 d6                	jb     960 <cleanup_module+0xf0>
	}

	VDEV_FINALIZE(nvmev_vdev);
     98a:	e8 00 00 00 00       	call   98f <cleanup_module+0x11f>

	NVMEV_INFO("Virtual NVMe device closed\n");
     98f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
}
     996:	5b                   	pop    %rbx
	NVMEV_INFO("Virtual NVMe device closed\n");
     997:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
}
     99e:	5d                   	pop    %rbp
	NVMEV_INFO("Virtual NVMe device closed\n");
     99f:	e9 00 00 00 00       	jmp    9a4 <cleanup_module+0x134>
}
     9a4:	5b                   	pop    %rbx
		NVMEV_ERROR("VDEV_FINALIZE(NULL)\n");
     9a5:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     9ac:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
}
     9b3:	5d                   	pop    %rbp
		NVMEV_ERROR("VDEV_FINALIZE(NULL)\n");
     9b4:	e9 00 00 00 00       	jmp    9b9 <cleanup_module+0x149>
     9b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000009c0 <__pfx_NVMEV_NAMESPACE_INIT>:
     9c0:	90                   	nop
     9c1:	90                   	nop
     9c2:	90                   	nop
     9c3:	90                   	nop
     9c4:	90                   	nop
     9c5:	90                   	nop
     9c6:	90                   	nop
     9c7:	90                   	nop
     9c8:	90                   	nop
     9c9:	90                   	nop
     9ca:	90                   	nop
     9cb:	90                   	nop
     9cc:	90                   	nop
     9cd:	90                   	nop
     9ce:	90                   	nop
     9cf:	90                   	nop

00000000000009d0 <NVMEV_NAMESPACE_INIT>:
{
     9d0:	f3 0f 1e fa          	endbr64
     9d4:	e8 00 00 00 00       	call   9d9 <NVMEV_NAMESPACE_INIT+0x9>
     9d9:	41 56                	push   %r14
		return kmalloc_trace(
     9db:	ba 40 00 00 00       	mov    $0x40,%edx
     9e0:	be c0 0c 00 00       	mov    $0xcc0,%esi
     9e5:	41 55                	push   %r13
     9e7:	41 54                	push   %r12
     9e9:	55                   	push   %rbp
     9ea:	53                   	push   %rbx
     9eb:	48 89 fb             	mov    %rdi,%rbx
	unsigned long long remaining_capacity = nvmev_vdev->config.storage_size;
     9ee:	4c 8b a7 b0 00 00 00 	mov    0xb0(%rdi),%r12
	void *ns_addr = nvmev_vdev->storage_mapped;
     9f5:	4c 8b af 68 01 00 00 	mov    0x168(%rdi),%r13
	const unsigned int disp_no = nvmev_vdev->config.cpu_nr_dispatcher;
     9fc:	44 8b b7 c0 00 00 00 	mov    0xc0(%rdi),%r14d
     a03:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # a0a <NVMEV_NAMESPACE_INIT+0x3a>
     a0a:	e8 00 00 00 00       	call   a0f <NVMEV_NAMESPACE_INIT+0x3f>
			zns_init_namespace(&ns[i], i, size, ns_addr, disp_no);
     a0f:	45 89 f0             	mov    %r14d,%r8d
     a12:	4c 89 e9             	mov    %r13,%rcx
     a15:	4c 89 e2             	mov    %r12,%rdx
     a18:	48 89 c5             	mov    %rax,%rbp
     a1b:	48 89 c7             	mov    %rax,%rdi
     a1e:	31 f6                	xor    %esi,%esi
     a20:	e8 00 00 00 00       	call   a25 <NVMEV_NAMESPACE_INIT+0x55>
		NVMEV_INFO("[%s] ns=%d ns_addr=%p ns_size=%lld(MiB) \n", __FUNCTION__, i,
     a25:	4c 8b 4d 08          	mov    0x8(%rbp),%r9
     a29:	4c 8b 45 10          	mov    0x10(%rbp),%r8
     a2d:	31 c9                	xor    %ecx,%ecx
     a2f:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
     a36:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     a3d:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     a44:	49 c1 e9 14          	shr    $0x14,%r9
     a48:	e8 00 00 00 00       	call   a4d <NVMEV_NAMESPACE_INIT+0x7d>
	nvmev_vdev->ns = ns;
     a4d:	48 89 ab a8 01 00 00 	mov    %rbp,0x1a8(%rbx)
	nvmev_vdev->nr_ns = nr_ns;
     a54:	c7 83 b0 01 00 00 01 	movl   $0x1,0x1b0(%rbx)
     a5b:	00 00 00 
	nvmev_vdev->mdts = MDTS;
     a5e:	c7 83 58 06 00 00 06 	movl   $0x6,0x658(%rbx)
     a65:	00 00 00 
}
     a68:	5b                   	pop    %rbx
     a69:	5d                   	pop    %rbp
     a6a:	41 5c                	pop    %r12
     a6c:	41 5d                	pop    %r13
     a6e:	41 5e                	pop    %r14
     a70:	e9 00 00 00 00       	jmp    a75 <NVMEV_NAMESPACE_INIT+0xa5>
     a75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     a7c:	00 00 00 00 

0000000000000a80 <__pfx_init_module>:
     a80:	90                   	nop
     a81:	90                   	nop
     a82:	90                   	nop
     a83:	90                   	nop
     a84:	90                   	nop
     a85:	90                   	nop
     a86:	90                   	nop
     a87:	90                   	nop
     a88:	90                   	nop
     a89:	90                   	nop
     a8a:	90                   	nop
     a8b:	90                   	nop
     a8c:	90                   	nop
     a8d:	90                   	nop
     a8e:	90                   	nop
     a8f:	90                   	nop

0000000000000a90 <init_module>:
{
     a90:	f3 0f 1e fa          	endbr64
     a94:	e8 00 00 00 00       	call   a99 <init_module+0x9>
     a99:	41 55                	push   %r13
     a9b:	41 54                	push   %r12
     a9d:	55                   	push   %rbp
     a9e:	53                   	push   %rbx
	nvmev_vdev = VDEV_INIT();
     a9f:	e8 00 00 00 00       	call   aa4 <init_module+0x14>
     aa4:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # aab <init_module+0x1b>
	if (!nvmev_vdev) {
     aab:	48 85 c0             	test   %rax,%rax
     aae:	0f 84 38 03 00 00    	je     dec <init_module+0x35c>
	if (!memmap_start) {
     ab4:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # abb <init_module+0x2b>
     abb:	4d 85 e4             	test   %r12,%r12
     abe:	0f 84 cb 02 00 00    	je     d8f <init_module+0x2ff>
     ac4:	48 89 c3             	mov    %rax,%rbx
	if (!memmap_size) {
     ac7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # ace <init_module+0x3e>
     ace:	48 85 c0             	test   %rax,%rax
     ad1:	0f 84 cd 02 00 00    	je     da4 <init_module+0x314>
	} else if (memmap_size <= MB(1)) {
     ad7:	48 3d 00 00 10 00    	cmp    $0x100000,%rax
     add:	0f 86 97 02 00 00    	jbe    d7a <init_module+0x2ea>
	resv_end_bytes = resv_start_bytes + memmap_size - 1;
     ae3:	4d 8d 6c 04 ff       	lea    -0x1(%r12,%rax,1),%r13
	if (e820__mapped_any(resv_start_bytes, resv_end_bytes, E820_TYPE_RAM) ||
     ae8:	ba 01 00 00 00       	mov    $0x1,%edx
     aed:	4c 89 e7             	mov    %r12,%rdi
     af0:	4c 89 ee             	mov    %r13,%rsi
     af3:	e8 00 00 00 00       	call   af8 <init_module+0x68>
     af8:	84 c0                	test   %al,%al
     afa:	0f 85 39 02 00 00    	jne    d39 <init_module+0x2a9>
	    e820__mapped_any(resv_start_bytes, resv_end_bytes, E820_TYPE_RESERVED_KERN)) {
     b00:	ba 80 00 00 00       	mov    $0x80,%edx
     b05:	4c 89 ee             	mov    %r13,%rsi
     b08:	4c 89 e7             	mov    %r12,%rdi
     b0b:	e8 00 00 00 00       	call   b10 <init_module+0x80>
	if (e820__mapped_any(resv_start_bytes, resv_end_bytes, E820_TYPE_RAM) ||
     b10:	84 c0                	test   %al,%al
     b12:	0f 85 21 02 00 00    	jne    d39 <init_module+0x2a9>
	if (!e820__mapped_any(resv_start_bytes, resv_end_bytes, E820_TYPE_RESERVED)) {
     b18:	ba 02 00 00 00       	mov    $0x2,%edx
     b1d:	4c 89 ee             	mov    %r13,%rsi
     b20:	4c 89 e7             	mov    %r12,%rdi
     b23:	e8 00 00 00 00       	call   b28 <init_module+0x98>
     b28:	89 c5                	mov    %eax,%ebp
     b2a:	84 c0                	test   %al,%al
     b2c:	0f 84 9c 02 00 00    	je     dce <init_module+0x33e>
	if (nr_io_units == 0 || io_unit_shift == 0) {
     b32:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # b38 <init_module+0xa8>
     b38:	85 c0                	test   %eax,%eax
     b3a:	0f 84 25 02 00 00    	je     d65 <init_module+0x2d5>
     b40:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # b46 <init_module+0xb6>
     b46:	48 89 ca             	mov    %rcx,%rdx
     b49:	48 c1 e2 20          	shl    $0x20,%rdx
     b4d:	48 09 c2             	or     %rax,%rdx
     b50:	85 c9                	test   %ecx,%ecx
     b52:	0f 84 0d 02 00 00    	je     d65 <init_module+0x2d5>
	if (read_time == 0) {
     b58:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # b5e <init_module+0xce>
     b5e:	85 c9                	test   %ecx,%ecx
     b60:	0f 84 53 02 00 00    	je     db9 <init_module+0x329>
	if (write_time == 0) {
     b66:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # b6c <init_module+0xdc>
     b6c:	85 c0                	test   %eax,%eax
     b6e:	0f 84 95 02 00 00    	je     e09 <init_module+0x379>
	config->memmap_start = memmap_start;
     b74:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # b7b <init_module+0xeb>
	config->memmap_size = memmap_size;
     b7b:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # b82 <init_module+0xf2>
	config->read_delay = read_delay;
     b82:	48 c1 e1 20          	shl    $0x20,%rcx
	config->nr_io_units = nr_io_units;
     b86:	48 89 93 b8 00 00 00 	mov    %rdx,0xb8(%rbx)
	config->memmap_start = memmap_start;
     b8d:	48 89 bb 98 00 00 00 	mov    %rdi,0x98(%rbx)
	config->storage_start = memmap_start + MB(1);
     b94:	48 81 c7 00 00 10 00 	add    $0x100000,%rdi
	config->memmap_size = memmap_size;
     b9b:	48 89 b3 a0 00 00 00 	mov    %rsi,0xa0(%rbx)
	config->storage_size = memmap_size - MB(1);
     ba2:	48 81 ee 00 00 10 00 	sub    $0x100000,%rsi
	config->storage_start = memmap_start + MB(1);
     ba9:	48 89 bb a8 00 00 00 	mov    %rdi,0xa8(%rbx)
	config->storage_size = memmap_size - MB(1);
     bb0:	8b 3d 00 00 00 00    	mov    0x0(%rip),%edi        # bb6 <init_module+0x126>
     bb6:	48 89 b3 b0 00 00 00 	mov    %rsi,0xb0(%rbx)
	config->write_delay = write_delay;
     bbd:	8b 35 00 00 00 00    	mov    0x0(%rip),%esi        # bc3 <init_module+0x133>
     bc3:	48 c1 e7 20          	shl    $0x20,%rdi
     bc7:	48 09 fe             	or     %rdi,%rsi
	config->write_trailing = write_trailing;
     bca:	8b 3d 00 00 00 00    	mov    0x0(%rip),%edi        # bd0 <init_module+0x140>
	config->read_delay = read_delay;
     bd0:	48 89 b3 50 01 00 00 	mov    %rsi,0x150(%rbx)
     bd7:	48 c1 e7 20          	shl    $0x20,%rdi
     bdb:	48 09 f8             	or     %rdi,%rax
     bde:	8b 3d 00 00 00 00    	mov    0x0(%rip),%edi        # be4 <init_module+0x154>
     be4:	48 89 83 58 01 00 00 	mov    %rax,0x158(%rbx)
	config->cpu_nr_dispatcher = -1;
     beb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
	config->read_delay = read_delay;
     bf0:	48 09 f9             	or     %rdi,%rcx
	config->cpu_nr_dispatcher = -1;
     bf3:	48 89 83 c0 00 00 00 	mov    %rax,0xc0(%rbx)
	config->read_delay = read_delay;
     bfa:	48 89 8b 48 01 00 00 	mov    %rcx,0x148(%rbx)
	while ((cpu = strsep(&cpus, ",")) != NULL) {
     c01:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     c08:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     c0f:	e8 00 00 00 00       	call   c14 <init_module+0x184>
     c14:	48 89 c7             	mov    %rax,%rdi
     c17:	48 85 c0             	test   %rax,%rax
     c1a:	74 38                	je     c54 <init_module+0x1c4>
		cpu_nr = (unsigned int)simple_strtol(cpu, NULL, 10);
     c1c:	31 f6                	xor    %esi,%esi
     c1e:	ba 0a 00 00 00       	mov    $0xa,%edx
     c23:	e8 00 00 00 00       	call   c28 <init_module+0x198>
		if (first) {
     c28:	40 84 ed             	test   %bpl,%bpl
     c2b:	74 0a                	je     c37 <init_module+0x1a7>
			config->cpu_nr_dispatcher = cpu_nr;
     c2d:	89 83 c0 00 00 00    	mov    %eax,0xc0(%rbx)
{
     c33:	31 ed                	xor    %ebp,%ebp
     c35:	eb ca                	jmp    c01 <init_module+0x171>
			config->cpu_nr_io_workers[config->nr_io_cpu] = cpu_nr;
     c37:	8b 8b c4 00 00 00    	mov    0xc4(%rbx),%ecx
{
     c3d:	31 ed                	xor    %ebp,%ebp
			config->cpu_nr_io_workers[config->nr_io_cpu] = cpu_nr;
     c3f:	48 89 ca             	mov    %rcx,%rdx
     c42:	89 84 8b c8 00 00 00 	mov    %eax,0xc8(%rbx,%rcx,4)
			config->nr_io_cpu++;
     c49:	83 c2 01             	add    $0x1,%edx
     c4c:	89 93 c4 00 00 00    	mov    %edx,0xc4(%rbx)
     c52:	eb ad                	jmp    c01 <init_module+0x171>
	NVMEV_STORAGE_INIT(nvmev_vdev);
     c54:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # c5b <init_module+0x1cb>
     c5b:	e8 00 00 00 00       	call   c60 <init_module+0x1d0>
	NVMEV_NAMESPACE_INIT(nvmev_vdev);
     c60:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # c67 <init_module+0x1d7>
     c67:	e8 00 00 00 00       	call   c6c <init_module+0x1dc>
	if (io_using_dma) {
     c6c:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # c72 <init_module+0x1e2>
     c72:	85 c0                	test   %eax,%eax
     c74:	0f 85 89 00 00 00    	jne    d03 <init_module+0x273>
	if (!NVMEV_PCI_INIT(nvmev_vdev)) {
     c7a:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # c81 <init_module+0x1f1>
     c81:	e8 00 00 00 00       	call   c86 <init_module+0x1f6>
     c86:	84 c0                	test   %al,%al
     c88:	0f 84 c4 00 00 00    	je     d52 <init_module+0x2c2>
	NVMEV_IO_PROC_INIT(nvmev_vdev);
     c8e:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # c95 <init_module+0x205>
     c95:	e8 00 00 00 00       	call   c9a <init_module+0x20a>
	NVMEV_DISPATCHER_INIT(nvmev_vdev);
     c9a:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # ca1 <init_module+0x211>
	nvmev_vdev->nvmev_manager = kthread_create(nvmev_dispatcher, NULL, "nvmev_dispatcher");
     ca1:	31 f6                	xor    %esi,%esi
     ca3:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     caa:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
     cb1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
     cb6:	e8 00 00 00 00       	call   cbb <init_module+0x22b>
	if (nvmev_vdev->config.cpu_nr_dispatcher != -1)
     cbb:	8b b3 c0 00 00 00    	mov    0xc0(%rbx),%esi
	nvmev_vdev->nvmev_manager = kthread_create(nvmev_dispatcher, NULL, "nvmev_dispatcher");
     cc1:	48 89 83 60 01 00 00 	mov    %rax,0x160(%rbx)
     cc8:	48 89 c7             	mov    %rax,%rdi
	if (nvmev_vdev->config.cpu_nr_dispatcher != -1)
     ccb:	83 fe ff             	cmp    $0xffffffff,%esi
     cce:	75 25                	jne    cf5 <init_module+0x265>
	wake_up_process(nvmev_vdev->nvmev_manager);
     cd0:	e8 00 00 00 00       	call   cd5 <init_module+0x245>
	NVMEV_INFO("Successfully created Virtual NVMe deivce\n");
     cd5:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     cdc:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     ce3:	e8 00 00 00 00       	call   ce8 <init_module+0x258>
	return 0;
     ce8:	31 c0                	xor    %eax,%eax
}
     cea:	5b                   	pop    %rbx
     ceb:	5d                   	pop    %rbp
     cec:	41 5c                	pop    %r12
     cee:	41 5d                	pop    %r13
     cf0:	e9 00 00 00 00       	jmp    cf5 <init_module+0x265>
		kthread_bind(nvmev_vdev->nvmev_manager, nvmev_vdev->config.cpu_nr_dispatcher);
     cf5:	e8 00 00 00 00       	call   cfa <init_module+0x26a>
	wake_up_process(nvmev_vdev->nvmev_manager);
     cfa:	48 8b bb 60 01 00 00 	mov    0x160(%rbx),%rdi
     d01:	eb cd                	jmp    cd0 <init_module+0x240>
		if (!ioat_dma_chan_set("dma7chan0")) {
     d03:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     d0a:	e8 00 00 00 00       	call   d0f <init_module+0x27f>
     d0f:	85 c0                	test   %eax,%eax
     d11:	0f 85 63 ff ff ff    	jne    c7a <init_module+0x1ea>
			NVMEV_ERROR("Cannot use DMA engine, Fall back to memcpy\n");
     d17:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     d1e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
			io_using_dma = false;
     d25:	c7 05 00 00 00 00 00 	movl   $0x0,0x0(%rip)        # d2f <init_module+0x29f>
     d2c:	00 00 00 
			NVMEV_ERROR("Cannot use DMA engine, Fall back to memcpy\n");
     d2f:	e8 00 00 00 00       	call   d34 <init_module+0x2a4>
     d34:	e9 41 ff ff ff       	jmp    c7a <init_module+0x1ea>
		NVMEV_ERROR("[mem %#010lx-%#010lx] is usable, not reseved region\n",
     d39:	4c 89 e9             	mov    %r13,%rcx
     d3c:	4c 89 e2             	mov    %r12,%rdx
     d3f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     d46:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     d4d:	e8 00 00 00 00       	call   d52 <init_module+0x2c2>
	VDEV_FINALIZE(nvmev_vdev);
     d52:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # d59 <init_module+0x2c9>
     d59:	e8 00 00 00 00       	call   d5e <init_module+0x2ce>
	return -EIO;
     d5e:	b8 fb ff ff ff       	mov    $0xfffffffb,%eax
     d63:	eb 85                	jmp    cea <init_module+0x25a>
		NVMEV_ERROR("Need non-zero IO unit size and at least one IO unit\n");
     d65:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     d6c:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     d73:	e8 00 00 00 00       	call   d78 <init_module+0x2e8>
		return -EINVAL;
     d78:	eb d8                	jmp    d52 <init_module+0x2c2>
		NVMEV_ERROR("[memmap_size] should be bigger than 1 MiB\n");
     d7a:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     d81:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     d88:	e8 00 00 00 00       	call   d8d <init_module+0x2fd>
		return -EINVAL;
     d8d:	eb c3                	jmp    d52 <init_module+0x2c2>
		NVMEV_ERROR("[memmap_start] should be specified\n");
     d8f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     d96:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     d9d:	e8 00 00 00 00       	call   da2 <init_module+0x312>
		return -EINVAL;
     da2:	eb ae                	jmp    d52 <init_module+0x2c2>
		NVMEV_ERROR("[memmap_size] should be specified\n");
     da4:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     dab:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     db2:	e8 00 00 00 00       	call   db7 <init_module+0x327>
		return -EINVAL;
     db7:	eb 99                	jmp    d52 <init_module+0x2c2>
		NVMEV_ERROR("Need non-zero read time\n");
     db9:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     dc0:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     dc7:	e8 00 00 00 00       	call   dcc <init_module+0x33c>
		return -EINVAL;
     dcc:	eb 84                	jmp    d52 <init_module+0x2c2>
		NVMEV_ERROR("[mem %#010lx-%#010lx] is not reseved region\n",
     dce:	4c 89 e9             	mov    %r13,%rcx
     dd1:	4c 89 e2             	mov    %r12,%rdx
     dd4:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     ddb:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     de2:	e8 00 00 00 00       	call   de7 <init_module+0x357>
		return -EPERM;
     de7:	e9 66 ff ff ff       	jmp    d52 <init_module+0x2c2>
		NVMEV_ERROR("Failed to allocate memory for nvmev_vdev (VDEV_INIT)\n");
     dec:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     df3:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     dfa:	e8 00 00 00 00       	call   dff <init_module+0x36f>
		return -EINVAL;
     dff:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     e04:	e9 e1 fe ff ff       	jmp    cea <init_module+0x25a>
		NVMEV_ERROR("Need non-zero write time\n");
     e09:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     e10:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     e17:	e8 00 00 00 00       	call   e1c <init_module+0x38c>
		return -EINVAL;
     e1c:	e9 31 ff ff ff       	jmp    d52 <init_module+0x2c2>
     e21:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     e28:	00 00 00 00 
     e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000e30 <__pfx_NVMEV_NAMESPACE_FINAL>:
     e30:	90                   	nop
     e31:	90                   	nop
     e32:	90                   	nop
     e33:	90                   	nop
     e34:	90                   	nop
     e35:	90                   	nop
     e36:	90                   	nop
     e37:	90                   	nop
     e38:	90                   	nop
     e39:	90                   	nop
     e3a:	90                   	nop
     e3b:	90                   	nop
     e3c:	90                   	nop
     e3d:	90                   	nop
     e3e:	90                   	nop
     e3f:	90                   	nop

0000000000000e40 <NVMEV_NAMESPACE_FINAL>:
{
     e40:	f3 0f 1e fa          	endbr64
     e44:	e8 00 00 00 00       	call   e49 <NVMEV_NAMESPACE_FINAL+0x9>
     e49:	55                   	push   %rbp
     e4a:	53                   	push   %rbx
	struct nvmev_ns *ns = nvmev_vdev->ns;
     e4b:	48 8b af a8 01 00 00 	mov    0x1a8(%rdi),%rbp
{
     e52:	48 89 fb             	mov    %rdi,%rbx
			zns_remove_namespace(&ns[i]);
     e55:	48 89 ef             	mov    %rbp,%rdi
     e58:	e8 00 00 00 00       	call   e5d <NVMEV_NAMESPACE_FINAL+0x1d>
	kfree(ns);
     e5d:	48 89 ef             	mov    %rbp,%rdi
     e60:	e8 00 00 00 00       	call   e65 <NVMEV_NAMESPACE_FINAL+0x25>
	nvmev_vdev->ns = NULL;
     e65:	48 c7 83 a8 01 00 00 	movq   $0x0,0x1a8(%rbx)
     e6c:	00 00 00 00 
}
     e70:	5b                   	pop    %rbx
     e71:	5d                   	pop    %rbp
     e72:	e9 00 00 00 00       	jmp    e77 <NVMEV_NAMESPACE_FINAL+0x37>
     e77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     e7e:	00 00 

0000000000000e80 <__pfx_nvmev_pci_read>:
     e80:	90                   	nop
     e81:	90                   	nop
     e82:	90                   	nop
     e83:	90                   	nop
     e84:	90                   	nop
     e85:	90                   	nop
     e86:	90                   	nop
     e87:	90                   	nop
     e88:	90                   	nop
     e89:	90                   	nop
     e8a:	90                   	nop
     e8b:	90                   	nop
     e8c:	90                   	nop
     e8d:	90                   	nop
     e8e:	90                   	nop
     e8f:	90                   	nop

0000000000000e90 <nvmev_pci_read>:
	if (modified)
		smp_mb();
}

int nvmev_pci_read(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val)
{
     e90:	f3 0f 1e fa          	endbr64
     e94:	e8 00 00 00 00       	call   e99 <nvmev_pci_read+0x9>
	if (devfn != 0)
		return 1;
     e99:	b8 01 00 00 00       	mov    $0x1,%eax
	if (devfn != 0)
     e9e:	85 f6                	test   %esi,%esi
     ea0:	75 1e                	jne    ec0 <nvmev_pci_read+0x30>

	memcpy(val, nvmev_vdev->virtDev + where, size);
     ea2:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # ea9 <nvmev_pci_read+0x19>
     ea9:	48 63 c9             	movslq %ecx,%rcx
     eac:	48 63 f2             	movslq %edx,%rsi
     eaf:	4c 89 c7             	mov    %r8,%rdi
     eb2:	48 89 ca             	mov    %rcx,%rdx
     eb5:	48 03 70 08          	add    0x8(%rax),%rsi
     eb9:	e8 00 00 00 00       	call   ebe <nvmev_pci_read+0x2e>

	return 0;
     ebe:	31 c0                	xor    %eax,%eax
};
     ec0:	e9 00 00 00 00       	jmp    ec5 <nvmev_pci_read+0x35>
     ec5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     ecc:	00 00 00 00 

0000000000000ed0 <__pfx_nvmev_pci_write>:
     ed0:	90                   	nop
     ed1:	90                   	nop
     ed2:	90                   	nop
     ed3:	90                   	nop
     ed4:	90                   	nop
     ed5:	90                   	nop
     ed6:	90                   	nop
     ed7:	90                   	nop
     ed8:	90                   	nop
     ed9:	90                   	nop
     eda:	90                   	nop
     edb:	90                   	nop
     edc:	90                   	nop
     edd:	90                   	nop
     ede:	90                   	nop
     edf:	90                   	nop

0000000000000ee0 <nvmev_pci_write>:

int nvmev_pci_write(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 _val)
{
     ee0:	f3 0f 1e fa          	endbr64
     ee4:	e8 00 00 00 00       	call   ee9 <nvmev_pci_write+0x9>
     ee9:	41 56                	push   %r14
     eeb:	41 55                	push   %r13
     eed:	41 54                	push   %r12
	u32 mask = 0xFFFFFFFF;
	u32 val;
	int target = where;

	memcpy(&val, nvmev_vdev->virtDev + where, size);
     eef:	4c 63 e1             	movslq %ecx,%r12
{
     ef2:	55                   	push   %rbp
     ef3:	53                   	push   %rbx
     ef4:	48 83 ec 10          	sub    $0x10,%rsp
     ef8:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
     eff:	00 00 
     f01:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
     f06:	31 c0                	xor    %eax,%eax
	u32 val;
     f08:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
     f0f:	00 
	 * Always stop accesses beyond the struct that contains the
	 * field, when the buffer's remaining size is known.
	 * (The SIZE_MAX test is to optimize away checks where the buffer
	 * lengths are unknown.)
	 */
	if ((p_size != SIZE_MAX && p_size < size) ||
     f10:	49 83 fc 04          	cmp    $0x4,%r12
     f14:	0f 87 59 01 00 00    	ja     1073 <nvmev_pci_write+0x193>
	memcpy(&val, nvmev_vdev->virtDev + where, size);
     f1a:	4c 8b 35 00 00 00 00 	mov    0x0(%rip),%r14        # f21 <nvmev_pci_write+0x41>
     f21:	4c 63 ea             	movslq %edx,%r13
     f24:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
     f29:	4c 89 e2             	mov    %r12,%rdx
     f2c:	4c 89 eb             	mov    %r13,%rbx
     f2f:	44 89 c5             	mov    %r8d,%ebp
     f32:	4d 03 6e 08          	add    0x8(%r14),%r13
     f36:	4c 89 ee             	mov    %r13,%rsi
     f39:	e8 00 00 00 00       	call   f3e <nvmev_pci_write+0x5e>

	if (where < OFFS_PCI_PM_CAP) {
     f3e:	83 fb 3f             	cmp    $0x3f,%ebx
     f41:	7f 3d                	jg     f80 <nvmev_pci_write+0xa0>
		// PCI_HDR
		if (target == 0x0)
     f43:	83 fb 0f             	cmp    $0xf,%ebx
     f46:	0f 84 cd 00 00 00    	je     1019 <nvmev_pci_write+0x139>
     f4c:	7e 75                	jle    fc3 <nvmev_pci_write+0xe3>
     f4e:	48 b8 00 00 00 11 11 	movabs $0xc010111111000000,%rax
     f55:	11 10 c0 
     f58:	48 0f a3 d8          	bt     %rbx,%rax
     f5c:	72 2e                	jb     f8c <nvmev_pci_write+0xac>
     f5e:	83 fb 3c             	cmp    $0x3c,%ebx
     f61:	0f 84 9e 00 00 00    	je     1005 <nvmev_pci_write+0x125>
     f67:	83 fb 10             	cmp    $0x10,%ebx
     f6a:	75 1c                	jne    f88 <nvmev_pci_write+0xa8>
			mask = 0x0;
	} else {
		// PCIE_CAP
	}

	val = (val & (~mask)) | (_val & mask);
     f6c:	8b 44 24 04          	mov    0x4(%rsp),%eax
     f70:	31 c5                	xor    %eax,%ebp
     f72:	81 e5 00 c0 ff ff    	and    $0xffffc000,%ebp
     f78:	31 c5                	xor    %eax,%ebp
     f7a:	89 6c 24 04          	mov    %ebp,0x4(%rsp)
	memcpy(nvmev_vdev->virtDev + where, &val, size);
     f7e:	eb 0c                	jmp    f8c <nvmev_pci_write+0xac>
	} else if (where < OFFS_PCIE_CAP) {
     f80:	8d 43 b0             	lea    -0x50(%rbx),%eax
     f83:	83 f8 0f             	cmp    $0xf,%eax
     f86:	76 6a                	jbe    ff2 <nvmev_pci_write+0x112>
	val = (val & (~mask)) | (_val & mask);
     f88:	89 6c 24 04          	mov    %ebp,0x4(%rsp)
	memcpy(nvmev_vdev->virtDev + where, &val, size);
     f8c:	4c 89 e2             	mov    %r12,%rdx
     f8f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
     f94:	4c 89 ef             	mov    %r13,%rdi
     f97:	e8 00 00 00 00       	call   f9c <nvmev_pci_write+0xbc>

	return 0;
};
     f9c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     fa1:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
     fa8:	00 00 
     faa:	0f 85 cf 00 00 00    	jne    107f <nvmev_pci_write+0x19f>
     fb0:	48 83 c4 10          	add    $0x10,%rsp
     fb4:	31 c0                	xor    %eax,%eax
     fb6:	5b                   	pop    %rbx
     fb7:	5d                   	pop    %rbp
     fb8:	41 5c                	pop    %r12
     fba:	41 5d                	pop    %r13
     fbc:	41 5e                	pop    %r14
     fbe:	e9 00 00 00 00       	jmp    fc3 <nvmev_pci_write+0xe3>
     fc3:	83 fb 06             	cmp    $0x6,%ebx
     fc6:	74 65                	je     102d <nvmev_pci_write+0x14d>
     fc8:	7e 0f                	jle    fd9 <nvmev_pci_write+0xf9>
     fca:	83 fb 09             	cmp    $0x9,%ebx
     fcd:	74 bd                	je     f8c <nvmev_pci_write+0xac>
     fcf:	83 eb 0d             	sub    $0xd,%ebx
     fd2:	83 fb 01             	cmp    $0x1,%ebx
     fd5:	77 b1                	ja     f88 <nvmev_pci_write+0xa8>
     fd7:	eb b3                	jmp    f8c <nvmev_pci_write+0xac>
     fd9:	85 db                	test   %ebx,%ebx
     fdb:	74 af                	je     f8c <nvmev_pci_write+0xac>
     fdd:	83 fb 04             	cmp    $0x4,%ebx
     fe0:	75 a6                	jne    f88 <nvmev_pci_write+0xa8>
	val = (val & (~mask)) | (_val & mask);
     fe2:	8b 44 24 04          	mov    0x4(%rsp),%eax
     fe6:	31 c5                	xor    %eax,%ebp
     fe8:	81 e5 47 05 00 00    	and    $0x547,%ebp
     fee:	31 c5                	xor    %eax,%ebp
     ff0:	eb 96                	jmp    f88 <nvmev_pci_write+0xa8>
		if (target == 0)
     ff2:	85 c0                	test   %eax,%eax
     ff4:	74 96                	je     f8c <nvmev_pci_write+0xac>
		else if (target == 2) {
     ff6:	83 f8 02             	cmp    $0x2,%eax
     ff9:	74 49                	je     1044 <nvmev_pci_write+0x164>
		} else if (target == 4)
     ffb:	83 eb 54             	sub    $0x54,%ebx
     ffe:	83 e3 fb             	and    $0xfffffffb,%ebx
    1001:	75 85                	jne    f88 <nvmev_pci_write+0xa8>
    1003:	eb 87                	jmp    f8c <nvmev_pci_write+0xac>
	val = (val & (~mask)) | (_val & mask);
    1005:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1009:	31 c5                	xor    %eax,%ebp
    100b:	83 e5 0f             	and    $0xf,%ebp
    100e:	31 c5                	xor    %eax,%ebp
    1010:	89 6c 24 04          	mov    %ebp,0x4(%rsp)
	memcpy(nvmev_vdev->virtDev + where, &val, size);
    1014:	e9 73 ff ff ff       	jmp    f8c <nvmev_pci_write+0xac>
	val = (val & (~mask)) | (_val & mask);
    1019:	8b 44 24 04          	mov    0x4(%rsp),%eax
    101d:	31 c5                	xor    %eax,%ebp
    101f:	83 e5 40             	and    $0x40,%ebp
    1022:	31 c5                	xor    %eax,%ebp
    1024:	89 6c 24 04          	mov    %ebp,0x4(%rsp)
	memcpy(nvmev_vdev->virtDev + where, &val, size);
    1028:	e9 5f ff ff ff       	jmp    f8c <nvmev_pci_write+0xac>
	val = (val & (~mask)) | (_val & mask);
    102d:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1031:	31 c5                	xor    %eax,%ebp
    1033:	81 e5 00 f2 00 00    	and    $0xf200,%ebp
    1039:	31 c5                	xor    %eax,%ebp
    103b:	89 6c 24 04          	mov    %ebp,0x4(%rsp)
	memcpy(nvmev_vdev->virtDev + where, &val, size);
    103f:	e9 48 ff ff ff       	jmp    f8c <nvmev_pci_write+0xac>
			if ((val & mask) == mask) {
    1044:	8b 44 24 04          	mov    0x4(%rsp),%eax
	val = (val & (~mask)) | (_val & mask);
    1048:	31 c5                	xor    %eax,%ebp
    104a:	81 e5 00 c0 00 00    	and    $0xc000,%ebp
    1050:	31 c5                	xor    %eax,%ebp
			if ((val & mask) == mask) {
    1052:	25 00 c0 00 00       	and    $0xc000,%eax
    1057:	3d 00 c0 00 00       	cmp    $0xc000,%eax
    105c:	0f 85 26 ff ff ff    	jne    f88 <nvmev_pci_write+0xa8>
				nvmev_vdev->msix_enabled = true;
    1062:	41 c6 86 7c 01 00 00 	movb   $0x1,0x17c(%r14)
    1069:	01 
	val = (val & (~mask)) | (_val & mask);
    106a:	89 6c 24 04          	mov    %ebp,0x4(%rsp)
	memcpy(nvmev_vdev->virtDev + where, &val, size);
    106e:	e9 19 ff ff ff       	jmp    f8c <nvmev_pci_write+0xac>
	    (q_size != SIZE_MAX && q_size < size))
		fortify_panic(func);
    1073:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    107a:	e8 00 00 00 00       	call   107f <nvmev_pci_write+0x19f>
};
    107f:	e8 00 00 00 00       	call   1084 <nvmev_pci_write+0x1a4>
    1084:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    108b:	00 00 00 00 
    108f:	90                   	nop

0000000000001090 <__pfx_nvmev_signal_irq>:
    1090:	90                   	nop
    1091:	90                   	nop
    1092:	90                   	nop
    1093:	90                   	nop
    1094:	90                   	nop
    1095:	90                   	nop
    1096:	90                   	nop
    1097:	90                   	nop
    1098:	90                   	nop
    1099:	90                   	nop
    109a:	90                   	nop
    109b:	90                   	nop
    109c:	90                   	nop
    109d:	90                   	nop
    109e:	90                   	nop
    109f:	90                   	nop

00000000000010a0 <nvmev_signal_irq>:
{
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	e8 00 00 00 00       	call   10a9 <nvmev_signal_irq+0x9>
    10a9:	55                   	push   %rbp
		xa_for_each_range(xa, idx, msi_desc, 0, NR_MAX_IO_QUEUE * PCI_MSIX_ENTRY_SIZE) {
    10aa:	b9 08 00 00 00       	mov    $0x8,%ecx
{
    10af:	89 fd                	mov    %edi,%ebp
		xa_for_each_range(xa, idx, msi_desc, 0, NR_MAX_IO_QUEUE * PCI_MSIX_ENTRY_SIZE) {
    10b1:	ba 80 04 00 00       	mov    $0x480,%edx
{
    10b6:	53                   	push   %rbx
    10b7:	48 83 ec 10          	sub    $0x10,%rsp
		xa = &(&nvmev_vdev->pdev->dev)->msi.data->__domains[i].store;
    10bb:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    10c2:	00 00 
    10c4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    10c9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 10d0 <nvmev_signal_irq+0x30>
		xa_for_each_range(xa, idx, msi_desc, 0, NR_MAX_IO_QUEUE * PCI_MSIX_ENTRY_SIZE) {
    10d0:	48 89 e6             	mov    %rsp,%rsi
    10d3:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    10da:	00 
		xa = &(&nvmev_vdev->pdev->dev)->msi.data->__domains[i].store;
    10db:	48 8b 40 40          	mov    0x40(%rax),%rax
    10df:	48 8b 98 00 03 00 00 	mov    0x300(%rax),%rbx
    10e6:	48 83 c3 30          	add    $0x30,%rbx
		xa_for_each_range(xa, idx, msi_desc, 0, NR_MAX_IO_QUEUE * PCI_MSIX_ENTRY_SIZE) {
    10ea:	48 89 df             	mov    %rbx,%rdi
    10ed:	e8 00 00 00 00       	call   10f2 <nvmev_signal_irq+0x52>
    10f2:	48 85 c0             	test   %rax,%rax
    10f5:	75 1c                	jne    1113 <nvmev_signal_irq+0x73>
    10f7:	eb 5b                	jmp    1154 <nvmev_signal_irq+0xb4>
    10f9:	b9 08 00 00 00       	mov    $0x8,%ecx
    10fe:	ba 80 04 00 00       	mov    $0x480,%edx
    1103:	48 89 e6             	mov    %rsp,%rsi
    1106:	48 89 df             	mov    %rbx,%rdi
    1109:	e8 00 00 00 00       	call   110e <nvmev_signal_irq+0x6e>
    110e:	48 85 c0             	test   %rax,%rax
    1111:	74 41                	je     1154 <nvmev_signal_irq+0xb4>
			if (msi_desc->msi_index == msi_index) {
    1113:	0f b7 50 48          	movzwl 0x48(%rax),%edx
    1117:	39 ea                	cmp    %ebp,%edx
    1119:	75 de                	jne    10f9 <nvmev_signal_irq+0x59>
	struct irq_data *irqd = irq_get_irq_data(msi_desc->irq);
    111b:	8b 38                	mov    (%rax),%edi
    111d:	e8 00 00 00 00       	call   1122 <nvmev_signal_irq+0x82>
    1122:	48 89 c7             	mov    %rax,%rdi
	BUG_ON(!chip->irq_retrigger);
    1125:	48 8b 40 18          	mov    0x18(%rax),%rax
    1129:	48 8b 40 58          	mov    0x58(%rax),%rax
    112d:	48 85 c0             	test   %rax,%rax
    1130:	74 20                	je     1152 <nvmev_signal_irq+0xb2>
	chip->irq_retrigger(irqd);
    1132:	e8 00 00 00 00       	call   1137 <nvmev_signal_irq+0x97>
}
    1137:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    113c:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    1143:	00 00 
    1145:	75 22                	jne    1169 <nvmev_signal_irq+0xc9>
    1147:	48 83 c4 10          	add    $0x10,%rsp
    114b:	5b                   	pop    %rbx
    114c:	5d                   	pop    %rbp
    114d:	e9 00 00 00 00       	jmp    1152 <nvmev_signal_irq+0xb2>
	BUG_ON(!chip->irq_retrigger);
    1152:	0f 0b                	ud2
		NVMEV_INFO("Failed to send IPI\n");
    1154:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    115b:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    1162:	e8 00 00 00 00       	call   1167 <nvmev_signal_irq+0xc7>
		BUG_ON(!msi_desc);
    1167:	0f 0b                	ud2
}
    1169:	e8 00 00 00 00       	call   116e <nvmev_signal_irq+0xce>
    116e:	66 90                	xchg   %ax,%ax

0000000000001170 <__pfx_nvmev_proc_bars>:
    1170:	90                   	nop
    1171:	90                   	nop
    1172:	90                   	nop
    1173:	90                   	nop
    1174:	90                   	nop
    1175:	90                   	nop
    1176:	90                   	nop
    1177:	90                   	nop
    1178:	90                   	nop
    1179:	90                   	nop
    117a:	90                   	nop
    117b:	90                   	nop
    117c:	90                   	nop
    117d:	90                   	nop
    117e:	90                   	nop
    117f:	90                   	nop

0000000000001180 <nvmev_proc_bars>:
{
    1180:	f3 0f 1e fa          	endbr64
    1184:	e8 00 00 00 00       	call   1189 <nvmev_proc_bars+0x9>
	struct __nvme_bar *old_bar = nvmev_vdev->old_bar;
    1189:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1190 <nvmev_proc_bars+0x10>
{
    1190:	41 55                	push   %r13
    1192:	41 54                	push   %r12
    1194:	55                   	push   %rbp
    1195:	53                   	push   %rbx
	struct nvme_ctrl_regs *bar = nvmev_vdev->bar;
    1196:	48 8b 98 90 01 00 00 	mov    0x190(%rax),%rbx
	struct __nvme_bar *old_bar = nvmev_vdev->old_bar;
    119d:	48 8b a8 88 01 00 00 	mov    0x188(%rax),%rbp
	if (old_bar->aqa != bar->u_aqa) {
    11a4:	8b 53 24             	mov    0x24(%rbx),%edx
    11a7:	39 55 24             	cmp    %edx,0x24(%rbp)
    11aa:	0f 84 3d 03 00 00    	je     14ed <nvmev_proc_bars+0x36d>
		old_bar->aqa = bar->u_aqa;
    11b0:	89 55 24             	mov    %edx,0x24(%rbp)
		if (nvmev_vdev->admin_q == NULL) {
    11b3:	48 83 b8 c0 01 00 00 	cmpq   $0x0,0x1c0(%rax)
    11ba:	00 
    11bb:	0f 84 58 03 00 00    	je     1519 <nvmev_proc_bars+0x399>
			NVMEV_ERROR("re-initializing admin queue\n");
    11c1:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    11c8:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    11cf:	e8 00 00 00 00       	call   11d4 <nvmev_proc_bars+0x54>
		modified = true;
    11d4:	ba 01 00 00 00       	mov    $0x1,%edx
	if (old_bar->asq != bar->u_asq) {
    11d9:	48 8b 43 28          	mov    0x28(%rbx),%rax
    11dd:	48 39 45 28          	cmp    %rax,0x28(%rbp)
    11e1:	0f 84 11 01 00 00    	je     12f8 <nvmev_proc_bars+0x178>
		queue = nvmev_vdev->admin_q;
    11e7:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 11ee <nvmev_proc_bars+0x6e>
    11ee:	4c 8b aa c0 01 00 00 	mov    0x1c0(%rdx),%r13
		if (queue == NULL) {
    11f5:	4d 85 ed             	test   %r13,%r13
    11f8:	0f 84 d2 03 00 00    	je     15d0 <nvmev_proc_bars+0x450>
		old_bar->asq = bar->u_asq;
    11fe:	48 89 45 28          	mov    %rax,0x28(%rbp)
		if (queue->nvme_sq) {
    1202:	49 8b 7d 10          	mov    0x10(%r13),%rdi
    1206:	48 85 ff             	test   %rdi,%rdi
    1209:	74 0d                	je     1218 <nvmev_proc_bars+0x98>
			kfree(queue->nvme_sq);
    120b:	e8 00 00 00 00       	call   1210 <nvmev_proc_bars+0x90>
			queue->nvme_sq = NULL;
    1210:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
    1217:	00 
		queue->sq_depth = bar->aqa.asqs + 1; /* asqs and acqs are 0-based */
    1218:	0f b7 43 24          	movzwl 0x24(%rbx),%eax

	if (unlikely(check_mul_overflow(n, size, &bytes)))
		return NULL;
	if (__builtin_constant_p(n) && __builtin_constant_p(size))
		return kmalloc(bytes, flags);
	return __kmalloc(bytes, flags);
    121c:	be c0 0d 00 00       	mov    $0xdc0,%esi
    1221:	25 ff 0f 00 00       	and    $0xfff,%eax
		num_pages = DIV_ROUND_UP(queue->sq_depth * sizeof(struct nvme_command), PAGE_SIZE);
    1226:	44 8d 60 41          	lea    0x41(%rax),%r12d
		queue->sq_depth = bar->aqa.asqs + 1; /* asqs and acqs are 0-based */
    122a:	8d 50 01             	lea    0x1(%rax),%edx
		num_pages = DIV_ROUND_UP(queue->sq_depth * sizeof(struct nvme_command), PAGE_SIZE);
    122d:	4d 63 e4             	movslq %r12d,%r12
		queue->sq_depth = bar->aqa.asqs + 1; /* asqs and acqs are 0-based */
    1230:	41 89 55 04          	mov    %edx,0x4(%r13)
		num_pages = DIV_ROUND_UP(queue->sq_depth * sizeof(struct nvme_command), PAGE_SIZE);
    1234:	49 c1 e4 06          	shl    $0x6,%r12
    1238:	49 83 ec 01          	sub    $0x1,%r12
    123c:	49 c1 ec 0c          	shr    $0xc,%r12
	if (unlikely(check_mul_overflow(n, size, &bytes)))
    1240:	4a 8d 3c e5 00 00 00 	lea    0x0(,%r12,8),%rdi
    1247:	00 
	return __kmalloc(bytes, flags);
    1248:	e8 00 00 00 00       	call   124d <nvmev_proc_bars+0xcd>
		queue->nvme_sq = kcalloc(num_pages, sizeof(struct nvme_command *), GFP_KERNEL);
    124d:	49 89 45 10          	mov    %rax,0x10(%r13)
		BUG_ON(!queue->nvme_sq && "Error on setup admin submission queue");
    1251:	48 85 c0             	test   %rax,%rax
    1254:	0f 84 94 03 00 00    	je     15ee <nvmev_proc_bars+0x46e>
				page_address(pfn_to_page(nvmev_vdev->bar->u_asq >> PAGE_SHIFT) + i);
    125a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1261 <nvmev_proc_bars+0xe1>
 */
#include <linux/vmstat.h>

static __always_inline void *lowmem_page_address(const struct page *page)
{
	return page_to_virt(page);
    1261:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1268 <nvmev_proc_bars+0xe8>
    1268:	48 8b 91 90 01 00 00 	mov    0x190(%rcx),%rdx
    126f:	48 8b 52 28          	mov    0x28(%rdx),%rdx
    1273:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    127a:	48 01 f2             	add    %rsi,%rdx
			queue->nvme_sq[i] =
    127d:	48 89 10             	mov    %rdx,(%rax)
		for (i = 0; i < num_pages; i++) {
    1280:	41 83 fc 01          	cmp    $0x1,%r12d
    1284:	74 3f                	je     12c5 <nvmev_proc_bars+0x145>
    1286:	ba 01 00 00 00       	mov    $0x1,%edx
    128b:	eb 0e                	jmp    129b <nvmev_proc_bars+0x11b>
    128d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1294 <nvmev_proc_bars+0x114>
    1294:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 129b <nvmev_proc_bars+0x11b>
				page_address(pfn_to_page(nvmev_vdev->bar->u_asq >> PAGE_SHIFT) + i);
    129b:	48 8b 81 90 01 00 00 	mov    0x190(%rcx),%rax
			queue->nvme_sq[i] =
    12a2:	49 8b 7d 10          	mov    0x10(%r13),%rdi
				page_address(pfn_to_page(nvmev_vdev->bar->u_asq >> PAGE_SHIFT) + i);
    12a6:	48 8b 40 28          	mov    0x28(%rax),%rax
    12aa:	48 c1 e8 0c          	shr    $0xc,%rax
    12ae:	48 01 d0             	add    %rdx,%rax
    12b1:	48 c1 e0 0c          	shl    $0xc,%rax
    12b5:	48 01 f0             	add    %rsi,%rax
			queue->nvme_sq[i] =
    12b8:	48 89 04 d7          	mov    %rax,(%rdi,%rdx,8)
		for (i = 0; i < num_pages; i++) {
    12bc:	48 83 c2 01          	add    $0x1,%rdx
    12c0:	49 39 d4             	cmp    %rdx,%r12
    12c3:	75 c8                	jne    128d <nvmev_proc_bars+0x10d>
		smp_mb();
    12c5:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
		nvmev_vdev->dbs[0] = nvmev_vdev->old_dbs[0] = 0;
    12cb:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 12d2 <nvmev_proc_bars+0x152>
		modified = true;
    12d2:	ba 01 00 00 00       	mov    $0x1,%edx
		nvmev_vdev->dbs[0] = nvmev_vdev->old_dbs[0] = 0;
    12d7:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
    12de:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    12e4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 12eb <nvmev_proc_bars+0x16b>
    12eb:	48 8b 80 a0 01 00 00 	mov    0x1a0(%rax),%rax
    12f2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
	if (old_bar->acq != bar->u_acq) {
    12f8:	48 8b 43 30          	mov    0x30(%rbx),%rax
    12fc:	48 39 45 30          	cmp    %rax,0x30(%rbp)
    1300:	0f 84 ee 01 00 00    	je     14f4 <nvmev_proc_bars+0x374>
		queue = nvmev_vdev->admin_q;
    1306:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 130d <nvmev_proc_bars+0x18d>
    130d:	4c 8b aa c0 01 00 00 	mov    0x1c0(%rdx),%r13
		if (queue == NULL) {
    1314:	4d 85 ed             	test   %r13,%r13
    1317:	0f 84 d3 02 00 00    	je     15f0 <nvmev_proc_bars+0x470>
		old_bar->acq = bar->u_acq;
    131d:	48 89 45 30          	mov    %rax,0x30(%rbp)
		if (queue->nvme_cq) {
    1321:	49 8b 7d 18          	mov    0x18(%r13),%rdi
    1325:	48 85 ff             	test   %rdi,%rdi
    1328:	74 0d                	je     1337 <nvmev_proc_bars+0x1b7>
			kfree(queue->nvme_cq);
    132a:	e8 00 00 00 00       	call   132f <nvmev_proc_bars+0x1af>
			queue->nvme_cq = NULL;
    132f:	49 c7 45 18 00 00 00 	movq   $0x0,0x18(%r13)
    1336:	00 
		queue->cq_depth = bar->aqa.acqs + 1; /* asqs and acqs are 0-based */
    1337:	0f b7 43 26          	movzwl 0x26(%rbx),%eax
    133b:	be c0 0d 00 00       	mov    $0xdc0,%esi
    1340:	25 ff 0f 00 00       	and    $0xfff,%eax
			DIV_ROUND_UP(queue->cq_depth * sizeof(struct nvme_completion), PAGE_SIZE);
    1345:	44 8d a0 01 01 00 00 	lea    0x101(%rax),%r12d
		queue->cq_depth = bar->aqa.acqs + 1; /* asqs and acqs are 0-based */
    134c:	8d 50 01             	lea    0x1(%rax),%edx
			DIV_ROUND_UP(queue->cq_depth * sizeof(struct nvme_completion), PAGE_SIZE);
    134f:	4d 63 e4             	movslq %r12d,%r12
		queue->cq_depth = bar->aqa.acqs + 1; /* asqs and acqs are 0-based */
    1352:	41 89 55 08          	mov    %edx,0x8(%r13)
			DIV_ROUND_UP(queue->cq_depth * sizeof(struct nvme_completion), PAGE_SIZE);
    1356:	49 c1 e4 04          	shl    $0x4,%r12
    135a:	49 83 ec 01          	sub    $0x1,%r12
    135e:	49 c1 ec 0c          	shr    $0xc,%r12
	if (unlikely(check_mul_overflow(n, size, &bytes)))
    1362:	4a 8d 3c e5 00 00 00 	lea    0x0(,%r12,8),%rdi
    1369:	00 
	return __kmalloc(bytes, flags);
    136a:	e8 00 00 00 00       	call   136f <nvmev_proc_bars+0x1ef>
		queue->nvme_cq = kcalloc(num_pages, sizeof(struct nvme_completion *), GFP_KERNEL);
    136f:	49 89 45 18          	mov    %rax,0x18(%r13)
		BUG_ON(!queue->nvme_cq && "Error on setup admin completion queue");
    1373:	48 85 c0             	test   %rax,%rax
    1376:	0f 84 92 02 00 00    	je     160e <nvmev_proc_bars+0x48e>
				page_address(pfn_to_page(nvmev_vdev->bar->u_acq >> PAGE_SHIFT) + i);
    137c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1383 <nvmev_proc_bars+0x203>
		queue->cq_head = 0;
    1383:	41 c7 45 0c 00 00 00 	movl   $0x0,0xc(%r13)
    138a:	00 
    138b:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1392 <nvmev_proc_bars+0x212>
				page_address(pfn_to_page(nvmev_vdev->bar->u_acq >> PAGE_SHIFT) + i);
    1392:	48 8b 91 90 01 00 00 	mov    0x190(%rcx),%rdx
    1399:	48 8b 52 30          	mov    0x30(%rdx),%rdx
    139d:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    13a4:	48 01 f2             	add    %rsi,%rdx
			queue->nvme_cq[i] =
    13a7:	48 89 10             	mov    %rdx,(%rax)
		for (i = 0; i < num_pages; i++) {
    13aa:	41 83 fc 01          	cmp    $0x1,%r12d
    13ae:	74 3f                	je     13ef <nvmev_proc_bars+0x26f>
    13b0:	ba 01 00 00 00       	mov    $0x1,%edx
    13b5:	eb 0e                	jmp    13c5 <nvmev_proc_bars+0x245>
    13b7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 13be <nvmev_proc_bars+0x23e>
    13be:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 13c5 <nvmev_proc_bars+0x245>
				page_address(pfn_to_page(nvmev_vdev->bar->u_acq >> PAGE_SHIFT) + i);
    13c5:	48 8b 81 90 01 00 00 	mov    0x190(%rcx),%rax
			queue->nvme_cq[i] =
    13cc:	49 8b 7d 18          	mov    0x18(%r13),%rdi
				page_address(pfn_to_page(nvmev_vdev->bar->u_acq >> PAGE_SHIFT) + i);
    13d0:	48 8b 40 30          	mov    0x30(%rax),%rax
    13d4:	48 c1 e8 0c          	shr    $0xc,%rax
    13d8:	48 01 d0             	add    %rdx,%rax
    13db:	48 c1 e0 0c          	shl    $0xc,%rax
    13df:	48 01 f0             	add    %rsi,%rax
			queue->nvme_cq[i] =
    13e2:	48 89 04 d7          	mov    %rax,(%rdi,%rdx,8)
		for (i = 0; i < num_pages; i++) {
    13e6:	48 83 c2 01          	add    $0x1,%rdx
    13ea:	49 39 d4             	cmp    %rdx,%r12
    13ed:	75 c8                	jne    13b7 <nvmev_proc_bars+0x237>
		smp_mb();
    13ef:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
		nvmev_vdev->dbs[1] = nvmev_vdev->old_dbs[1] = 0;
    13f5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 13fc <nvmev_proc_bars+0x27c>
    13fc:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
    1403:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
    140a:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1411 <nvmev_proc_bars+0x291>
    1411:	48 8b 80 a0 01 00 00 	mov    0x1a0(%rax),%rax
    1418:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
	if (old_bar->cc != bar->u_cc) {
    141f:	8b 43 14             	mov    0x14(%rbx),%eax
    1422:	39 45 14             	cmp    %eax,0x14(%rbp)
    1425:	0f 84 b1 00 00 00    	je     14dc <nvmev_proc_bars+0x35c>
		if (bar->cc.en == 1) {
    142b:	f6 43 14 01          	testb  $0x1,0x14(%rbx)
    142f:	0f 84 d1 00 00 00    	je     1506 <nvmev_proc_bars+0x386>
			if (nvmev_vdev->admin_q) {
    1435:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 143c <nvmev_proc_bars+0x2bc>
    143c:	48 83 b8 c0 01 00 00 	cmpq   $0x0,0x1c0(%rax)
    1443:	00 
    1444:	0f 84 98 00 00 00    	je     14e2 <nvmev_proc_bars+0x362>
				bar->csts.rdy = 1;
    144a:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
		if (bar->cc.shn == 1) {
    144e:	0f b6 53 15          	movzbl 0x15(%rbx),%edx
				bar->csts.rdy = 1;
    1452:	83 c8 01             	or     $0x1,%eax
		if (bar->cc.shn == 1) {
    1455:	83 e2 c0             	and    $0xffffffc0,%edx
				bar->csts.rdy = 1;
    1458:	88 43 1c             	mov    %al,0x1c(%rbx)
		if (bar->cc.shn == 1) {
    145b:	80 fa 40             	cmp    $0x40,%dl
    145e:	75 76                	jne    14d6 <nvmev_proc_bars+0x356>
			bar->csts.shst = 2;
    1460:	83 e0 f3             	and    $0xfffffff3,%eax
    1463:	83 c8 08             	or     $0x8,%eax
    1466:	88 43 1c             	mov    %al,0x1c(%rbx)
			smp_mb();
    1469:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
			nvmev_vdev->dbs[0] = nvmev_vdev->old_dbs[0] = 0;
    146f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1476 <nvmev_proc_bars+0x2f6>
    1476:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
    147d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    1483:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 148a <nvmev_proc_bars+0x30a>
    148a:	48 8b 80 a0 01 00 00 	mov    0x1a0(%rax),%rax
    1491:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
			nvmev_vdev->dbs[1] = nvmev_vdev->old_dbs[1] = 0;
    1497:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 149e <nvmev_proc_bars+0x31e>
    149e:	48 8b 80 98 01 00 00 	mov    0x198(%rax),%rax
    14a5:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
    14ac:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 14b3 <nvmev_proc_bars+0x333>
    14b3:	48 8b 80 a0 01 00 00 	mov    0x1a0(%rax),%rax
    14ba:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
			nvmev_vdev->admin_q->cq_head = 0;
    14c1:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 14c8 <nvmev_proc_bars+0x348>
    14c8:	48 8b 80 c0 01 00 00 	mov    0x1c0(%rax),%rax
    14cf:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
		old_bar->cc = bar->u_cc;
    14d6:	8b 43 14             	mov    0x14(%rbx),%eax
    14d9:	89 45 14             	mov    %eax,0x14(%rbp)
		smp_mb();
    14dc:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
}
    14e2:	5b                   	pop    %rbx
    14e3:	5d                   	pop    %rbp
    14e4:	41 5c                	pop    %r12
    14e6:	41 5d                	pop    %r13
    14e8:	e9 00 00 00 00       	jmp    14ed <nvmev_proc_bars+0x36d>
	bool modified = false;
    14ed:	31 d2                	xor    %edx,%edx
    14ef:	e9 e5 fc ff ff       	jmp    11d9 <nvmev_proc_bars+0x59>
	if (old_bar->cc != bar->u_cc) {
    14f4:	8b 43 14             	mov    0x14(%rbx),%eax
    14f7:	39 45 14             	cmp    %eax,0x14(%rbp)
    14fa:	0f 85 2b ff ff ff    	jne    142b <nvmev_proc_bars+0x2ab>
	if (modified)
    1500:	84 d2                	test   %dl,%dl
    1502:	74 de                	je     14e2 <nvmev_proc_bars+0x362>
    1504:	eb d6                	jmp    14dc <nvmev_proc_bars+0x35c>
			bar->u_cc = 0;
    1506:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%rbx)
		old_bar->cc = bar->u_cc;
    150d:	8b 43 14             	mov    0x14(%rbx),%eax
			bar->csts.rdy = 0;
    1510:	80 63 1c fe          	andb   $0xfe,0x1c(%rbx)
		old_bar->cc = bar->u_cc;
    1514:	89 45 14             	mov    %eax,0x14(%rbp)
    1517:	eb c3                	jmp    14dc <nvmev_proc_bars+0x35c>
		return kmalloc_trace(
    1519:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1520 <nvmev_proc_bars+0x3a0>
    1520:	ba 20 00 00 00       	mov    $0x20,%edx
    1525:	be c0 0d 00 00       	mov    $0xdc0,%esi
    152a:	e8 00 00 00 00       	call   152f <nvmev_proc_bars+0x3af>
			BUG_ON(queue == NULL);
    152f:	48 85 c0             	test   %rax,%rax
    1532:	0f 84 d8 00 00 00    	je     1610 <nvmev_proc_bars+0x490>
			queue->cq_head = 0;
    1538:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
			queue->phase = 1;
    153f:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
			queue->sq_depth = bar->aqa.asqs + 1; /* asqs and acqs are 0-based */
    1545:	0f b7 53 24          	movzwl 0x24(%rbx),%edx
    1549:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    154f:	83 c2 01             	add    $0x1,%edx
    1552:	89 50 04             	mov    %edx,0x4(%rax)
			queue->cq_depth = bar->aqa.acqs + 1;
    1555:	0f b7 53 26          	movzwl 0x26(%rbx),%edx
    1559:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    155f:	83 c2 01             	add    $0x1,%edx
    1562:	89 50 08             	mov    %edx,0x8(%rax)
			smp_mb();
    1565:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
			nvmev_vdev->dbs[0] = nvmev_vdev->old_dbs[0] = 0;
    156b:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1572 <nvmev_proc_bars+0x3f2>
    1572:	48 8b 92 98 01 00 00 	mov    0x198(%rdx),%rdx
    1579:	c7 02 00 00 00 00    	movl   $0x0,(%rdx)
    157f:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1586 <nvmev_proc_bars+0x406>
    1586:	48 8b 92 a0 01 00 00 	mov    0x1a0(%rdx),%rdx
    158d:	c7 02 00 00 00 00    	movl   $0x0,(%rdx)
			nvmev_vdev->dbs[1] = nvmev_vdev->old_dbs[1] = 0;
    1593:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 159a <nvmev_proc_bars+0x41a>
    159a:	48 8b 92 98 01 00 00 	mov    0x198(%rdx),%rdx
    15a1:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
    15a8:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 15af <nvmev_proc_bars+0x42f>
    15af:	48 8b 92 a0 01 00 00 	mov    0x1a0(%rdx),%rdx
    15b6:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
			WRITE_ONCE(nvmev_vdev->admin_q, queue);
    15bd:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 15c4 <nvmev_proc_bars+0x444>
    15c4:	48 89 82 c0 01 00 00 	mov    %rax,0x1c0(%rdx)
    15cb:	e9 04 fc ff ff       	jmp    11d4 <nvmev_proc_bars+0x54>
			NVMEV_INFO("asq triggered before aqa, retrying\n");
    15d0:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    15d7:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    15de:	e8 00 00 00 00       	call   15e3 <nvmev_proc_bars+0x463>
			smp_mb();
    15e3:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
			return;
    15e9:	e9 f4 fe ff ff       	jmp    14e2 <nvmev_proc_bars+0x362>
		BUG_ON(!queue->nvme_sq && "Error on setup admin submission queue");
    15ee:	0f 0b                	ud2
			NVMEV_INFO("acq triggered before aqa, retrying\n");
    15f0:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    15f7:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    15fe:	e8 00 00 00 00       	call   1603 <nvmev_proc_bars+0x483>
			smp_mb();
    1603:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
			return;
    1609:	e9 d4 fe ff ff       	jmp    14e2 <nvmev_proc_bars+0x362>
		BUG_ON(!queue->nvme_cq && "Error on setup admin completion queue");
    160e:	0f 0b                	ud2
			BUG_ON(queue == NULL);
    1610:	0f 0b                	ud2
    1612:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1619:	00 00 00 00 
    161d:	0f 1f 00             	nopl   (%rax)

0000000000001620 <__pfx_VDEV_INIT>:
    1620:	90                   	nop
    1621:	90                   	nop
    1622:	90                   	nop
    1623:	90                   	nop
    1624:	90                   	nop
    1625:	90                   	nop
    1626:	90                   	nop
    1627:	90                   	nop
    1628:	90                   	nop
    1629:	90                   	nop
    162a:	90                   	nop
    162b:	90                   	nop
    162c:	90                   	nop
    162d:	90                   	nop
    162e:	90                   	nop
    162f:	90                   	nop

0000000000001630 <VDEV_INIT>:

	return nvmev_pci_bus;
};

struct nvmev_dev *VDEV_INIT(void)
{
    1630:	f3 0f 1e fa          	endbr64
    1634:	e8 00 00 00 00       	call   1639 <VDEV_INIT+0x9>
    1639:	53                   	push   %rbx
    163a:	ba 90 06 00 00       	mov    $0x690,%edx
    163f:	be c0 0d 00 00       	mov    $0xdc0,%esi
    1644:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 164b <VDEV_INIT+0x1b>
    164b:	e8 00 00 00 00       	call   1650 <VDEV_INIT+0x20>
    1650:	ba 00 10 00 00       	mov    $0x1000,%edx
    1655:	be c0 0d 00 00       	mov    $0xdc0,%esi
    165a:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1661 <VDEV_INIT+0x31>
    1661:	48 89 c3             	mov    %rax,%rbx
    1664:	e8 00 00 00 00       	call   1669 <VDEV_INIT+0x39>
	nvmev_vdev->msixcap = nvmev_vdev->virtDev + OFFS_PCI_MSIX_CAP;
	nvmev_vdev->pciecap = nvmev_vdev->virtDev + OFFS_PCIE_CAP;
	nvmev_vdev->aercap = nvmev_vdev->virtDev + PCI_CFG_SPACE_SIZE;
	nvmev_vdev->pcie_exp_cap = nvmev_vdev->virtDev + PCI_CFG_SPACE_SIZE;

	nvmev_vdev->msix_enabled = true;
    1669:	c6 83 7c 01 00 00 01 	movb   $0x1,0x17c(%rbx)
	nvmev_vdev->pmcap = nvmev_vdev->virtDev + OFFS_PCI_PM_CAP;
    1670:	48 8d 50 40          	lea    0x40(%rax),%rdx
	nvmev_vdev->virtDev = kzalloc(PAGE_SIZE, GFP_KERNEL);
    1674:	48 89 43 08          	mov    %rax,0x8(%rbx)
	nvmev_vdev->pmcap = nvmev_vdev->virtDev + OFFS_PCI_PM_CAP;
    1678:	48 89 53 18          	mov    %rdx,0x18(%rbx)
	nvmev_vdev->msixcap = nvmev_vdev->virtDev + OFFS_PCI_MSIX_CAP;
    167c:	48 8d 50 50          	lea    0x50(%rax),%rdx
	nvmev_vdev->pcihdr = nvmev_vdev->virtDev + OFFS_PCI_HDR;
    1680:	48 89 43 10          	mov    %rax,0x10(%rbx)
	nvmev_vdev->msixcap = nvmev_vdev->virtDev + OFFS_PCI_MSIX_CAP;
    1684:	48 89 53 20          	mov    %rdx,0x20(%rbx)
	nvmev_vdev->pciecap = nvmev_vdev->virtDev + OFFS_PCIE_CAP;
    1688:	48 8d 50 60          	lea    0x60(%rax),%rdx
	nvmev_vdev->aercap = nvmev_vdev->virtDev + PCI_CFG_SPACE_SIZE;
    168c:	48 05 00 01 00 00    	add    $0x100,%rax
    1692:	48 89 43 30          	mov    %rax,0x30(%rbx)
	nvmev_vdev->pcie_exp_cap = nvmev_vdev->virtDev + PCI_CFG_SPACE_SIZE;
    1696:	48 89 43 38          	mov    %rax,0x38(%rbx)

	nvmev_vdev->admin_q = NULL;

	return nvmev_vdev;
}
    169a:	48 89 d8             	mov    %rbx,%rax
	nvmev_vdev->pciecap = nvmev_vdev->virtDev + OFFS_PCIE_CAP;
    169d:	48 89 53 28          	mov    %rdx,0x28(%rbx)
	nvmev_vdev->admin_q = NULL;
    16a1:	48 c7 83 c0 01 00 00 	movq   $0x0,0x1c0(%rbx)
    16a8:	00 00 00 00 
}
    16ac:	5b                   	pop    %rbx
    16ad:	e9 00 00 00 00       	jmp    16b2 <VDEV_INIT+0x82>
    16b2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    16b9:	00 00 00 00 
    16bd:	0f 1f 00             	nopl   (%rax)

00000000000016c0 <__pfx_VDEV_FINALIZE>:
    16c0:	90                   	nop
    16c1:	90                   	nop
    16c2:	90                   	nop
    16c3:	90                   	nop
    16c4:	90                   	nop
    16c5:	90                   	nop
    16c6:	90                   	nop
    16c7:	90                   	nop
    16c8:	90                   	nop
    16c9:	90                   	nop
    16ca:	90                   	nop
    16cb:	90                   	nop
    16cc:	90                   	nop
    16cd:	90                   	nop
    16ce:	90                   	nop
    16cf:	90                   	nop

00000000000016d0 <VDEV_FINALIZE>:

void VDEV_FINALIZE(struct nvmev_dev *nvmev_vdev)
{
    16d0:	f3 0f 1e fa          	endbr64
    16d4:	e8 00 00 00 00       	call   16d9 <VDEV_FINALIZE+0x9>
    16d9:	53                   	push   %rbx
    16da:	48 89 fb             	mov    %rdi,%rbx
	if (nvmev_vdev->msix_table)
    16dd:	48 8b bf 80 01 00 00 	mov    0x180(%rdi),%rdi
    16e4:	48 85 ff             	test   %rdi,%rdi
    16e7:	74 05                	je     16ee <VDEV_FINALIZE+0x1e>
		memunmap(nvmev_vdev->msix_table);
    16e9:	e8 00 00 00 00       	call   16ee <VDEV_FINALIZE+0x1e>

	if (nvmev_vdev->bar)
    16ee:	48 8b bb 90 01 00 00 	mov    0x190(%rbx),%rdi
    16f5:	48 85 ff             	test   %rdi,%rdi
    16f8:	74 05                	je     16ff <VDEV_FINALIZE+0x2f>
		memunmap(nvmev_vdev->bar);
    16fa:	e8 00 00 00 00       	call   16ff <VDEV_FINALIZE+0x2f>

	if (nvmev_vdev->old_bar)
    16ff:	48 8b bb 88 01 00 00 	mov    0x188(%rbx),%rdi
    1706:	48 85 ff             	test   %rdi,%rdi
    1709:	74 05                	je     1710 <VDEV_FINALIZE+0x40>
		kfree(nvmev_vdev->old_bar);
    170b:	e8 00 00 00 00       	call   1710 <VDEV_FINALIZE+0x40>

	if (nvmev_vdev->old_dbs)
    1710:	48 8b bb 98 01 00 00 	mov    0x198(%rbx),%rdi
    1717:	48 85 ff             	test   %rdi,%rdi
    171a:	74 05                	je     1721 <VDEV_FINALIZE+0x51>
		kfree(nvmev_vdev->old_dbs);
    171c:	e8 00 00 00 00       	call   1721 <VDEV_FINALIZE+0x51>

	if (nvmev_vdev->admin_q->nvme_cq)
    1721:	48 8b bb c0 01 00 00 	mov    0x1c0(%rbx),%rdi
    1728:	48 8b 47 18          	mov    0x18(%rdi),%rax
    172c:	48 85 c0             	test   %rax,%rax
    172f:	74 0f                	je     1740 <VDEV_FINALIZE+0x70>
		kfree(nvmev_vdev->admin_q->nvme_cq);
    1731:	48 89 c7             	mov    %rax,%rdi
    1734:	e8 00 00 00 00       	call   1739 <VDEV_FINALIZE+0x69>

	if (nvmev_vdev->admin_q->nvme_sq)
    1739:	48 8b bb c0 01 00 00 	mov    0x1c0(%rbx),%rdi
    1740:	48 8b 47 10          	mov    0x10(%rdi),%rax
    1744:	48 85 c0             	test   %rax,%rax
    1747:	74 0f                	je     1758 <VDEV_FINALIZE+0x88>
		kfree(nvmev_vdev->admin_q->nvme_sq);
    1749:	48 89 c7             	mov    %rax,%rdi
    174c:	e8 00 00 00 00       	call   1751 <VDEV_FINALIZE+0x81>

	if (nvmev_vdev->admin_q)
    1751:	48 8b bb c0 01 00 00 	mov    0x1c0(%rbx),%rdi
    1758:	48 85 ff             	test   %rdi,%rdi
    175b:	74 05                	je     1762 <VDEV_FINALIZE+0x92>
		kfree(nvmev_vdev->admin_q);
    175d:	e8 00 00 00 00       	call   1762 <VDEV_FINALIZE+0x92>

	if (nvmev_vdev->virtDev)
    1762:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    1766:	48 85 ff             	test   %rdi,%rdi
    1769:	74 05                	je     1770 <VDEV_FINALIZE+0xa0>
		kfree(nvmev_vdev->virtDev);
    176b:	e8 00 00 00 00       	call   1770 <VDEV_FINALIZE+0xa0>

	if (nvmev_vdev)
    1770:	48 85 db             	test   %rbx,%rbx
    1773:	74 09                	je     177e <VDEV_FINALIZE+0xae>
		kfree(nvmev_vdev);
    1775:	48 89 df             	mov    %rbx,%rdi
}
    1778:	5b                   	pop    %rbx
		kfree(nvmev_vdev);
    1779:	e9 00 00 00 00       	jmp    177e <VDEV_FINALIZE+0xae>
}
    177e:	5b                   	pop    %rbx
    177f:	e9 00 00 00 00       	jmp    1784 <VDEV_FINALIZE+0xb4>
    1784:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    178b:	00 00 00 00 
    178f:	90                   	nop

0000000000001790 <__pfx_PCI_HEADER_SETTINGS>:
    1790:	90                   	nop
    1791:	90                   	nop
    1792:	90                   	nop
    1793:	90                   	nop
    1794:	90                   	nop
    1795:	90                   	nop
    1796:	90                   	nop
    1797:	90                   	nop
    1798:	90                   	nop
    1799:	90                   	nop
    179a:	90                   	nop
    179b:	90                   	nop
    179c:	90                   	nop
    179d:	90                   	nop
    179e:	90                   	nop
    179f:	90                   	nop

00000000000017a0 <PCI_HEADER_SETTINGS>:

void PCI_HEADER_SETTINGS(struct pci_header *pcihdr, unsigned long base_pa)
{
    17a0:	f3 0f 1e fa          	endbr64
    17a4:	e8 00 00 00 00       	call   17a9 <PCI_HEADER_SETTINGS+0x9>
	pcihdr->id.did = 0x0101;
	pcihdr->id.vid = 0x0c51;
    17a9:	48 ba 51 0c 01 01 02 	movabs $0x10000201010c51,%rdx
    17b0:	00 10 00 
	*/
	pcihdr->cmd.mse = 1;
	pcihdr->sts.cl = 1;

	pcihdr->htype.mfd = 0;
	pcihdr->htype.hl = PCI_HEADER_TYPE_NORMAL;
    17b3:	c6 47 0e 00          	movb   $0x0,0xe(%rdi)
	pcihdr->id.vid = 0x0c51;
    17b7:	48 b8 00 00 00 00 fd 	movabs $0xffeffffd00000000,%rax
    17be:	ff ef ff 
    17c1:	48 23 07             	and    (%rdi),%rax
    17c4:	48 09 d0             	or     %rdx,%rax

	pcihdr->cc.bcc = PCI_BASE_CLASS_STORAGE;
	pcihdr->cc.scc = 0x08;
	pcihdr->cc.pi = 0x02;

	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    17c7:	8b 57 10             	mov    0x10(%rdi),%edx
	pcihdr->rid = 0x01;
    17ca:	c7 47 08 01 02 08 01 	movl   $0x1080201,0x8(%rdi)
	pcihdr->id.vid = 0x0c51;
    17d1:	48 89 07             	mov    %rax,(%rdi)
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    17d4:	89 f0                	mov    %esi,%eax
	pcihdr->mlbar.ba = (base_pa & 0xFFFFFFFF) >> 14;

	pcihdr->mulbar = base_pa >> 32;
    17d6:	48 c1 ee 20          	shr    $0x20,%rsi
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    17da:	25 00 c0 ff ff       	and    $0xffffc000,%eax
    17df:	81 e2 f9 3f 00 00    	and    $0x3ff9,%edx
	pcihdr->mulbar = base_pa >> 32;
    17e5:	89 77 14             	mov    %esi,0x14(%rdi)
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    17e8:	83 c8 04             	or     $0x4,%eax

	pcihdr->ss.ssid = 0x370d;
	pcihdr->ss.ssvid = 0x0c51;
    17eb:	48 c7 47 2c 51 0c 0d 	movq   $0x370d0c51,0x2c(%rdi)
    17f2:	37 
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    17f3:	09 d0                	or     %edx,%eax

	pcihdr->erom =
		0x0; //PFN_PHYS(page_to_pfn(bar_pages));//page_to_pfn(bar_pages);//0xDF300000;

	pcihdr->cap = OFFS_PCI_PM_CAP;
    17f5:	c6 47 34 40          	movb   $0x40,0x34(%rdi)
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    17f9:	89 47 10             	mov    %eax,0x10(%rdi)

	pcihdr->intr.ipin = 0;
	pcihdr->intr.iline = 0;
    17fc:	0f b7 05 00 00 00 00 	movzwl 0x0(%rip),%eax        # 1803 <PCI_HEADER_SETTINGS+0x63>
    1803:	66 89 47 3c          	mov    %ax,0x3c(%rdi)
}
    1807:	e9 00 00 00 00       	jmp    180c <PCI_HEADER_SETTINGS+0x6c>
    180c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001810 <__pfx_PCI_PMCAP_SETTINGS>:
    1810:	90                   	nop
    1811:	90                   	nop
    1812:	90                   	nop
    1813:	90                   	nop
    1814:	90                   	nop
    1815:	90                   	nop
    1816:	90                   	nop
    1817:	90                   	nop
    1818:	90                   	nop
    1819:	90                   	nop
    181a:	90                   	nop
    181b:	90                   	nop
    181c:	90                   	nop
    181d:	90                   	nop
    181e:	90                   	nop
    181f:	90                   	nop

0000000000001820 <PCI_PMCAP_SETTINGS>:

void PCI_PMCAP_SETTINGS(struct pci_pm_cap *pmcap)
{
    1820:	f3 0f 1e fa          	endbr64
    1824:	e8 00 00 00 00       	call   1829 <PCI_PMCAP_SETTINGS+0x9>
	pmcap->pid.cid = PCI_CAP_ID_PM;
    1829:	8b 07                	mov    (%rdi),%eax
    182b:	25 00 00 f8 ff       	and    $0xfff80000,%eax
    1830:	0d 01 50 03 00       	or     $0x35001,%eax
    1835:	89 07                	mov    %eax,(%rdi)
	pmcap->pid.next = OFFS_PCI_MSIX_CAP;

	pmcap->pc.vs = 3;
	pmcap->pmcs.nsfrst = 1;
	pmcap->pmcs.ps = PCI_PM_CAP_PME_D0 >> 16;
    1837:	0f b6 47 04          	movzbl 0x4(%rdi),%eax
    183b:	83 e0 f4             	and    $0xfffffff4,%eax
    183e:	83 c8 08             	or     $0x8,%eax
    1841:	88 47 04             	mov    %al,0x4(%rdi)
}
    1844:	e9 00 00 00 00       	jmp    1849 <PCI_PMCAP_SETTINGS+0x29>
    1849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001850 <__pfx_PCI_MSIXCAP_SETTINGS>:
    1850:	90                   	nop
    1851:	90                   	nop
    1852:	90                   	nop
    1853:	90                   	nop
    1854:	90                   	nop
    1855:	90                   	nop
    1856:	90                   	nop
    1857:	90                   	nop
    1858:	90                   	nop
    1859:	90                   	nop
    185a:	90                   	nop
    185b:	90                   	nop
    185c:	90                   	nop
    185d:	90                   	nop
    185e:	90                   	nop
    185f:	90                   	nop

0000000000001860 <PCI_MSIXCAP_SETTINGS>:

void PCI_MSIXCAP_SETTINGS(struct pci_msix_cap *msixcap)
{
    1860:	f3 0f 1e fa          	endbr64
    1864:	e8 00 00 00 00       	call   1869 <PCI_MSIXCAP_SETTINGS+0x9>
	msixcap->mxid.cid = PCI_CAP_ID_MSIX;
    1869:	48 8b 07             	mov    (%rdi),%rax

	msixcap->mtab.tbir = 0;
	msixcap->mtab.to = 0x400;

	msixcap->mpba.pbao = 0x1000;
	msixcap->mpba.pbir = 0;
    186c:	c7 47 08 00 80 00 00 	movl   $0x8000,0x8(%rdi)
	msixcap->mxid.cid = PCI_CAP_ID_MSIX;
    1873:	48 ba 11 60 7f 80 00 	movabs $0x2000807f6011,%rdx
    187a:	20 00 00 
    187d:	25 00 00 00 78       	and    $0x78000000,%eax
    1882:	48 09 d0             	or     %rdx,%rax
    1885:	48 89 07             	mov    %rax,(%rdi)
}
    1888:	e9 00 00 00 00       	jmp    188d <PCI_MSIXCAP_SETTINGS+0x2d>
    188d:	0f 1f 00             	nopl   (%rax)

0000000000001890 <__pfx_PCI_PCIECAP_SETTINGS>:
    1890:	90                   	nop
    1891:	90                   	nop
    1892:	90                   	nop
    1893:	90                   	nop
    1894:	90                   	nop
    1895:	90                   	nop
    1896:	90                   	nop
    1897:	90                   	nop
    1898:	90                   	nop
    1899:	90                   	nop
    189a:	90                   	nop
    189b:	90                   	nop
    189c:	90                   	nop
    189d:	90                   	nop
    189e:	90                   	nop
    189f:	90                   	nop

00000000000018a0 <PCI_PCIECAP_SETTINGS>:

void PCI_PCIECAP_SETTINGS(struct pcie_cap *pciecap)
{
    18a0:	f3 0f 1e fa          	endbr64
    18a4:	e8 00 00 00 00       	call   18a9 <PCI_PCIECAP_SETTINGS+0x9>
	pciecap->pxid.cid = PCI_CAP_ID_EXP;
    18a9:	48 b8 00 00 00 c1 00 	movabs $0xe0037000c1000000,%rax
    18b0:	70 03 e0 
    18b3:	48 23 07             	and    (%rdi),%rax
    18b6:	48 ba 10 00 02 00 a1 	movabs $0x100085a100020010,%rdx
    18bd:	85 00 10 
    18c0:	48 09 d0             	or     %rdx,%rax
    18c3:	48 89 07             	mov    %rax,(%rdi)
	pciecap->pxdcap.l1l = 2;
	pciecap->pxdcap.rer = 1;
	pciecap->pxdcap.csplv = 0;
	pciecap->pxdcap.cspls = 0;
	pciecap->pxdcap.flrc = 1;
}
    18c6:	e9 00 00 00 00       	jmp    18cb <PCI_PCIECAP_SETTINGS+0x2b>
    18cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000018d0 <__pfx_PCI_AERCAP_SETTINGS>:
    18d0:	90                   	nop
    18d1:	90                   	nop
    18d2:	90                   	nop
    18d3:	90                   	nop
    18d4:	90                   	nop
    18d5:	90                   	nop
    18d6:	90                   	nop
    18d7:	90                   	nop
    18d8:	90                   	nop
    18d9:	90                   	nop
    18da:	90                   	nop
    18db:	90                   	nop
    18dc:	90                   	nop
    18dd:	90                   	nop
    18de:	90                   	nop
    18df:	90                   	nop

00000000000018e0 <PCI_AERCAP_SETTINGS>:

void PCI_AERCAP_SETTINGS(struct aer_cap *aercap)
{
    18e0:	f3 0f 1e fa          	endbr64
    18e4:	e8 00 00 00 00       	call   18e9 <PCI_AERCAP_SETTINGS+0x9>
	aercap->aerid.cid = PCI_EXT_CAP_ID_ERR;
    18e9:	c7 07 01 00 01 15    	movl   $0x15010001,(%rdi)
	aercap->aerid.cver = 1;
	aercap->aerid.next = PCI_CFG_SPACE_SIZE + 0x50;
}
    18ef:	e9 00 00 00 00       	jmp    18f4 <PCI_AERCAP_SETTINGS+0x14>
    18f4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    18fb:	00 00 00 00 
    18ff:	90                   	nop

0000000000001900 <__pfx_PCI_PCIE_EXTCAP_SETTINGS>:
    1900:	90                   	nop
    1901:	90                   	nop
    1902:	90                   	nop
    1903:	90                   	nop
    1904:	90                   	nop
    1905:	90                   	nop
    1906:	90                   	nop
    1907:	90                   	nop
    1908:	90                   	nop
    1909:	90                   	nop
    190a:	90                   	nop
    190b:	90                   	nop
    190c:	90                   	nop
    190d:	90                   	nop
    190e:	90                   	nop
    190f:	90                   	nop

0000000000001910 <PCI_PCIE_EXTCAP_SETTINGS>:

void PCI_PCIE_EXTCAP_SETTINGS(struct pci_exp_hdr *exp_cap)
{
    1910:	f3 0f 1e fa          	endbr64
    1914:	e8 00 00 00 00       	call   1919 <PCI_PCIE_EXTCAP_SETTINGS+0x9>
	struct pci_exp_hdr *pcie_exp_cap;

	pcie_exp_cap = exp_cap + 0x50;
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_VC;
    1919:	c7 87 40 01 00 00 02 	movl   $0x18010002,0x140(%rdi)
    1920:	00 01 18 
	pcie_exp_cap->id.cver = 1;
	pcie_exp_cap->id.next = PCI_CFG_SPACE_SIZE + 0x80;

	pcie_exp_cap = exp_cap + 0x80;
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_PWR;
    1923:	c7 87 00 02 00 00 04 	movl   $0x19010004,0x200(%rdi)
    192a:	00 01 19 
	pcie_exp_cap->id.cver = 1;
	pcie_exp_cap->id.next = PCI_CFG_SPACE_SIZE + 0x90;

	pcie_exp_cap = exp_cap + 0x90;
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_ARI;
    192d:	c7 87 40 02 00 00 0e 	movl   $0x2701000e,0x240(%rdi)
    1934:	00 01 27 
	pcie_exp_cap->id.cver = 1;
	pcie_exp_cap->id.next = PCI_CFG_SPACE_SIZE + 0x170;

	pcie_exp_cap = exp_cap + 0x170;
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_DSN;
    1937:	c7 87 c0 05 00 00 03 	movl   $0x2a010003,0x5c0(%rdi)
    193e:	00 01 2a 
	pcie_exp_cap->id.cver = 1;
	pcie_exp_cap->id.next = PCI_CFG_SPACE_SIZE + 0x1a0;

	pcie_exp_cap = exp_cap + 0x1a0;
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_SECPCI;
    1941:	c7 87 80 06 00 00 19 	movl   $0x10019,0x680(%rdi)
    1948:	00 01 00 
	pcie_exp_cap->id.cver = 1;
	pcie_exp_cap->id.next = 0;
}
    194b:	e9 00 00 00 00       	jmp    1950 <__pfx_NVMEV_PCI_INIT>

0000000000001950 <__pfx_NVMEV_PCI_INIT>:
    1950:	90                   	nop
    1951:	90                   	nop
    1952:	90                   	nop
    1953:	90                   	nop
    1954:	90                   	nop
    1955:	90                   	nop
    1956:	90                   	nop
    1957:	90                   	nop
    1958:	90                   	nop
    1959:	90                   	nop
    195a:	90                   	nop
    195b:	90                   	nop
    195c:	90                   	nop
    195d:	90                   	nop
    195e:	90                   	nop
    195f:	90                   	nop

0000000000001960 <NVMEV_PCI_INIT>:

bool NVMEV_PCI_INIT(struct nvmev_dev *nvmev_vdev)
{
    1960:	f3 0f 1e fa          	endbr64
    1964:	e8 00 00 00 00       	call   1969 <NVMEV_PCI_INIT+0x9>
	pcihdr->id.vid = 0x0c51;
    1969:	48 be 51 0c 01 01 02 	movabs $0x10000201010c51,%rsi
    1970:	00 10 00 
{
    1973:	41 57                	push   %r15
	pcihdr->id.vid = 0x0c51;
    1975:	48 ba 00 00 00 00 fd 	movabs $0xffeffffd00000000,%rdx
    197c:	ff ef ff 
{
    197f:	41 56                	push   %r14
    1981:	41 55                	push   %r13
    1983:	41 54                	push   %r12
    1985:	55                   	push   %rbp
    1986:	53                   	push   %rbx
	PCI_HEADER_SETTINGS(nvmev_vdev->pcihdr, nvmev_vdev->config.memmap_start);
    1987:	48 8b 47 10          	mov    0x10(%rdi),%rax
{
    198b:	48 89 fb             	mov    %rdi,%rbx
	PCI_HEADER_SETTINGS(nvmev_vdev->pcihdr, nvmev_vdev->config.memmap_start);
    198e:	48 8b 8f 98 00 00 00 	mov    0x98(%rdi),%rcx
	pcihdr->id.vid = 0x0c51;
    1995:	48 23 10             	and    (%rax),%rdx
	pcihdr->htype.hl = PCI_HEADER_TYPE_NORMAL;
    1998:	c6 40 0e 00          	movb   $0x0,0xe(%rax)
	pcihdr->id.vid = 0x0c51;
    199c:	48 09 f2             	or     %rsi,%rdx
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    199f:	8b 70 10             	mov    0x10(%rax),%esi
	pcihdr->rid = 0x01;
    19a2:	c7 40 08 01 02 08 01 	movl   $0x1080201,0x8(%rax)
	pcihdr->id.vid = 0x0c51;
    19a9:	48 89 10             	mov    %rdx,(%rax)
	pcihdr->mlbar.ba = (base_pa & 0xFFFFFFFF) >> 14;
    19ac:	48 89 ca             	mov    %rcx,%rdx
	pcihdr->mulbar = base_pa >> 32;
    19af:	48 c1 e9 20          	shr    $0x20,%rcx
	pcihdr->mlbar.ba = (base_pa & 0xFFFFFFFF) >> 14;
    19b3:	48 c1 ea 0e          	shr    $0xe,%rdx
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    19b7:	81 e6 f9 3f 00 00    	and    $0x3ff9,%esi
	pcihdr->mulbar = base_pa >> 32;
    19bd:	89 48 14             	mov    %ecx,0x14(%rax)
	msixcap->mxid.cid = PCI_CAP_ID_MSIX;
    19c0:	48 b9 11 60 7f 80 00 	movabs $0x2000807f6011,%rcx
    19c7:	20 00 00 
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    19ca:	c1 e2 0e             	shl    $0xe,%edx
	pcihdr->ss.ssvid = 0x0c51;
    19cd:	48 c7 40 2c 51 0c 0d 	movq   $0x370d0c51,0x2c(%rax)
    19d4:	37 
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    19d5:	83 ca 04             	or     $0x4,%edx
	pcihdr->cap = OFFS_PCI_PM_CAP;
    19d8:	c6 40 34 40          	movb   $0x40,0x34(%rax)
	pcihdr->mlbar.tp = PCI_BASE_ADDRESS_MEM_TYPE_64 >> 1;
    19dc:	09 f2                	or     %esi,%edx
    19de:	89 50 10             	mov    %edx,0x10(%rax)
	pcihdr->intr.iline = 0;
    19e1:	0f b7 15 00 00 00 00 	movzwl 0x0(%rip),%edx        # 19e8 <NVMEV_PCI_INIT+0x88>
    19e8:	66 89 50 3c          	mov    %dx,0x3c(%rax)
	PCI_PMCAP_SETTINGS(nvmev_vdev->pmcap);
    19ec:	48 8b 57 18          	mov    0x18(%rdi),%rdx
	pmcap->pid.cid = PCI_CAP_ID_PM;
    19f0:	8b 02                	mov    (%rdx),%eax
    19f2:	25 00 00 f8 ff       	and    $0xfff80000,%eax
    19f7:	0d 01 50 03 00       	or     $0x35001,%eax
    19fc:	89 02                	mov    %eax,(%rdx)
	pmcap->pmcs.ps = PCI_PM_CAP_PME_D0 >> 16;
    19fe:	0f b6 42 04          	movzbl 0x4(%rdx),%eax
    1a02:	83 e0 f4             	and    $0xfffffff4,%eax
    1a05:	83 c8 08             	or     $0x8,%eax
    1a08:	88 42 04             	mov    %al,0x4(%rdx)
	PCI_MSIXCAP_SETTINGS(nvmev_vdev->msixcap);
    1a0b:	48 8b 57 20          	mov    0x20(%rdi),%rdx
	msixcap->mxid.cid = PCI_CAP_ID_MSIX;
    1a0f:	48 8b 02             	mov    (%rdx),%rax
	msixcap->mpba.pbir = 0;
    1a12:	c7 42 08 00 80 00 00 	movl   $0x8000,0x8(%rdx)
	msixcap->mxid.cid = PCI_CAP_ID_MSIX;
    1a19:	25 00 00 00 78       	and    $0x78000000,%eax
    1a1e:	48 09 c8             	or     %rcx,%rax
	pciecap->pxid.cid = PCI_CAP_ID_EXP;
    1a21:	48 b9 10 00 02 00 a1 	movabs $0x100085a100020010,%rcx
    1a28:	85 00 10 
	msixcap->mxid.cid = PCI_CAP_ID_MSIX;
    1a2b:	48 89 02             	mov    %rax,(%rdx)
	PCI_PCIECAP_SETTINGS(nvmev_vdev->pciecap);
    1a2e:	48 8b 57 28          	mov    0x28(%rdi),%rdx
	pciecap->pxid.cid = PCI_CAP_ID_EXP;
    1a32:	48 b8 00 00 00 c1 00 	movabs $0xe0037000c1000000,%rax
    1a39:	70 03 e0 
    1a3c:	48 23 02             	and    (%rdx),%rax
    1a3f:	48 09 c8             	or     %rcx,%rax
    1a42:	48 89 02             	mov    %rax,(%rdx)
	PCI_AERCAP_SETTINGS(nvmev_vdev->aercap);
    1a45:	48 8b 47 30          	mov    0x30(%rdi),%rax
	aercap->aerid.cid = PCI_EXT_CAP_ID_ERR;
    1a49:	c7 00 01 00 01 15    	movl   $0x15010001,(%rax)
	memset(&nvmev_vdev->pci_ops, 0, sizeof(nvmev_vdev->pci_ops));
    1a4f:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1a56 <NVMEV_PCI_INIT+0xf6>
	PCI_PCIE_EXTCAP_SETTINGS(nvmev_vdev->pcie_exp_cap);
    1a56:	48 8b 47 38          	mov    0x38(%rdi),%rax
	nvmev_pci_bus = pci_scan_bus(NVMEV_PCI_BUS_NUM, &nvmev_vdev->pci_ops, &nvmev_vdev->pci_sd);
    1a5a:	bf 10 00 00 00       	mov    $0x10,%edi
	memset(&nvmev_vdev->pci_ops, 0, sizeof(nvmev_vdev->pci_ops));
    1a5f:	48 8d 72 48          	lea    0x48(%rdx),%rsi
	memset(&nvmev_vdev->pci_sd, 0, sizeof(nvmev_vdev->pci_sd));
    1a63:	48 83 c2 70          	add    $0x70,%rdx
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_VC;
    1a67:	c7 80 40 01 00 00 02 	movl   $0x18010002,0x140(%rax)
    1a6e:	00 01 18 
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_PWR;
    1a71:	c7 80 00 02 00 00 04 	movl   $0x19010004,0x200(%rax)
    1a78:	00 01 19 
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_ARI;
    1a7b:	c7 80 40 02 00 00 0e 	movl   $0x2701000e,0x240(%rax)
    1a82:	00 01 27 
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_DSN;
    1a85:	c7 80 c0 05 00 00 03 	movl   $0x2a010003,0x5c0(%rax)
    1a8c:	00 01 2a 
	pcie_exp_cap->id.cid = PCI_EXT_CAP_ID_SECPCI;
    1a8f:	c7 80 80 06 00 00 19 	movl   $0x10019,0x680(%rax)
    1a96:	00 01 00 
    1a99:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
	memset(&nvmev_vdev->pci_ops, 0, sizeof(nvmev_vdev->pci_ops));
    1aa0:	48 c7 42 d8 00 00 00 	movq   $0x0,-0x28(%rdx)
    1aa7:	00 
    1aa8:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
    1aaf:	00 
    1ab0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
    1ab7:	00 
    1ab8:	48 63 4a 50          	movslq 0x50(%rdx),%rcx
	memset(&nvmev_vdev->pci_sd, 0, sizeof(nvmev_vdev->pci_sd));
    1abc:	48 c7 42 04 00 00 00 	movq   $0x0,0x4(%rdx)
    1ac3:	00 
	nvmev_vdev->pci_ops.read = nvmev_pci_read;
    1ac4:	48 c7 42 f0 00 00 00 	movq   $0x0,-0x10(%rdx)
    1acb:	00 
	nvmev_vdev->pci_ops.write = nvmev_pci_write;
    1acc:	48 c7 42 f8 00 00 00 	movq   $0x0,-0x8(%rdx)
    1ad3:	00 
	memset(&nvmev_vdev->pci_sd, 0, sizeof(nvmev_vdev->pci_sd));
    1ad4:	48 c7 42 0c 00 00 00 	movq   $0x0,0xc(%rdx)
    1adb:	00 
    1adc:	48 c7 42 14 00 00 00 	movq   $0x0,0x14(%rdx)
    1ae3:	00 
    1ae4:	48 c7 42 1c 00 00 00 	movq   $0x0,0x1c(%rdx)
    1aeb:	00 
    1aec:	c7 42 24 00 00 00 00 	movl   $0x0,0x24(%rdx)
	nvmev_vdev->pci_sd.domain = NVMEV_PCI_DOMAIN_NUM;
    1af3:	c7 02 01 00 00 00    	movl   $0x1,(%rdx)
    1af9:	48 8b 0c cd 00 00 00 	mov    0x0(,%rcx,8),%rcx
    1b00:	00 
    1b01:	8b 04 01             	mov    (%rcx,%rax,1),%eax
	nvmev_vdev->pci_sd.node =
    1b04:	89 42 04             	mov    %eax,0x4(%rdx)
	nvmev_pci_bus = pci_scan_bus(NVMEV_PCI_BUS_NUM, &nvmev_vdev->pci_ops, &nvmev_vdev->pci_sd);
    1b07:	e8 00 00 00 00       	call   1b0c <NVMEV_PCI_INIT+0x1ac>
    1b0c:	49 89 c4             	mov    %rax,%r12
	if (!nvmev_pci_bus) {
    1b0f:	48 85 c0             	test   %rax,%rax
    1b12:	0f 84 5b 02 00 00    	je     1d73 <NVMEV_PCI_INIT+0x413>
	list_for_each_entry(dev, &nvmev_pci_bus->devices, bus_list) {
    1b18:	4c 8b 70 28          	mov    0x28(%rax),%r14
    1b1c:	4c 8d 68 28          	lea    0x28(%rax),%r13
    1b20:	4d 39 ee             	cmp    %r13,%r14
    1b23:	0f 84 0a 02 00 00    	je     1d33 <NVMEV_PCI_INIT+0x3d3>
		nvmev_vdev->pdev = dev;
    1b29:	4c 8b 3d 00 00 00 00 	mov    0x0(%rip),%r15        # 1b30 <NVMEV_PCI_INIT+0x1d0>
		memset(nvmev_vdev->bar, 0x0, PAGE_SIZE * 2);
    1b30:	31 ed                	xor    %ebp,%ebp
		res->parent = &iomem_resource;
    1b32:	49 c7 86 f0 03 00 00 	movq   $0x0,0x3f0(%r14)
    1b39:	00 00 00 00 
		nvmev_vdev->bar = memremap(pci_resource_start(dev, 0), PAGE_SIZE * 2, MEMREMAP_WT);
    1b3d:	ba 02 00 00 00       	mov    $0x2,%edx
    1b42:	be 00 20 00 00       	mov    $0x2000,%esi
		nvmev_vdev->pdev = dev;
    1b47:	4d 89 77 40          	mov    %r14,0x40(%r15)
		nvmev_vdev->bar = memremap(pci_resource_start(dev, 0), PAGE_SIZE * 2, MEMREMAP_WT);
    1b4b:	49 8b be c8 03 00 00 	mov    0x3c8(%r14),%rdi
    1b52:	e8 00 00 00 00       	call   1b57 <NVMEV_PCI_INIT+0x1f7>
		memset(nvmev_vdev->bar, 0x0, PAGE_SIZE * 2);
    1b57:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1b5e <NVMEV_PCI_INIT+0x1fe>
		nvmev_vdev->bar->cap.mqes = 1024 - 1; // 0-based value
    1b5e:	be ff 03 00 00       	mov    $0x3ff,%esi
		nvmev_vdev->bar = memremap(pci_resource_start(dev, 0), PAGE_SIZE * 2, MEMREMAP_WT);
    1b63:	49 89 87 90 01 00 00 	mov    %rax,0x190(%r15)
		memset(nvmev_vdev->bar, 0x0, PAGE_SIZE * 2);
    1b6a:	48 89 e8             	mov    %rbp,%rax
    1b6d:	48 8b 8a 90 01 00 00 	mov    0x190(%rdx),%rcx
    1b74:	48 8d 79 08          	lea    0x8(%rcx),%rdi
    1b78:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
    1b7f:	48 c7 81 f8 1f 00 00 	movq   $0x0,0x1ff8(%rcx)
    1b86:	00 00 00 00 
    1b8a:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    1b8e:	48 29 f9             	sub    %rdi,%rcx
    1b91:	81 c1 00 20 00 00    	add    $0x2000,%ecx
    1b97:	c1 e9 03             	shr    $0x3,%ecx
    1b9a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
		nvmev_vdev->dbs = ((void *)nvmev_vdev->bar) + PAGE_SIZE;
    1b9d:	48 8b 82 90 01 00 00 	mov    0x190(%rdx),%rax
    1ba4:	48 8d 88 00 10 00 00 	lea    0x1000(%rax),%rcx
    1bab:	48 89 8a a0 01 00 00 	mov    %rcx,0x1a0(%rdx)
		nvmev_vdev->bar->vs.mjr = 1;
    1bb2:	b9 01 00 00 00       	mov    $0x1,%ecx
    1bb7:	66 89 48 0a          	mov    %cx,0xa(%rax)
		nvmev_vdev->bar->vs.mnr = 0;
    1bbb:	48 8b 82 90 01 00 00 	mov    0x190(%rdx),%rax
    1bc2:	c6 40 09 00          	movb   $0x0,0x9(%rax)
		nvmev_vdev->bar->cap.mpsmin = 0;
    1bc6:	48 8b 82 90 01 00 00 	mov    0x190(%rdx),%rax
    1bcd:	80 60 06 f0          	andb   $0xf0,0x6(%rax)
		nvmev_vdev->bar->cap.mqes = 1024 - 1; // 0-based value
    1bd1:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1bd8 <NVMEV_PCI_INIT+0x278>
    1bd8:	48 8b 80 90 01 00 00 	mov    0x190(%rax),%rax
    1bdf:	66 89 30             	mov    %si,(%rax)
		nvmev_vdev->bar->cap.css = CAP_CSS_BIT_SPECIFIC;
    1be2:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1be9 <NVMEV_PCI_INIT+0x289>
    1be9:	be c0 0d 00 00       	mov    $0xdc0,%esi
    1bee:	48 8b 90 90 01 00 00 	mov    0x190(%rax),%rdx
    1bf5:	0f b7 42 04          	movzwl 0x4(%rdx),%eax
    1bf9:	66 25 1f e0          	and    $0xe01f,%ax
    1bfd:	80 cc 08             	or     $0x8,%ah
    1c00:	66 89 42 04          	mov    %ax,0x4(%rdx)
    1c04:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1c0b <NVMEV_PCI_INIT+0x2ab>
    1c0b:	ba 00 10 00 00       	mov    $0x1000,%edx
		nvmev_vdev->old_dbs = kzalloc(PAGE_SIZE, GFP_KERNEL);
    1c10:	4c 8b 3d 00 00 00 00 	mov    0x0(%rip),%r15        # 1c17 <NVMEV_PCI_INIT+0x2b7>
    1c17:	e8 00 00 00 00       	call   1c1c <NVMEV_PCI_INIT+0x2bc>
		BUG_ON(!nvmev_vdev->old_dbs && "allocating old DBs memory");
    1c1c:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1c23 <NVMEV_PCI_INIT+0x2c3>
		nvmev_vdev->old_dbs = kzalloc(PAGE_SIZE, GFP_KERNEL);
    1c23:	49 89 87 98 01 00 00 	mov    %rax,0x198(%r15)
		BUG_ON(!nvmev_vdev->old_dbs && "allocating old DBs memory");
    1c2a:	48 8b 82 98 01 00 00 	mov    0x198(%rdx),%rax
    1c31:	48 85 c0             	test   %rax,%rax
    1c34:	0f 84 35 01 00 00    	je     1d6f <NVMEV_PCI_INIT+0x40f>
		memcpy(nvmev_vdev->old_dbs, nvmev_vdev->dbs, sizeof(*nvmev_vdev->old_dbs));
    1c3a:	48 8b 92 a0 01 00 00 	mov    0x1a0(%rdx),%rdx
    1c41:	be c0 0d 00 00       	mov    $0xdc0,%esi
    1c46:	8b 12                	mov    (%rdx),%edx
    1c48:	89 10                	mov    %edx,(%rax)
    1c4a:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1c51 <NVMEV_PCI_INIT+0x2f1>
    1c51:	ba 00 10 00 00       	mov    $0x1000,%edx
		nvmev_vdev->old_bar = kzalloc(PAGE_SIZE, GFP_KERNEL);
    1c56:	4c 8b 3d 00 00 00 00 	mov    0x0(%rip),%r15        # 1c5d <NVMEV_PCI_INIT+0x2fd>
    1c5d:	e8 00 00 00 00       	call   1c62 <NVMEV_PCI_INIT+0x302>
    1c62:	49 89 87 88 01 00 00 	mov    %rax,0x188(%r15)
		BUG_ON(!nvmev_vdev->old_bar && "allocating old BAR memory");
    1c69:	4c 8b 3d 00 00 00 00 	mov    0x0(%rip),%r15        # 1c70 <NVMEV_PCI_INIT+0x310>
    1c70:	49 8b 87 88 01 00 00 	mov    0x188(%r15),%rax
    1c77:	48 85 c0             	test   %rax,%rax
    1c7a:	0f 84 f1 00 00 00    	je     1d71 <NVMEV_PCI_INIT+0x411>
		memcpy(nvmev_vdev->old_bar, nvmev_vdev->bar, sizeof(*nvmev_vdev->old_bar));
    1c80:	49 8b 97 90 01 00 00 	mov    0x190(%r15),%rdx
			memremap(pci_resource_start(nvmev_vdev->pdev, 0) + PAGE_SIZE * 2,
    1c87:	be 80 04 00 00       	mov    $0x480,%esi
		memcpy(nvmev_vdev->old_bar, nvmev_vdev->bar, sizeof(*nvmev_vdev->old_bar));
    1c8c:	48 8b 0a             	mov    (%rdx),%rcx
    1c8f:	48 89 08             	mov    %rcx,(%rax)
    1c92:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
    1c96:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1c9a:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
    1c9e:	48 89 48 10          	mov    %rcx,0x10(%rax)
    1ca2:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
    1ca6:	48 89 48 18          	mov    %rcx,0x18(%rax)
    1caa:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
    1cae:	48 89 48 20          	mov    %rcx,0x20(%rax)
    1cb2:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
    1cb6:	48 89 48 28          	mov    %rcx,0x28(%rax)
    1cba:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
    1cbe:	48 89 48 30          	mov    %rcx,0x30(%rax)
    1cc2:	48 8b 52 38          	mov    0x38(%rdx),%rdx
    1cc6:	48 89 50 38          	mov    %rdx,0x38(%rax)
			memremap(pci_resource_start(nvmev_vdev->pdev, 0) + PAGE_SIZE * 2,
    1cca:	49 8b 47 40          	mov    0x40(%r15),%rax
    1cce:	ba 02 00 00 00       	mov    $0x2,%edx
    1cd3:	48 8b b8 c8 03 00 00 	mov    0x3c8(%rax),%rdi
    1cda:	48 81 c7 00 20 00 00 	add    $0x2000,%rdi
    1ce1:	e8 00 00 00 00       	call   1ce6 <NVMEV_PCI_INIT+0x386>
		nvmev_vdev->msix_table =
    1ce6:	49 89 87 80 01 00 00 	mov    %rax,0x180(%r15)
		memset(nvmev_vdev->msix_table, 0x00, NR_MAX_IO_QUEUE * PCI_MSIX_ENTRY_SIZE);
    1ced:	4c 8b 3d 00 00 00 00 	mov    0x0(%rip),%r15        # 1cf4 <NVMEV_PCI_INIT+0x394>
    1cf4:	48 89 e8             	mov    %rbp,%rax
    1cf7:	49 8b 8f 80 01 00 00 	mov    0x180(%r15),%rcx
    1cfe:	48 8d 79 08          	lea    0x8(%rcx),%rdi
    1d02:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
    1d09:	48 c7 81 78 04 00 00 	movq   $0x0,0x478(%rcx)
    1d10:	00 00 00 00 
    1d14:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    1d18:	48 29 f9             	sub    %rdi,%rcx
    1d1b:	81 c1 80 04 00 00    	add    $0x480,%ecx
    1d21:	c1 e9 03             	shr    $0x3,%ecx
    1d24:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	list_for_each_entry(dev, &nvmev_pci_bus->devices, bus_list) {
    1d27:	4d 8b 36             	mov    (%r14),%r14
    1d2a:	4d 39 f5             	cmp    %r14,%r13
    1d2d:	0f 85 ff fd ff ff    	jne    1b32 <NVMEV_PCI_INIT+0x1d2>
	pci_bus_add_devices(nvmev_pci_bus);
    1d33:	4c 89 e7             	mov    %r12,%rdi
    1d36:	e8 00 00 00 00       	call   1d3b <NVMEV_PCI_INIT+0x3db>
	NVMEV_INFO("Successfully created virtual PCI bus (node %d)\n", nvmev_vdev->pci_sd.node);
    1d3b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1d42 <NVMEV_PCI_INIT+0x3e2>
    1d42:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    1d49:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    1d50:	8b 50 74             	mov    0x74(%rax),%edx
    1d53:	e8 00 00 00 00       	call   1d58 <NVMEV_PCI_INIT+0x3f8>

	nvmev_vdev->virt_bus = __create_pci_bus();
	if (!nvmev_vdev->virt_bus)
		return false;

	return true;
    1d58:	b8 01 00 00 00       	mov    $0x1,%eax
	nvmev_vdev->virt_bus = __create_pci_bus();
    1d5d:	4c 89 23             	mov    %r12,(%rbx)
}
    1d60:	5b                   	pop    %rbx
    1d61:	5d                   	pop    %rbp
    1d62:	41 5c                	pop    %r12
    1d64:	41 5d                	pop    %r13
    1d66:	41 5e                	pop    %r14
    1d68:	41 5f                	pop    %r15
    1d6a:	e9 00 00 00 00       	jmp    1d6f <NVMEV_PCI_INIT+0x40f>
		BUG_ON(!nvmev_vdev->old_dbs && "allocating old DBs memory");
    1d6f:	0f 0b                	ud2
		BUG_ON(!nvmev_vdev->old_bar && "allocating old BAR memory");
    1d71:	0f 0b                	ud2
		NVMEV_ERROR("Unable to create PCI bus\n");
    1d73:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    1d7a:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    1d81:	e8 00 00 00 00       	call   1d86 <NVMEV_PCI_INIT+0x426>
		return false;
    1d86:	31 c0                	xor    %eax,%eax
    1d88:	eb d3                	jmp    1d5d <NVMEV_PCI_INIT+0x3fd>
    1d8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001d90 <__pfx_nvmev_proc_admin_sq>:
    1d90:	90                   	nop
    1d91:	90                   	nop
    1d92:	90                   	nop
    1d93:	90                   	nop
    1d94:	90                   	nop
    1d95:	90                   	nop
    1d96:	90                   	nop
    1d97:	90                   	nop
    1d98:	90                   	nop
    1d99:	90                   	nop
    1d9a:	90                   	nop
    1d9b:	90                   	nop
    1d9c:	90                   	nop
    1d9d:	90                   	nop
    1d9e:	90                   	nop
    1d9f:	90                   	nop

0000000000001da0 <nvmev_proc_admin_sq>:

	queue->cq_head = cq_head;
}

void nvmev_proc_admin_sq(int new_db, int old_db)
{
    1da0:	f3 0f 1e fa          	endbr64
    1da4:	e8 00 00 00 00       	call   1da9 <nvmev_proc_admin_sq+0x9>
    1da9:	41 57                	push   %r15
	struct nvmev_admin_queue *queue = nvmev_vdev->admin_q;
	int num_proc = new_db - old_db;
	int curr = old_db;
	int seq;

	if (num_proc < 0)
    1dab:	89 f8                	mov    %edi,%eax
{
    1dad:	41 56                	push   %r14
    1daf:	41 55                	push   %r13
    1db1:	41 89 f5             	mov    %esi,%r13d
    1db4:	41 54                	push   %r12
    1db6:	55                   	push   %rbp
    1db7:	53                   	push   %rbx
    1db8:	48 83 ec 28          	sub    $0x28,%rsp
	struct nvmev_admin_queue *queue = nvmev_vdev->admin_q;
    1dbc:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1dc3 <nvmev_proc_admin_sq+0x23>
	if (num_proc < 0)
    1dc3:	44 29 e8             	sub    %r13d,%eax
    1dc6:	89 44 24 04          	mov    %eax,0x4(%rsp)
	struct nvmev_admin_queue *queue = nvmev_vdev->admin_q;
    1dca:	48 8b 9e c0 01 00 00 	mov    0x1c0(%rsi),%rbx
    1dd1:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
	if (num_proc < 0)
    1dd6:	79 09                	jns    1de1 <nvmev_proc_admin_sq+0x41>
		num_proc += queue->sq_depth;
    1dd8:	8b 7b 04             	mov    0x4(%rbx),%edi
    1ddb:	01 f8                	add    %edi,%eax
    1ddd:	89 44 24 04          	mov    %eax,0x4(%rsp)

	for (seq = 0; seq < num_proc; seq++) {
    1de1:	8b 7c 24 04          	mov    0x4(%rsp),%edi
    1de5:	85 ff                	test   %edi,%edi
    1de7:	0f 8e 44 04 00 00    	jle    2231 <nvmev_proc_admin_sq+0x491>
    1ded:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    1df2:	45 31 f6             	xor    %r14d,%r14d
	switch (sq_entry(entry_id).common.opcode) {
    1df5:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1df9:	4d 63 cd             	movslq %r13d,%r9
    1dfc:	45 89 e8             	mov    %r13d,%r8d
	int cq_head = queue->cq_head;
    1dff:	8b 6b 0c             	mov    0xc(%rbx),%ebp
	switch (sq_entry(entry_id).common.opcode) {
    1e02:	49 c1 e9 06          	shr    $0x6,%r9
    1e06:	41 83 e0 3f          	and    $0x3f,%r8d
		__nvmev_proc_admin_req(curr++);
    1e0a:	45 8d 7d 01          	lea    0x1(%r13),%r15d
	switch (sq_entry(entry_id).common.opcode) {
    1e0e:	4e 8b 24 c8          	mov    (%rax,%r9,8),%r12
    1e12:	49 c1 e0 06          	shl    $0x6,%r8
    1e16:	4d 01 c4             	add    %r8,%r12
    1e19:	41 0f b6 14 24       	movzbl (%r12),%edx
    1e1e:	80 fa 05             	cmp    $0x5,%dl
    1e21:	0f 84 1f 04 00 00    	je     2246 <nvmev_proc_admin_sq+0x4a6>
    1e27:	0f 87 2a 01 00 00    	ja     1f57 <nvmev_proc_admin_sq+0x1b7>
    1e2d:	80 fa 02             	cmp    $0x2,%dl
    1e30:	0f 84 e7 05 00 00    	je     241d <nvmev_proc_admin_sq+0x67d>
    1e36:	0f 86 ac 02 00 00    	jbe    20e8 <nvmev_proc_admin_sq+0x348>
    1e3c:	80 fa 04             	cmp    $0x4,%dl
    1e3f:	0f 85 8b 02 00 00    	jne    20d0 <nvmev_proc_admin_sq+0x330>
	cq = nvmev_vdev->cqes[qid];
    1e45:	41 0f b7 44 24 28    	movzwl 0x28(%r12),%eax
    1e4b:	48 05 82 00 00 00    	add    $0x82,%rax
    1e51:	4c 8b 24 c6          	mov    (%rsi,%rax,8),%r12
	nvmev_vdev->cqes[qid] = NULL;
    1e55:	48 c7 04 c6 00 00 00 	movq   $0x0,(%rsi,%rax,8)
    1e5c:	00 
	if (cq) {
    1e5d:	4d 85 e4             	test   %r12,%r12
    1e60:	74 54                	je     1eb6 <nvmev_proc_admin_sq+0x116>
    1e62:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
		kfree(cq->cq);
    1e67:	49 8b 7c 24 28       	mov    0x28(%r12),%rdi
    1e6c:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    1e71:	eb 2c                	jmp    1e9f <nvmev_proc_admin_sq+0xff>
	sq = nvmev_vdev->sqes[qid];
    1e73:	41 0f b7 44 24 28    	movzwl 0x28(%r12),%eax
    1e79:	48 83 c0 38          	add    $0x38,%rax
    1e7d:	4c 8b 64 c6 08       	mov    0x8(%rsi,%rax,8),%r12
	nvmev_vdev->sqes[qid] = NULL;
    1e82:	48 c7 44 c6 08 00 00 	movq   $0x0,0x8(%rsi,%rax,8)
    1e89:	00 00 
	if (sq) {
    1e8b:	4d 85 e4             	test   %r12,%r12
    1e8e:	74 26                	je     1eb6 <nvmev_proc_admin_sq+0x116>
    1e90:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
		kfree(sq->sq);
    1e95:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
    1e9a:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
		kfree(cq->cq);
    1e9f:	e8 00 00 00 00       	call   1ea4 <nvmev_proc_admin_sq+0x104>
		kfree(cq);
    1ea4:	4c 89 e7             	mov    %r12,%rdi
    1ea7:	e8 00 00 00 00       	call   1eac <nvmev_proc_admin_sq+0x10c>
    1eac:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    1eb1:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
	cq_entry(cq_head).command_id = sq_entry(eid).features.command_id;
    1eb6:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    1eba:	48 63 d5             	movslq %ebp,%rdx
    1ebd:	40 0f b6 c5          	movzbl %bpl,%eax
    1ec1:	48 c1 ea 08          	shr    $0x8,%rdx
    1ec5:	48 c1 e0 04          	shl    $0x4,%rax
    1ec9:	4a 8b 0c c9          	mov    (%rcx,%r9,8),%rcx
    1ecd:	42 0f b7 74 01 02    	movzwl 0x2(%rcx,%r8,1),%esi
	cq_entry(cq_head).command_id = cmd->command_id;
    1ed3:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1ed7:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1edb:	66 89 74 01 0c       	mov    %si,0xc(%rcx,%rax,1)
	cq_entry(cq_head).sq_id = 0;
    1ee0:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1ee4:	31 f6                	xor    %esi,%esi
    1ee6:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1eea:	66 89 74 01 0a       	mov    %si,0xa(%rcx,%rax,1)
	cq_entry(cq_head).sq_head = eid;
    1eef:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1ef3:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1ef7:	66 44 89 6c 01 08    	mov    %r13w,0x8(%rcx,%rax,1)
	cq_entry(cq_head).status = queue->phase | NVME_SC_SUCCESS << 1;
    1efd:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1f01:	48 8b 14 d1          	mov    (%rcx,%rdx,8),%rdx
    1f05:	8b 0b                	mov    (%rbx),%ecx
    1f07:	66 89 4c 02 0e       	mov    %cx,0xe(%rdx,%rax,1)
	if (++cq_head == queue->cq_depth) {
    1f0c:	83 c5 01             	add    $0x1,%ebp
    1f0f:	3b 6b 08             	cmp    0x8(%rbx),%ebp
    1f12:	75 0d                	jne    1f21 <nvmev_proc_admin_sq+0x181>
		queue->phase = !queue->phase;
    1f14:	8b 13                	mov    (%rbx),%edx
    1f16:	31 c0                	xor    %eax,%eax
    1f18:	85 d2                	test   %edx,%edx
    1f1a:	0f 94 c0             	sete   %al
		cq_head = 0;
    1f1d:	31 ed                	xor    %ebp,%ebp
		queue->phase = !queue->phase;
    1f1f:	89 03                	mov    %eax,(%rbx)

		if (curr == queue->sq_depth) {
    1f21:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
	queue->cq_head = cq_head;
    1f26:	89 6b 0c             	mov    %ebp,0xc(%rbx)
		if (curr == queue->sq_depth) {
    1f29:	44 39 78 04          	cmp    %r15d,0x4(%rax)
    1f2d:	75 03                	jne    1f32 <nvmev_proc_admin_sq+0x192>
			curr = 0;
    1f2f:	45 31 ff             	xor    %r15d,%r15d
	for (seq = 0; seq < num_proc; seq++) {
    1f32:	41 83 c6 01          	add    $0x1,%r14d
    1f36:	44 39 74 24 04       	cmp    %r14d,0x4(%rsp)
    1f3b:	0f 84 f0 02 00 00    	je     2231 <nvmev_proc_admin_sq+0x491>
	struct nvmev_admin_queue *queue = nvmev_vdev->admin_q;
    1f41:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1f48 <nvmev_proc_admin_sq+0x1a8>
    1f48:	45 89 fd             	mov    %r15d,%r13d
    1f4b:	48 8b 9e c0 01 00 00 	mov    0x1c0(%rsi),%rbx
    1f52:	e9 9e fe ff ff       	jmp    1df5 <nvmev_proc_admin_sq+0x55>
	switch (sq_entry(entry_id).common.opcode) {
    1f57:	80 fa 09             	cmp    $0x9,%dl
    1f5a:	0f 84 3f 04 00 00    	je     239f <nvmev_proc_admin_sq+0x5ff>
    1f60:	76 76                	jbe    1fd8 <nvmev_proc_admin_sq+0x238>
    1f62:	80 fa 0a             	cmp    $0xa,%dl
    1f65:	74 a5                	je     1f0c <nvmev_proc_admin_sq+0x16c>
    1f67:	80 fa 0c             	cmp    $0xc,%dl
    1f6a:	0f 85 60 01 00 00    	jne    20d0 <nvmev_proc_admin_sq+0x330>
		cq_entry(cq_head).command_id = sq_entry(entry_id).features.command_id;
    1f70:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1f74:	48 63 d5             	movslq %ebp,%rdx
    1f77:	41 0f b7 74 24 02    	movzwl 0x2(%r12),%esi
    1f7d:	40 0f b6 c5          	movzbl %bpl,%eax
    1f81:	48 c1 ea 08          	shr    $0x8,%rdx
    1f85:	48 c1 e0 04          	shl    $0x4,%rax
    1f89:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1f8d:	66 89 74 01 0c       	mov    %si,0xc(%rcx,%rax,1)
		cq_entry(cq_head).sq_id = 0;
    1f92:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1f96:	31 f6                	xor    %esi,%esi
    1f98:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1f9c:	66 89 74 01 0a       	mov    %si,0xa(%rcx,%rax,1)
		cq_entry(cq_head).sq_head = entry_id;
    1fa1:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1fa5:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1fa9:	66 44 89 6c 01 08    	mov    %r13w,0x8(%rcx,%rax,1)
		cq_entry(cq_head).result0 = 0;
    1faf:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1fb3:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1fb7:	c7 04 01 00 00 00 00 	movl   $0x0,(%rcx,%rax,1)
		cq_entry(cq_head).status = queue->phase | NVME_SC_ASYNC_LIMIT << 1;
    1fbe:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    1fc2:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
    1fc6:	0f b7 13             	movzwl (%rbx),%edx
    1fc9:	66 81 ca 0a 02       	or     $0x20a,%dx
    1fce:	66 89 54 01 0e       	mov    %dx,0xe(%rcx,%rax,1)
		break;
    1fd3:	e9 34 ff ff ff       	jmp    1f0c <nvmev_proc_admin_sq+0x16c>
	switch (sq_entry(entry_id).common.opcode) {
    1fd8:	80 fa 06             	cmp    $0x6,%dl
    1fdb:	0f 85 e6 00 00 00    	jne    20c7 <nvmev_proc_admin_sq+0x327>
		cns = sq_entry(entry_id).identify.cns;
    1fe1:	41 8b 54 24 28       	mov    0x28(%r12),%edx
		switch (cns) {
    1fe6:	83 fa 03             	cmp    $0x3,%edx
    1fe9:	0f 84 03 08 00 00    	je     27f2 <nvmev_proc_admin_sq+0xa52>
    1fef:	0f 87 97 00 00 00    	ja     208c <nvmev_proc_admin_sq+0x2ec>
    1ff5:	83 fa 01             	cmp    $0x1,%edx
    1ff8:	0f 84 cc 06 00 00    	je     26ca <nvmev_proc_admin_sq+0x92a>
    1ffe:	83 fa 02             	cmp    $0x2,%edx
    2001:	0f 85 e3 05 00 00    	jne    25ea <nvmev_proc_admin_sq+0x84a>
	ns = prp_address(cmd->prp1);
    2007:	49 8b 44 24 18       	mov    0x18(%r12),%rax
    200c:	48 89 c2             	mov    %rax,%rdx
    200f:	25 ff 0f 00 00       	and    $0xfff,%eax
    2014:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    201b:	48 03 15 00 00 00 00 	add    0x0(%rip),%rdx        # 2022 <nvmev_proc_admin_sq+0x282>
    2022:	48 01 c2             	add    %rax,%rdx
	memset(ns, 0x00, PAGE_SIZE * 2);
    2025:	31 c0                	xor    %eax,%eax
    2027:	48 8d 7a 08          	lea    0x8(%rdx),%rdi
    202b:	48 89 d1             	mov    %rdx,%rcx
    202e:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
    2035:	48 c7 82 f8 1f 00 00 	movq   $0x0,0x1ff8(%rdx)
    203c:	00 00 00 00 
    2040:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2044:	48 29 f9             	sub    %rdi,%rcx
    2047:	81 c1 00 20 00 00    	add    $0x2000,%ecx
    204d:	c1 e9 03             	shr    $0x3,%ecx
    2050:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	for (i = 1; i <= nvmev_vdev->nr_ns; i++) {
    2053:	b8 01 00 00 00       	mov    $0x1,%eax
    2058:	44 8b 9e b0 01 00 00 	mov    0x1b0(%rsi),%r11d
    205f:	45 85 db             	test   %r11d,%r11d
    2062:	0f 84 4e fe ff ff    	je     1eb6 <nvmev_proc_admin_sq+0x116>
		if (i > cmd->nsid) {
    2068:	41 39 44 24 04       	cmp    %eax,0x4(%r12)
    206d:	73 06                	jae    2075 <nvmev_proc_admin_sq+0x2d5>
			*ns = i;
    206f:	89 02                	mov    %eax,(%rdx)
			ns++;
    2071:	48 83 c2 04          	add    $0x4,%rdx
	for (i = 1; i <= nvmev_vdev->nr_ns; i++) {
    2075:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 207c <nvmev_proc_admin_sq+0x2dc>
    207c:	83 c0 01             	add    $0x1,%eax
    207f:	39 81 b0 01 00 00    	cmp    %eax,0x1b0(%rcx)
    2085:	73 e1                	jae    2068 <nvmev_proc_admin_sq+0x2c8>
    2087:	e9 2a fe ff ff       	jmp    1eb6 <nvmev_proc_admin_sq+0x116>
    208c:	83 fa 05             	cmp    $0x5,%edx
    208f:	0f 84 95 04 00 00    	je     252a <nvmev_proc_admin_sq+0x78a>
    2095:	83 fa 06             	cmp    $0x6,%edx
    2098:	0f 85 3c 07 00 00    	jne    27da <nvmev_proc_admin_sq+0xa3a>
	res->zasl = 0; // currently not support zone append command
    209e:	49 8b 44 24 18       	mov    0x18(%r12),%rax
    20a3:	48 03 05 00 00 00 00 	add    0x0(%rip),%rax        # 20aa <nvmev_proc_admin_sq+0x30a>
    20aa:	c6 00 00             	movb   $0x0,(%rax)
	cq_entry(cq_head).command_id = cmd->command_id;
    20ad:	48 63 d5             	movslq %ebp,%rdx
    20b0:	40 0f b6 c5          	movzbl %bpl,%eax
    20b4:	48 c1 ea 08          	shr    $0x8,%rdx
    20b8:	48 c1 e0 04          	shl    $0x4,%rax
    20bc:	41 0f b7 74 24 02    	movzwl 0x2(%r12),%esi
    20c2:	e9 0c fe ff ff       	jmp    1ed3 <nvmev_proc_admin_sq+0x133>
	switch (sq_entry(entry_id).common.opcode) {
    20c7:	80 fa 08             	cmp    $0x8,%dl
    20ca:	0f 84 3c fe ff ff    	je     1f0c <nvmev_proc_admin_sq+0x16c>
		NVMEV_ERROR("Unhandled admin requests: %d", sq_entry(entry_id).common.opcode);
    20d0:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    20d7:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    20de:	e8 00 00 00 00       	call   20e3 <nvmev_proc_admin_sq+0x343>
		break;
    20e3:	e9 24 fe ff ff       	jmp    1f0c <nvmev_proc_admin_sq+0x16c>
	switch (sq_entry(entry_id).common.opcode) {
    20e8:	84 d2                	test   %dl,%dl
    20ea:	0f 84 83 fd ff ff    	je     1e73 <nvmev_proc_admin_sq+0xd3>
    20f0:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 20f7 <nvmev_proc_admin_sq+0x357>
    20f7:	ba 38 00 00 00       	mov    $0x38,%edx
    20fc:	be c0 0d 00 00       	mov    $0xdc0,%esi
    2101:	e8 00 00 00 00       	call   2106 <nvmev_proc_admin_sq+0x366>
    2106:	48 89 c2             	mov    %rax,%rdx
	sq->qid = cmd->sqid;
    2109:	41 0f b7 44 24 28    	movzwl 0x28(%r12),%eax
    210f:	89 02                	mov    %eax,(%rdx)
	sq->cqid = cmd->cqid;
    2111:	41 0f b7 44 24 2e    	movzwl 0x2e(%r12),%eax
    2117:	89 42 04             	mov    %eax,0x4(%rdx)
	sq->sq_priority = cmd->sq_flags & 0xFFFE;
    211a:	41 0f b7 44 24 2c    	movzwl 0x2c(%r12),%eax
    2120:	25 fe ff 00 00       	and    $0xfffe,%eax
    2125:	89 42 08             	mov    %eax,0x8(%rdx)
	sq->queue_size = cmd->qsize + 1;
    2128:	41 0f b7 44 24 2a    	movzwl 0x2a(%r12),%eax
    212e:	8d 48 01             	lea    0x1(%rax),%ecx
    2131:	89 4a 10             	mov    %ecx,0x10(%rdx)
	sq->phys_contig = (cmd->sq_flags & NVME_QUEUE_PHYS_CONTIG) ? true : false;
    2134:	41 0f b7 4c 24 2c    	movzwl 0x2c(%r12),%ecx
    213a:	88 4a 0c             	mov    %cl,0xc(%rdx)
    213d:	80 62 0c 01          	andb   $0x1,0xc(%rdx)
	WARN_ON(!sq->phys_contig);
    2141:	83 e1 01             	and    $0x1,%ecx
    2144:	0f 84 26 07 00 00    	je     2870 <nvmev_proc_admin_sq+0xad0>
	num_pages = DIV_ROUND_UP(sq->queue_size * sizeof(struct nvme_command), PAGE_SIZE);
    214a:	8d 48 41             	lea    0x41(%rax),%ecx
	return __kmalloc(size, flags);
    214d:	be c0 0d 00 00       	mov    $0xdc0,%esi
    2152:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    2157:	48 63 c9             	movslq %ecx,%rcx
    215a:	48 c1 e1 06          	shl    $0x6,%rcx
    215e:	48 83 e9 01          	sub    $0x1,%rcx
    2162:	48 c1 e9 0c          	shr    $0xc,%rcx
	sq->sq = kzalloc(sizeof(struct nvme_command *) * num_pages, GFP_KERNEL);
    2166:	48 8d 3c cd 00 00 00 	lea    0x0(,%rcx,8),%rdi
    216d:	00 
    216e:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2173:	e8 00 00 00 00       	call   2178 <nvmev_proc_admin_sq+0x3d8>
    2178:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
	for (i = 0; i < num_pages; i++) {
    217d:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    2182:	48 89 c6             	mov    %rax,%rsi
    2185:	4c 8b 0d 00 00 00 00 	mov    0x0(%rip),%r9        # 218c <nvmev_proc_admin_sq+0x3ec>
	sq->sq = kzalloc(sizeof(struct nvme_command *) * num_pages, GFP_KERNEL);
    218c:	48 89 42 30          	mov    %rax,0x30(%rdx)
		sq->sq[i] = prp_address_offset(cmd->prp1, i);
    2190:	49 8b 7c 24 18       	mov    0x18(%r12),%rdi
    2195:	48 89 f8             	mov    %rdi,%rax
    2198:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
    219e:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    21a4:	4c 01 c8             	add    %r9,%rax
    21a7:	48 01 f8             	add    %rdi,%rax
    21aa:	48 89 06             	mov    %rax,(%rsi)
	for (i = 0; i < num_pages; i++) {
    21ad:	83 f9 01             	cmp    $0x1,%ecx
    21b0:	74 3f                	je     21f1 <nvmev_proc_admin_sq+0x451>
    21b2:	be 01 00 00 00       	mov    $0x1,%esi
    21b7:	eb 07                	jmp    21c0 <nvmev_proc_admin_sq+0x420>
    21b9:	4c 8b 0d 00 00 00 00 	mov    0x0(%rip),%r9        # 21c0 <nvmev_proc_admin_sq+0x420>
		sq->sq[i] = prp_address_offset(cmd->prp1, i);
    21c0:	4d 8b 44 24 18       	mov    0x18(%r12),%r8
    21c5:	48 8b 7a 30          	mov    0x30(%rdx),%rdi
    21c9:	4c 89 c0             	mov    %r8,%rax
    21cc:	41 81 e0 ff 0f 00 00 	and    $0xfff,%r8d
    21d3:	48 c1 e8 0c          	shr    $0xc,%rax
    21d7:	48 01 f0             	add    %rsi,%rax
    21da:	48 c1 e0 0c          	shl    $0xc,%rax
    21de:	4c 01 c8             	add    %r9,%rax
    21e1:	4c 01 c0             	add    %r8,%rax
    21e4:	48 89 04 f7          	mov    %rax,(%rdi,%rsi,8)
	for (i = 0; i < num_pages; i++) {
    21e8:	48 83 c6 01          	add    $0x1,%rsi
    21ec:	48 39 f1             	cmp    %rsi,%rcx
    21ef:	75 c8                	jne    21b9 <nvmev_proc_admin_sq+0x419>
	nvmev_vdev->sqes[sq->qid] = sq;
    21f1:	48 63 02             	movslq (%rdx),%rax
    21f4:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 21fb <nvmev_proc_admin_sq+0x45b>
    21fb:	48 89 94 c1 c8 01 00 	mov    %rdx,0x1c8(%rcx,%rax,8)
    2202:	00 
	dbs_idx = sq->qid * 2;
    2203:	8b 02                	mov    (%rdx),%eax
	nvmev_vdev->dbs[dbs_idx] = 0;
    2205:	48 8b 91 a0 01 00 00 	mov    0x1a0(%rcx),%rdx
	dbs_idx = sq->qid * 2;
    220c:	01 c0                	add    %eax,%eax
	nvmev_vdev->dbs[dbs_idx] = 0;
    220e:	48 98                	cltq
    2210:	c7 04 82 00 00 00 00 	movl   $0x0,(%rdx,%rax,4)
	nvmev_vdev->old_dbs[dbs_idx] = 0;
    2217:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 221e <nvmev_proc_admin_sq+0x47e>
    221e:	48 8b 92 98 01 00 00 	mov    0x198(%rdx),%rdx
    2225:	c7 04 82 00 00 00 00 	movl   $0x0,(%rdx,%rax,4)
    222c:	e9 7c fe ff ff       	jmp    20ad <nvmev_proc_admin_sq+0x30d>
		}
	}

	nvmev_signal_irq(0);
}
    2231:	48 83 c4 28          	add    $0x28,%rsp
	nvmev_signal_irq(0);
    2235:	31 ff                	xor    %edi,%edi
}
    2237:	5b                   	pop    %rbx
    2238:	5d                   	pop    %rbp
    2239:	41 5c                	pop    %r12
    223b:	41 5d                	pop    %r13
    223d:	41 5e                	pop    %r14
    223f:	41 5f                	pop    %r15
	nvmev_signal_irq(0);
    2241:	e9 00 00 00 00       	jmp    2246 <nvmev_proc_admin_sq+0x4a6>
		return kmalloc_trace(
    2246:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 224d <nvmev_proc_admin_sq+0x4ad>
    224d:	ba 30 00 00 00       	mov    $0x30,%edx
    2252:	be c0 0d 00 00       	mov    $0xdc0,%esi
    2257:	e8 00 00 00 00       	call   225c <nvmev_proc_admin_sq+0x4bc>
    225c:	48 89 c2             	mov    %rax,%rdx
	cq->qid = cmd->cqid;
    225f:	41 0f b7 44 24 28    	movzwl 0x28(%r12),%eax
    2265:	89 02                	mov    %eax,(%rdx)
	cq->irq_enabled = cmd->cq_flags & NVME_CQ_IRQ_ENABLED ? true : false;
    2267:	41 0f b7 44 24 2c    	movzwl 0x2c(%r12),%eax
    226d:	d1 f8                	sar    %eax
    226f:	83 e0 01             	and    $0x1,%eax
    2272:	88 42 08             	mov    %al,0x8(%rdx)
	if (cq->irq_enabled) {
    2275:	84 c0                	test   %al,%al
    2277:	0f 85 1f 02 00 00    	jne    249c <nvmev_proc_admin_sq+0x6fc>
	cq->interrupt_ready = false;
    227d:	c6 42 09 00          	movb   $0x0,0x9(%rdx)
	cq->queue_size = cmd->qsize + 1;
    2281:	41 0f b7 44 24 2a    	movzwl 0x2a(%r12),%eax
	cq->phase = 1;
    2287:	48 c7 42 18 01 00 00 	movq   $0x1,0x18(%rdx)
    228e:	00 
	cq->queue_size = cmd->qsize + 1;
    228f:	8d 48 01             	lea    0x1(%rax),%ecx
	cq->cq_tail = -1;
    2292:	c7 42 20 ff ff ff ff 	movl   $0xffffffff,0x20(%rdx)
	cq->queue_size = cmd->qsize + 1;
    2299:	89 4a 14             	mov    %ecx,0x14(%rdx)
	spin_lock_init(&cq->entry_lock);
    229c:	48 c7 42 0c 00 00 00 	movq   $0x0,0xc(%rdx)
    22a3:	00 
	cq->phys_contig = cmd->cq_flags & NVME_QUEUE_PHYS_CONTIG ? true : false;
    22a4:	41 0f b7 4c 24 2c    	movzwl 0x2c(%r12),%ecx
    22aa:	88 4a 0a             	mov    %cl,0xa(%rdx)
    22ad:	80 62 0a 01          	andb   $0x1,0xa(%rdx)
	WARN_ON(!cq->phys_contig);
    22b1:	83 e1 01             	and    $0x1,%ecx
    22b4:	0f 84 bd 05 00 00    	je     2877 <nvmev_proc_admin_sq+0xad7>
	num_pages = DIV_ROUND_UP(cq->queue_size * sizeof(struct nvme_completion), PAGE_SIZE);
    22ba:	8d 88 01 01 00 00    	lea    0x101(%rax),%ecx
	return __kmalloc(size, flags);
    22c0:	be c0 0d 00 00       	mov    $0xdc0,%esi
    22c5:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    22ca:	48 63 c9             	movslq %ecx,%rcx
    22cd:	48 c1 e1 04          	shl    $0x4,%rcx
    22d1:	48 83 e9 01          	sub    $0x1,%rcx
    22d5:	48 c1 e9 0c          	shr    $0xc,%rcx
	cq->cq = kzalloc(sizeof(struct nvme_completion *) * num_pages, GFP_KERNEL);
    22d9:	48 8d 3c cd 00 00 00 	lea    0x0(,%rcx,8),%rdi
    22e0:	00 
    22e1:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    22e6:	e8 00 00 00 00       	call   22eb <nvmev_proc_admin_sq+0x54b>
    22eb:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
	for (i = 0; i < num_pages; i++) {
    22f0:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    22f5:	48 89 c6             	mov    %rax,%rsi
    22f8:	4c 8b 0d 00 00 00 00 	mov    0x0(%rip),%r9        # 22ff <nvmev_proc_admin_sq+0x55f>
	cq->cq = kzalloc(sizeof(struct nvme_completion *) * num_pages, GFP_KERNEL);
    22ff:	48 89 42 28          	mov    %rax,0x28(%rdx)
		cq->cq[i] = prp_address_offset(cmd->prp1, i);
    2303:	49 8b 7c 24 18       	mov    0x18(%r12),%rdi
    2308:	48 89 f8             	mov    %rdi,%rax
    230b:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
    2311:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    2317:	4c 01 c8             	add    %r9,%rax
    231a:	48 01 f8             	add    %rdi,%rax
    231d:	48 89 06             	mov    %rax,(%rsi)
	for (i = 0; i < num_pages; i++) {
    2320:	83 f9 01             	cmp    $0x1,%ecx
    2323:	74 3f                	je     2364 <nvmev_proc_admin_sq+0x5c4>
    2325:	be 01 00 00 00       	mov    $0x1,%esi
    232a:	eb 07                	jmp    2333 <nvmev_proc_admin_sq+0x593>
    232c:	4c 8b 0d 00 00 00 00 	mov    0x0(%rip),%r9        # 2333 <nvmev_proc_admin_sq+0x593>
		cq->cq[i] = prp_address_offset(cmd->prp1, i);
    2333:	4d 8b 44 24 18       	mov    0x18(%r12),%r8
    2338:	48 8b 7a 28          	mov    0x28(%rdx),%rdi
    233c:	4c 89 c0             	mov    %r8,%rax
    233f:	41 81 e0 ff 0f 00 00 	and    $0xfff,%r8d
    2346:	48 c1 e8 0c          	shr    $0xc,%rax
    234a:	48 01 f0             	add    %rsi,%rax
    234d:	48 c1 e0 0c          	shl    $0xc,%rax
    2351:	4c 01 c8             	add    %r9,%rax
    2354:	4c 01 c0             	add    %r8,%rax
    2357:	48 89 04 f7          	mov    %rax,(%rdi,%rsi,8)
	for (i = 0; i < num_pages; i++) {
    235b:	48 83 c6 01          	add    $0x1,%rsi
    235f:	48 39 ce             	cmp    %rcx,%rsi
    2362:	75 c8                	jne    232c <nvmev_proc_admin_sq+0x58c>
	nvmev_vdev->cqes[cq->qid] = cq;
    2364:	48 63 02             	movslq (%rdx),%rax
    2367:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 236e <nvmev_proc_admin_sq+0x5ce>
    236e:	48 89 94 c1 10 04 00 	mov    %rdx,0x410(%rcx,%rax,8)
    2375:	00 
	dbs_idx = cq->qid * 2 + 1;
    2376:	8b 02                	mov    (%rdx),%eax
	nvmev_vdev->dbs[dbs_idx] = nvmev_vdev->old_dbs[dbs_idx] = 0;
    2378:	48 8b 91 98 01 00 00 	mov    0x198(%rcx),%rdx
	dbs_idx = cq->qid * 2 + 1;
    237f:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
	nvmev_vdev->dbs[dbs_idx] = nvmev_vdev->old_dbs[dbs_idx] = 0;
    2383:	48 98                	cltq
    2385:	c7 04 82 00 00 00 00 	movl   $0x0,(%rdx,%rax,4)
    238c:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 2393 <nvmev_proc_admin_sq+0x5f3>
    2393:	48 8b 92 a0 01 00 00 	mov    0x1a0(%rdx),%rdx
    239a:	e9 86 fe ff ff       	jmp    2225 <nvmev_proc_admin_sq+0x485>
	cq_entry(cq_head).command_id = sq_entry(eid).delete_queue.command_id;
    239f:	48 63 d5             	movslq %ebp,%rdx
		cq_entry(cq_head).result0 =
    23a2:	40 0f b6 c5          	movzbl %bpl,%eax
    23a6:	48 c1 ea 08          	shr    $0x8,%rdx
    23aa:	48 c1 e0 04          	shl    $0x4,%rax
	switch (sq_entry(eid).features.fid) {
    23ae:	41 83 7c 24 28 07    	cmpl   $0x7,0x28(%r12)
    23b4:	0f 85 02 fd ff ff    	jne    20bc <nvmev_proc_admin_sq+0x31c>
		num_queue = (sq_entry(eid).features.dword11 & 0xFFFF) + 1;
    23ba:	41 0f b7 7c 24 2c    	movzwl 0x2c(%r12),%edi
		nvmev_vdev->nr_sq = min(num_queue, NR_MAX_IO_QUEUE);
    23c0:	b9 48 00 00 00       	mov    $0x48,%ecx
		nvmev_vdev->nr_cq = min(num_queue, NR_MAX_IO_QUEUE);
    23c5:	41 bc 48 00 00 00    	mov    $0x48,%r12d
		num_queue = (sq_entry(eid).features.dword11 & 0xFFFF) + 1;
    23cb:	83 c7 01             	add    $0x1,%edi
		nvmev_vdev->nr_sq = min(num_queue, NR_MAX_IO_QUEUE);
    23ce:	39 cf                	cmp    %ecx,%edi
    23d0:	0f 4f f9             	cmovg  %ecx,%edi
    23d3:	89 be b4 01 00 00    	mov    %edi,0x1b4(%rsi)
		num_queue = ((sq_entry(eid).features.dword11 >> 16) & 0xFFFF) + 1;
    23d9:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    23dd:	4a 8b 0c c9          	mov    (%rcx,%r9,8),%rcx
    23e1:	42 0f b7 4c 01 2e    	movzwl 0x2e(%rcx,%r8,1),%ecx
    23e7:	83 c1 01             	add    $0x1,%ecx
		nvmev_vdev->nr_cq = min(num_queue, NR_MAX_IO_QUEUE);
    23ea:	44 39 e1             	cmp    %r12d,%ecx
    23ed:	41 0f 4f cc          	cmovg  %r12d,%ecx
			((nvmev_vdev->nr_cq - 1) << 16 | (nvmev_vdev->nr_sq - 1));
    23f1:	83 ef 01             	sub    $0x1,%edi
		nvmev_vdev->nr_cq = min(num_queue, NR_MAX_IO_QUEUE);
    23f4:	89 8e b8 01 00 00    	mov    %ecx,0x1b8(%rsi)
		cq_entry(cq_head).result0 =
    23fa:	48 8b 73 18          	mov    0x18(%rbx),%rsi
			((nvmev_vdev->nr_cq - 1) << 16 | (nvmev_vdev->nr_sq - 1));
    23fe:	83 e9 01             	sub    $0x1,%ecx
    2401:	c1 e1 10             	shl    $0x10,%ecx
		cq_entry(cq_head).result0 =
    2404:	48 8b 34 d6          	mov    (%rsi,%rdx,8),%rsi
			((nvmev_vdev->nr_cq - 1) << 16 | (nvmev_vdev->nr_sq - 1));
    2408:	09 f9                	or     %edi,%ecx
    240a:	89 0c 06             	mov    %ecx,(%rsi,%rax,1)
	cq_entry(cq_head).command_id = sq_entry(eid).features.command_id;
    240d:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    2411:	4e 03 04 c9          	add    (%rcx,%r9,8),%r8
    2415:	4d 89 c4             	mov    %r8,%r12
		break;
    2418:	e9 9f fc ff ff       	jmp    20bc <nvmev_proc_admin_sq+0x31c>
	page = prp_address(cmd->prp1);
    241d:	49 8b 44 24 18       	mov    0x18(%r12),%rax
    2422:	48 89 c2             	mov    %rax,%rdx
    2425:	25 ff 0f 00 00       	and    $0xfff,%eax
    242a:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    2431:	48 03 15 00 00 00 00 	add    0x0(%rip),%rdx        # 2438 <nvmev_proc_admin_sq+0x698>
    2438:	48 01 d0             	add    %rdx,%rax
	switch (cmd->lid) {
    243b:	41 0f b6 54 24 28    	movzbl 0x28(%r12),%edx
	page = prp_address(cmd->prp1);
    2441:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
	uint32_t len = ((((uint32_t)cmd->numdu << 16) | cmd->numdl) + 1) << 2;
    2446:	41 8b 44 24 2a       	mov    0x2a(%r12),%eax
    244b:	44 8d 24 85 04 00 00 	lea    0x4(,%rax,4),%r12d
    2452:	00 
	switch (cmd->lid) {
    2453:	80 fa 02             	cmp    $0x2,%dl
    2456:	0f 84 8e 00 00 00    	je     24ea <nvmev_proc_admin_sq+0x74a>
    245c:	80 fa 05             	cmp    $0x5,%dl
    245f:	74 49                	je     24aa <nvmev_proc_admin_sq+0x70a>
		NVMEV_ERROR("Unimplemented log page identifier: 0x%hhx,"
    2461:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    2468:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    246f:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
    2474:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    2479:	e8 00 00 00 00       	call   247e <nvmev_proc_admin_sq+0x6de>
		__memset(page, 0, len);
    247e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2483:	4c 89 e2             	mov    %r12,%rdx
    2486:	31 f6                	xor    %esi,%esi
    2488:	e8 00 00 00 00       	call   248d <nvmev_proc_admin_sq+0x6ed>
    248d:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    2492:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
		break;
    2497:	e9 1a fa ff ff       	jmp    1eb6 <nvmev_proc_admin_sq+0x116>
		cq->irq_vector = cmd->irq_vector;
    249c:	41 0f b7 44 24 2e    	movzwl 0x2e(%r12),%eax
    24a2:	89 42 04             	mov    %eax,0x4(%rdx)
    24a5:	e9 d3 fd ff ff       	jmp    227d <nvmev_proc_admin_sq+0x4dd>
		NVMEV_INFO("Handling NVME_LOG_CMD_EFFECTS\n");
    24aa:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    24b1:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    24b8:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
    24bd:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    24c2:	e8 00 00 00 00       	call   24c7 <nvmev_proc_admin_sq+0x727>
		__memcpy(page, &effects_log, len);
    24c7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    24cc:	4c 89 e2             	mov    %r12,%rdx
    24cf:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    24d6:	e8 00 00 00 00       	call   24db <nvmev_proc_admin_sq+0x73b>
		break;
    24db:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    24e0:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    24e5:	e9 cc f9 ff ff       	jmp    1eb6 <nvmev_proc_admin_sq+0x116>
		NVMEV_INFO("Handling NVME_LOG_SMART\n");
    24ea:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    24f1:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    24f8:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
    24fd:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    2502:	e8 00 00 00 00       	call   2507 <nvmev_proc_admin_sq+0x767>
		__memcpy(page, &smart_log, len);
    2507:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    250c:	4c 89 e2             	mov    %r12,%rdx
    250f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    2516:	e8 00 00 00 00       	call   251b <nvmev_proc_admin_sq+0x77b>
		break;
    251b:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    2520:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    2525:	e9 8c f9 ff ff       	jmp    1eb6 <nvmev_proc_admin_sq+0x116>
	int nsid = cmd->nsid - 1;
    252a:	41 8b 44 24 04       	mov    0x4(%r12),%eax
    252f:	83 e8 01             	sub    $0x1,%eax
	struct zns_ftl *zns_ftl = (struct zns_ftl *)nvmev_vdev->ns[nsid].ftls;
    2532:	48 98                	cltq
    2534:	48 c1 e0 06          	shl    $0x6,%rax
    2538:	48 03 86 a8 01 00 00 	add    0x1a8(%rsi),%rax
	NVMEV_ASSERT(nvmev_vdev->ns[nsid].csi == NVME_CSI_ZNS);
    253f:	83 78 04 02          	cmpl   $0x2,0x4(%rax)
	struct zns_ftl *zns_ftl = (struct zns_ftl *)nvmev_vdev->ns[nsid].ftls;
    2543:	48 8b 70 20          	mov    0x20(%rax),%rsi
	NVMEV_ASSERT(nvmev_vdev->ns[nsid].csi == NVME_CSI_ZNS);
    2547:	0f 85 31 03 00 00    	jne    287e <nvmev_proc_admin_sq+0xade>
	ns = prp_address(cmd->prp1);
    254d:	49 8b 44 24 18       	mov    0x18(%r12),%rax
    2552:	48 89 c2             	mov    %rax,%rdx
    2555:	25 ff 0f 00 00       	and    $0xfff,%eax
    255a:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    2561:	48 03 15 00 00 00 00 	add    0x0(%rip),%rdx        # 2568 <nvmev_proc_admin_sq+0x7c8>
    2568:	48 01 c2             	add    %rax,%rdx
	memset(ns, 0x00, sizeof(*ns));
    256b:	31 c0                	xor    %eax,%eax
    256d:	48 8d 7a 08          	lea    0x8(%rdx),%rdi
    2571:	48 89 d1             	mov    %rdx,%rcx
    2574:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
    257b:	48 c7 82 f8 0f 00 00 	movq   $0x0,0xff8(%rdx)
    2582:	00 00 00 00 
    2586:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    258a:	48 29 f9             	sub    %rdi,%rcx
    258d:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    2593:	c1 e9 03             	shr    $0x3,%ecx
    2596:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	ns->mar = zpp->nr_active_zones - 1; // 0-based
    2599:	8b 46 0c             	mov    0xc(%rsi),%eax
    259c:	83 e8 01             	sub    $0x1,%eax
    259f:	89 42 04             	mov    %eax,0x4(%rdx)
	ns->mor = zpp->nr_open_zones - 1; // 0-based
    25a2:	8b 46 10             	mov    0x10(%rsi),%eax
    25a5:	83 e8 01             	sub    $0x1,%eax
    25a8:	89 42 08             	mov    %eax,0x8(%rdx)
	if (zpp->nr_zrwa_zones > 0) {
    25ab:	44 8b 56 1c          	mov    0x1c(%rsi),%r10d
    25af:	45 85 d2             	test   %r10d,%r10d
    25b2:	74 24                	je     25d8 <nvmev_proc_admin_sq+0x838>
		ns->ozcs |= OZCS_ZRWA; //Support ZRWA
    25b4:	bf 02 00 00 00       	mov    $0x2,%edi
    25b9:	66 89 7a 02          	mov    %di,0x2(%rdx)
		ns->numzrwa = zpp->nr_zrwa_zones - 1;
    25bd:	8b 46 1c             	mov    0x1c(%rsi),%eax
    25c0:	83 e8 01             	sub    $0x1,%eax
    25c3:	89 42 2c             	mov    %eax,0x2c(%rdx)
		ns->zrwafg = zpp->zrwafg_size;
    25c6:	8b 46 20             	mov    0x20(%rsi),%eax
    25c9:	66 89 42 30          	mov    %ax,0x30(%rdx)
		ns->zrwasz = zpp->zrwa_size;
    25cd:	8b 46 24             	mov    0x24(%rsi),%eax
		ns->zrwacap |= ZRWACAP_EXPFLUSHSUP;
    25d0:	c6 42 34 01          	movb   $0x1,0x34(%rdx)
		ns->zrwasz = zpp->zrwa_size;
    25d4:	66 89 42 32          	mov    %ax,0x32(%rdx)
	ns->lbaf[0].zsze = BYTE_TO_LBA(zpp->zone_size);
    25d8:	8b 46 18             	mov    0x18(%rsi),%eax
    25db:	c1 e8 09             	shr    $0x9,%eax
    25de:	48 89 82 00 0b 00 00 	mov    %rax,0xb00(%rdx)
    25e5:	e9 cc f8 ff ff       	jmp    1eb6 <nvmev_proc_admin_sq+0x116>
	size_t nsid = cmd->nsid - 1;
    25ea:	41 8b 44 24 04       	mov    0x4(%r12),%eax
    25ef:	44 8d 50 ff          	lea    -0x1(%rax),%r10d
	ns = prp_address(cmd->prp1);
    25f3:	49 8b 44 24 18       	mov    0x18(%r12),%rax
	ns->lbaf[4].ms = 8;
    25f8:	41 bc 08 00 00 00    	mov    $0x8,%r12d
    25fe:	48 89 c2             	mov    %rax,%rdx
	ns = prp_address(cmd->prp1);
    2601:	25 ff 0f 00 00       	and    $0xfff,%eax
    2606:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    260d:	48 03 15 00 00 00 00 	add    0x0(%rip),%rdx        # 2614 <nvmev_proc_admin_sq+0x874>
    2614:	48 01 c2             	add    %rax,%rdx
	memset(ns, 0x0, PAGE_SIZE);
    2617:	31 c0                	xor    %eax,%eax
    2619:	48 8d 7a 08          	lea    0x8(%rdx),%rdi
    261d:	48 89 d1             	mov    %rdx,%rcx
    2620:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
    2627:	48 c7 82 f8 0f 00 00 	movq   $0x0,0xff8(%rdx)
    262e:	00 00 00 00 
    2632:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2636:	48 29 f9             	sub    %rdi,%rcx
    2639:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    263f:	c1 e9 03             	shr    $0x3,%ecx
    2642:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	ns->lbaf[3].ds = 12;
    2645:	c6 82 8e 00 00 00 0c 	movb   $0xc,0x8e(%rdx)
	ns->lbaf[0].ds = 9;
    264c:	48 b8 09 02 08 00 09 	movabs $0x10020900080209,%rax
    2653:	02 10 00 
    2656:	48 89 82 82 00 00 00 	mov    %rax,0x82(%rdx)
	ns->lbaf[2].ds = 9;
    265d:	0f b7 05 00 00 00 00 	movzwl 0x0(%rip),%eax        # 2664 <nvmev_proc_admin_sq+0x8c4>
	ns->lbaf[4].ms = 8;
    2664:	66 44 89 a2 90 00 00 	mov    %r12w,0x90(%rdx)
    266b:	00 
	ns->lbaf[2].ds = 9;
    266c:	66 89 82 8a 00 00 00 	mov    %ax,0x8a(%rdx)
	ns->lbaf[5].ms = 64;
    2673:	b8 40 00 00 00       	mov    $0x40,%eax
    2678:	66 89 82 94 00 00 00 	mov    %ax,0x94(%rdx)
	ns->lbaf[6].ms = 128;
    267f:	b8 80 00 00 00       	mov    $0x80,%eax
    2684:	66 89 82 98 00 00 00 	mov    %ax,0x98(%rdx)
	ns->nsze = (nvmev_vdev->ns[nsid].size >> ns->lbaf[ns->flbas].ds);
    268b:	4c 89 d0             	mov    %r10,%rax
	ns->lbaf[4].ds = 12;
    268e:	c6 82 92 00 00 00 0c 	movb   $0xc,0x92(%rdx)
	ns->nsze = (nvmev_vdev->ns[nsid].size >> ns->lbaf[ns->flbas].ds);
    2695:	48 c1 e0 06          	shl    $0x6,%rax
	ns->lbaf[5].ds = 12;
    2699:	c6 82 96 00 00 00 0c 	movb   $0xc,0x96(%rdx)
	ns->lbaf[6].ds = 12;
    26a0:	c6 82 9a 00 00 00 0c 	movb   $0xc,0x9a(%rdx)
	ns->nsze = (nvmev_vdev->ns[nsid].size >> ns->lbaf[ns->flbas].ds);
    26a7:	48 03 86 a8 01 00 00 	add    0x1a8(%rsi),%rax
    26ae:	48 8b 40 08          	mov    0x8(%rax),%rax
	ns->nlbaf = 6;
    26b2:	c6 42 19 06          	movb   $0x6,0x19(%rdx)
	ns->nsze = (nvmev_vdev->ns[nsid].size >> ns->lbaf[ns->flbas].ds);
    26b6:	48 c1 e8 09          	shr    $0x9,%rax
    26ba:	48 89 02             	mov    %rax,(%rdx)
	ns->ncap = ns->nsze;
    26bd:	48 89 42 08          	mov    %rax,0x8(%rdx)
	ns->nuse = ns->nsze;
    26c1:	48 89 42 10          	mov    %rax,0x10(%rdx)
	cq_entry(cq_head).command_id = sq_entry(eid).features.command_id;
    26c5:	e9 ec f7 ff ff       	jmp    1eb6 <nvmev_proc_admin_sq+0x116>
	ctrl = prp_address(sq_entry(eid).identify.prp1);
    26ca:	49 8b 44 24 18       	mov    0x18(%r12),%rax
    26cf:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    26d4:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    26d9:	48 89 c2             	mov    %rax,%rdx
    26dc:	25 ff 0f 00 00       	and    $0xfff,%eax
    26e1:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    26e8:	48 03 15 00 00 00 00 	add    0x0(%rip),%rdx        # 26ef <nvmev_proc_admin_sq+0x94f>
    26ef:	4c 8d 24 02          	lea    (%rdx,%rax,1),%r12
	memset(ctrl, 0x00, sizeof(*ctrl));
    26f3:	31 c0                	xor    %eax,%eax
	snprintf(ctrl->sn, sizeof(ctrl->sn), "CSL_Virt_SN_%02d", 1);
    26f5:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
	memset(ctrl, 0x00, sizeof(*ctrl));
    26fc:	49 8d 7c 24 08       	lea    0x8(%r12),%rdi
    2701:	4c 89 e1             	mov    %r12,%rcx
    2704:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
    270b:	00 
    270c:	49 c7 84 24 f8 0f 00 	movq   $0x0,0xff8(%r12)
    2713:	00 00 00 00 00 
    2718:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    271c:	48 29 f9             	sub    %rdi,%rcx
    271f:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    2725:	c1 e9 03             	shr    $0x3,%ecx
    2728:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	snprintf(ctrl->sn, sizeof(ctrl->sn), "CSL_Virt_SN_%02d", 1);
    272b:	49 8d 7c 24 04       	lea    0x4(%r12),%rdi
    2730:	b9 01 00 00 00       	mov    $0x1,%ecx
	ctrl->nn = nvmev_vdev->nr_ns;
    2735:	8b 86 b0 01 00 00    	mov    0x1b0(%rsi),%eax
	snprintf(ctrl->sn, sizeof(ctrl->sn), "CSL_Virt_SN_%02d", 1);
    273b:	be 14 00 00 00       	mov    $0x14,%esi
	ctrl->acl = 3; //minimum 4 required, 0's based value
    2740:	41 c6 84 24 02 01 00 	movb   $0x3,0x102(%r12)
    2747:	00 03 
	ctrl->nn = nvmev_vdev->nr_ns;
    2749:	41 89 84 24 04 02 00 	mov    %eax,0x204(%r12)
    2750:	00 
	snprintf(ctrl->sn, sizeof(ctrl->sn), "CSL_Virt_SN_%02d", 1);
    2751:	e8 00 00 00 00       	call   2756 <nvmev_proc_admin_sq+0x9b6>
	snprintf(ctrl->mn, sizeof(ctrl->mn), "CSL_Virt_MN_%02d", 1);
    2756:	49 8d 7c 24 18       	lea    0x18(%r12),%rdi
    275b:	b9 01 00 00 00       	mov    $0x1,%ecx
    2760:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    2767:	be 28 00 00 00       	mov    $0x28,%esi
    276c:	e8 00 00 00 00       	call   2771 <nvmev_proc_admin_sq+0x9d1>
	snprintf(ctrl->fr, sizeof(ctrl->fr), "CSL_%03d", 2);
    2771:	b9 02 00 00 00       	mov    $0x2,%ecx
    2776:	be 08 00 00 00       	mov    $0x8,%esi
    277b:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    2782:	49 8d 7c 24 40       	lea    0x40(%r12),%rdi
    2787:	e8 00 00 00 00       	call   278c <nvmev_proc_admin_sq+0x9ec>
	ctrl->mdts = nvmev_vdev->mdts;
    278c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2793 <nvmev_proc_admin_sq+0x9f3>
	cq_entry(cq_head).command_id = sq_entry(eid).features.command_id;
    2793:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    2798:	48 63 d5             	movslq %ebp,%rdx
    279b:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    27a0:	48 c1 ea 08          	shr    $0x8,%rdx
	ctrl->mdts = nvmev_vdev->mdts;
    27a4:	8b 80 58 06 00 00    	mov    0x658(%rax),%eax
    27aa:	41 88 44 24 4d       	mov    %al,0x4d(%r12)
	ctrl->sqes = 0x66;
    27af:	0f b7 05 00 00 00 00 	movzwl 0x0(%rip),%eax        # 27b6 <nvmev_proc_admin_sq+0xa16>
    27b6:	66 41 89 84 24 00 02 	mov    %ax,0x200(%r12)
    27bd:	00 00 
	cq_entry(cq_head).command_id = sq_entry(eid).features.command_id;
    27bf:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    27c3:	40 0f b6 c5          	movzbl %bpl,%eax
    27c7:	48 c1 e0 04          	shl    $0x4,%rax
    27cb:	4a 8b 0c c9          	mov    (%rcx,%r9,8),%rcx
    27cf:	42 0f b7 74 01 02    	movzwl 0x2(%rcx,%r8,1),%esi
    27d5:	e9 f9 f6 ff ff       	jmp    1ed3 <nvmev_proc_admin_sq+0x133>
			NVMEV_ERROR("I don't know %d\n", cns);
    27da:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    27e1:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    27e8:	e8 00 00 00 00       	call   27ed <nvmev_proc_admin_sq+0xa4d>
    27ed:	e9 1a f7 ff ff       	jmp    1f0c <nvmev_proc_admin_sq+0x16c>
	int nsid = cmd->nsid - 1;
    27f2:	41 8b 44 24 04       	mov    0x4(%r12),%eax
    27f7:	8d 70 ff             	lea    -0x1(%rax),%esi
	ns_desc = prp_address(cmd->prp1);
    27fa:	49 8b 44 24 18       	mov    0x18(%r12),%rax
	ns_desc->nid[0] = nvmev_vdev->ns[nsid].csi; // Zoned Name Space Command Set
    27ff:	48 63 f6             	movslq %esi,%rsi
    2802:	48 89 c2             	mov    %rax,%rdx
	ns_desc = prp_address(cmd->prp1);
    2805:	25 ff 0f 00 00       	and    $0xfff,%eax
	ns_desc->nid[0] = nvmev_vdev->ns[nsid].csi; // Zoned Name Space Command Set
    280a:	48 c1 e6 06          	shl    $0x6,%rsi
    280e:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    2815:	48 03 15 00 00 00 00 	add    0x0(%rip),%rdx        # 281c <nvmev_proc_admin_sq+0xa7c>
	ns_desc = prp_address(cmd->prp1);
    281c:	48 01 c2             	add    %rax,%rdx
	memset(ns_desc, 0x00, sizeof(*ns_desc));
    281f:	31 c0                	xor    %eax,%eax
    2821:	48 8d 7a 08          	lea    0x8(%rdx),%rdi
    2825:	48 89 d1             	mov    %rdx,%rcx
    2828:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
    282f:	48 c7 82 f8 0f 00 00 	movq   $0x0,0xff8(%rdx)
    2836:	00 00 00 00 
    283a:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    283e:	48 29 f9             	sub    %rdi,%rcx
    2841:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    2847:	c1 e9 03             	shr    $0x3,%ecx
    284a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	ns_desc->nidt = NVME_NIDT_CSI;
    284d:	0f b7 05 00 00 00 00 	movzwl 0x0(%rip),%eax        # 2854 <nvmev_proc_admin_sq+0xab4>
    2854:	66 89 02             	mov    %ax,(%rdx)
	ns_desc->nid[0] = nvmev_vdev->ns[nsid].csi; // Zoned Name Space Command Set
    2857:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 285e <nvmev_proc_admin_sq+0xabe>
    285e:	48 03 b0 a8 01 00 00 	add    0x1a8(%rax),%rsi
    2865:	8b 46 04             	mov    0x4(%rsi),%eax
    2868:	88 42 04             	mov    %al,0x4(%rdx)
	cq_entry(cq_head).command_id = sq_entry(eid).features.command_id;
    286b:	e9 46 f6 ff ff       	jmp    1eb6 <nvmev_proc_admin_sq+0x116>
	WARN_ON(!sq->phys_contig);
    2870:	0f 0b                	ud2
    2872:	e9 d3 f8 ff ff       	jmp    214a <nvmev_proc_admin_sq+0x3aa>
	WARN_ON(!cq->phys_contig);
    2877:	0f 0b                	ud2
    2879:	e9 3c fa ff ff       	jmp    22ba <nvmev_proc_admin_sq+0x51a>
	NVMEV_ASSERT(nvmev_vdev->ns[nsid].csi == NVME_CSI_ZNS);
    287e:	0f 0b                	ud2

0000000000002880 <__pfx_nvmev_proc_admin_cq>:
    2880:	90                   	nop
    2881:	90                   	nop
    2882:	90                   	nop
    2883:	90                   	nop
    2884:	90                   	nop
    2885:	90                   	nop
    2886:	90                   	nop
    2887:	90                   	nop
    2888:	90                   	nop
    2889:	90                   	nop
    288a:	90                   	nop
    288b:	90                   	nop
    288c:	90                   	nop
    288d:	90                   	nop
    288e:	90                   	nop
    288f:	90                   	nop

0000000000002890 <nvmev_proc_admin_cq>:

void nvmev_proc_admin_cq(int new_db, int old_db)
{
    2890:	f3 0f 1e fa          	endbr64
    2894:	e8 00 00 00 00       	call   2899 <nvmev_proc_admin_cq+0x9>
}
    2899:	e9 00 00 00 00       	jmp    289e <nvmev_proc_admin_cq+0xe>
    289e:	66 90                	xchg   %ax,%ax

00000000000028a0 <__pfx_nvmev_kthread_io>:
    28a0:	90                   	nop
    28a1:	90                   	nop
    28a2:	90                   	nop
    28a3:	90                   	nop
    28a4:	90                   	nop
    28a5:	90                   	nop
    28a6:	90                   	nop
    28a7:	90                   	nop
    28a8:	90                   	nop
    28a9:	90                   	nop
    28aa:	90                   	nop
    28ab:	90                   	nop
    28ac:	90                   	nop
    28ad:	90                   	nop
    28ae:	90                   	nop
    28af:	90                   	nop

00000000000028b0 <nvmev_kthread_io>:
	cq->interrupt_ready = true;
	spin_unlock(&cq->entry_lock);
}

static int nvmev_kthread_io(void *data)
{
    28b0:	f3 0f 1e fa          	endbr64
    28b4:	e8 00 00 00 00       	call   28b9 <nvmev_kthread_io+0x9>
    28b9:	41 57                	push   %r15
    28bb:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
    28c2:	41 56                	push   %r14
    28c4:	41 55                	push   %r13
    28c6:	41 54                	push   %r12
    28c8:	55                   	push   %rbp
    28c9:	53                   	push   %rbx
    28ca:	48 83 ec 50          	sub    $0x50,%rsp
	static unsigned long long intr_counter[NR_MAX_IO_QUEUE + 1];

	unsigned long long prev_clock;
#endif

	NVMEV_INFO("%s started on cpu %d (node %d)\n", pi->thread_name, smp_processor_id(),
    28ce:	65 8b 0d 00 00 00 00 	mov    %gs:0x0(%rip),%ecx        # 28d5 <nvmev_kthread_io+0x25>
    28d5:	48 63 d1             	movslq %ecx,%rdx
{
    28d8:	48 89 3c 24          	mov    %rdi,(%rsp)
    28dc:	48 8b 34 d5 00 00 00 	mov    0x0(,%rdx,8),%rsi
    28e3:	00 
	NVMEV_INFO("%s started on cpu %d (node %d)\n", pi->thread_name, smp_processor_id(),
    28e4:	48 8d 57 30          	lea    0x30(%rdi),%rdx
    28e8:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    28ef:	44 8b 04 06          	mov    (%rsi,%rax,1),%r8d
    28f3:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    28fa:	e8 00 00 00 00       	call   28ff <nvmev_kthread_io+0x4f>

DECLARE_PER_CPU_ALIGNED(struct pcpu_hot, pcpu_hot);

static __always_inline struct task_struct *get_current(void)
{
	return this_cpu_read_stable(pcpu_hot.current_task);
    28ff:	65 4c 8b 14 25 00 00 	mov    %gs:0x0,%r10
    2906:	00 00 
    2908:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
		   cpu_to_node(smp_processor_id()));

	while (!kthread_should_stop()) {
    290d:	e8 00 00 00 00       	call   2912 <nvmev_kthread_io+0x62>
    2912:	84 c0                	test   %al,%al
    2914:	0f 85 65 03 00 00    	jne    2c7f <nvmev_kthread_io+0x3cf>
	return cpu_clock(nvmev_vdev->config.cpu_nr_dispatcher);
    291a:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2921 <nvmev_kthread_io+0x71>
 * # go backwards !!                                                  #
 * ####################################################################
 */
static inline u64 cpu_clock(int cpu)
{
	return sched_clock_cpu(cpu);
    2921:	8b b8 c0 00 00 00    	mov    0xc0(%rax),%edi
    2927:	e8 00 00 00 00       	call   292c <nvmev_kthread_io+0x7c>
    292c:	48 89 c3             	mov    %rax,%rbx
}

static inline u64 local_clock(void)
{
	return sched_clock_cpu(raw_smp_processor_id());
    292f:	65 8b 3d 00 00 00 00 	mov    %gs:0x0(%rip),%edi        # 2936 <nvmev_kthread_io+0x86>
    2936:	e8 00 00 00 00       	call   293b <nvmev_kthread_io+0x8b>
		unsigned long long curr_nsecs_wall = __get_wallclock();
		unsigned long long curr_nsecs_local = local_clock();
		long long delta = curr_nsecs_wall - curr_nsecs_local;
    293b:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    2940:	48 29 c3             	sub    %rax,%rbx

		volatile unsigned int curr = pi->io_seq;
    2943:	48 8b 04 24          	mov    (%rsp),%rax
		long long delta = curr_nsecs_wall - curr_nsecs_local;
    2947:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
		volatile unsigned int curr = pi->io_seq;
    294c:	8b 40 10             	mov    0x10(%rax),%eax
    294f:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
		int qidx;

		while (curr != -1) {
    2953:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
    2957:	83 f8 ff             	cmp    $0xffffffff,%eax
    295a:	0f 84 91 02 00 00    	je     2bf1 <nvmev_kthread_io+0x341>
			struct nvmev_proc_table *pe = &pi->proc_table[curr];
    2960:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
    2964:	48 8b 1c 24          	mov    (%rsp),%rbx
    2968:	4c 8d 24 c5 00 00 00 	lea    0x0(,%rax,8),%r12
    296f:	00 
    2970:	49 29 c4             	sub    %rax,%r12
    2973:	49 c1 e4 04          	shl    $0x4,%r12
    2977:	4c 03 23             	add    (%rbx),%r12
    297a:	65 8b 3d 00 00 00 00 	mov    %gs:0x0(%rip),%edi        # 2981 <nvmev_kthread_io+0xd1>
    2981:	e8 00 00 00 00       	call   2986 <nvmev_kthread_io+0xd6>
			unsigned long long curr_nsecs = local_clock() + delta;
    2986:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    298b:	4c 8d 1c 02          	lea    (%rdx,%rax,1),%r11
			pi->proc_io_nsecs = curr_nsecs;
    298f:	4c 89 5b 18          	mov    %r11,0x18(%rbx)

			if (pe->is_completed == true) {
    2993:	41 80 7c 24 41 00    	cmpb   $0x0,0x41(%r12)
    2999:	0f 85 3c 02 00 00    	jne    2bdb <nvmev_kthread_io+0x32b>
				curr = pe->next;
				continue;
			}

			if (pe->is_copied == false) {
    299f:	41 80 7c 24 40 00    	cmpb   $0x0,0x40(%r12)
    29a5:	0f 85 05 02 00 00    	jne    2bb0 <nvmev_kthread_io+0x300>
#ifdef PERF_DEBUG
				unsigned long long memcpy_time;
				pe->nsecs_copy_start = local_clock() + delta;
#endif
				if (pe->writeback_cmd) {
    29ab:	41 80 7c 24 50 00    	cmpb   $0x0,0x50(%r12)
    29b1:	0f 85 f3 01 00 00    	jne    2baa <nvmev_kthread_io+0x2fa>
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    29b7:	49 63 0c 24          	movslq (%r12),%rcx
    29bb:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 29c2 <nvmev_kthread_io+0x112>
					;
				} else if (io_using_dma) {
					__do_perform_io_using_dma(pe->sqid, pe->sq_entry);
    29c2:	45 8b 74 24 08       	mov    0x8(%r12),%r14d
				} else if (io_using_dma) {
    29c7:	8b 15 00 00 00 00    	mov    0x0(%rip),%edx        # 29cd <nvmev_kthread_io+0x11d>
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    29cd:	4c 8b bc c8 c8 01 00 	mov    0x1c8(%rax,%rcx,8),%r15
    29d4:	00 
	offset = sq_entry(sq_entry).rw.slba << 9;
    29d5:	49 63 c6             	movslq %r14d,%rax
    29d8:	41 83 e6 3f          	and    $0x3f,%r14d
    29dc:	49 8b 4f 30          	mov    0x30(%r15),%rcx
    29e0:	48 c1 e8 06          	shr    $0x6,%rax
    29e4:	49 c1 e6 06          	shl    $0x6,%r14
    29e8:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
    29ef:	00 
    29f0:	48 8b 1c c1          	mov    (%rcx,%rax,8),%rbx
    29f4:	4c 01 f3             	add    %r14,%rbx
    29f7:	4c 8b 6b 28          	mov    0x28(%rbx),%r13
    29fb:	48 89 d8             	mov    %rbx,%rax
	length = (sq_entry(sq_entry).rw.length + 1) << 9;
    29fe:	0f b7 5b 30          	movzwl 0x30(%rbx),%ebx
    2a02:	83 c3 01             	add    $0x1,%ebx
	offset = sq_entry(sq_entry).rw.slba << 9;
    2a05:	49 c1 e5 09          	shl    $0x9,%r13
	length = (sq_entry(sq_entry).rw.length + 1) << 9;
    2a09:	c1 e3 09             	shl    $0x9,%ebx
    2a0c:	48 63 db             	movslq %ebx,%rbx
				} else if (io_using_dma) {
    2a0f:	85 d2                	test   %edx,%edx
    2a11:	0f 84 19 04 00 00    	je     2e30 <nvmev_kthread_io+0x580>
	memset(paddr_list, 0, sizeof(paddr_list));
    2a17:	b9 01 02 00 00       	mov    $0x201,%ecx
    2a1c:	31 c0                	xor    %eax,%eax
	remaining = length;
    2a1e:	48 89 de             	mov    %rbx,%rsi
	memset(paddr_list, 0, sizeof(paddr_list));
    2a21:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    2a27:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    2a2e:	48 89 d7             	mov    %rdx,%rdi
	u64 *tmp_paddr_list = NULL;
    2a31:	31 d2                	xor    %edx,%edx
	memset(paddr_list, 0, sizeof(paddr_list));
    2a33:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	int prp2_offs = 0;
    2a36:	31 ff                	xor    %edi,%edi
    2a38:	eb 4c                	jmp    2a86 <nvmev_kthread_io+0x1d6>
		} else if (prp_offs == 2) {
    2a3a:	49 83 f9 02          	cmp    $0x2,%r9
    2a3e:	0f 84 50 02 00 00    	je     2c94 <nvmev_kthread_io+0x3e4>
			paddr_list[prp_offs] = tmp_paddr_list[prp2_offs++];
    2a44:	48 63 c7             	movslq %edi,%rax
    2a47:	83 c7 01             	add    $0x1,%edi
    2a4a:	48 8b 04 c2          	mov    (%rdx,%rax,8),%rax
    2a4e:	4a 89 04 cd 00 00 00 	mov    %rax,0x0(,%r9,8)
    2a55:	00 
		io_size = min_t(size_t, remaining, PAGE_SIZE);
    2a56:	b9 00 10 00 00       	mov    $0x1000,%ecx
    2a5b:	48 39 ce             	cmp    %rcx,%rsi
    2a5e:	48 0f 46 ce          	cmovbe %rsi,%rcx
		if (paddr_list[prp_offs] & PAGE_OFFSET_MASK) {
    2a62:	25 ff 0f 00 00       	and    $0xfff,%eax
    2a67:	74 11                	je     2a7a <nvmev_kthread_io+0x1ca>
			if (io_size + mem_offs > PAGE_SIZE)
    2a69:	4c 8d 14 01          	lea    (%rcx,%rax,1),%r10
    2a6d:	49 81 fa 00 10 00 00 	cmp    $0x1000,%r10
    2a74:	0f 87 a5 02 00 00    	ja     2d1f <nvmev_kthread_io+0x46f>
	while (remaining) {
    2a7a:	49 8d 41 01          	lea    0x1(%r9),%rax
    2a7e:	48 29 ce             	sub    %rcx,%rsi
    2a81:	74 1f                	je     2aa2 <nvmev_kthread_io+0x1f2>
{
    2a83:	49 89 c1             	mov    %rax,%r9
		if (prp_offs == 1) {
    2a86:	49 83 f9 01          	cmp    $0x1,%r9
    2a8a:	75 ae                	jne    2a3a <nvmev_kthread_io+0x18a>
			paddr_list[prp_offs] = sq_entry(sq_entry).rw.prp1;
    2a8c:	49 8b 47 30          	mov    0x30(%r15),%rax
    2a90:	4a 8b 04 00          	mov    (%rax,%r8,1),%rax
    2a94:	4a 8b 44 30 18       	mov    0x18(%rax,%r14,1),%rax
    2a99:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 2aa0 <nvmev_kthread_io+0x1f0>
    2aa0:	eb b4                	jmp    2a56 <nvmev_kthread_io+0x1a6>
	if (tmp_paddr_list != NULL)
    2aa2:	48 85 d2             	test   %rdx,%rdx
    2aa5:	74 1d                	je     2ac4 <nvmev_kthread_io+0x214>
    2aa7:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    2aae:	00 00 
	current->pagefault_disabled++;
}

static __always_inline void pagefault_disabled_dec(void)
{
	current->pagefault_disabled--;
    2ab0:	83 a8 f8 1a 00 00 01 	subl   $0x1,0x1af8(%rax)
 * a decrement which hits zero means we have no preempt_count and should
 * reschedule.
 */
static __always_inline bool __preempt_count_dec_and_test(void)
{
	return GEN_UNARY_RMWcc("decl", pcpu_hot.preempt_count, e,
    2ab7:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 2abe <nvmev_kthread_io+0x20e>
#endif
	pagefault_enable();
	if (IS_ENABLED(CONFIG_PREEMPT_RT))
		migrate_enable();
	else
		preempt_enable();
    2abe:	0f 84 73 06 00 00    	je     3137 <nvmev_kthread_io+0x887>
				page_size = PAGE_SIZE - mem_offs;
    2ac4:	4c 89 5c 24 30       	mov    %r11,0x30(%rsp)
		prp_offs++;
    2ac9:	b9 01 00 00 00       	mov    $0x1,%ecx
    2ace:	45 89 ca             	mov    %r9d,%r10d
				page_size = PAGE_SIZE - mem_offs;
    2ad1:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
    2ad6:	4d 89 c4             	mov    %r8,%r12
    2ad9:	48 89 6c 24 38       	mov    %rbp,0x38(%rsp)
    2ade:	4c 89 fd             	mov    %r15,%rbp
    2ae1:	45 89 cf             	mov    %r9d,%r15d
    2ae4:	4d 89 f1             	mov    %r14,%r9
    2ae7:	4d 89 ee             	mov    %r13,%r14
    2aea:	49 89 dd             	mov    %rbx,%r13
    2aed:	89 cb                	mov    %ecx,%ebx
		paddr = paddr_list[prp_offs];
    2aef:	48 63 c3             	movslq %ebx,%rax
		page_size = min_t(size_t, remaining, PAGE_SIZE);
    2af2:	41 bb 00 10 00 00    	mov    $0x1000,%r11d
		paddr = paddr_list[prp_offs];
    2af8:	48 8b 3c c5 00 00 00 	mov    0x0(,%rax,8),%rdi
    2aff:	00 
		page_size = min_t(size_t, remaining, PAGE_SIZE);
    2b00:	4d 39 dd             	cmp    %r11,%r13
    2b03:	4d 0f 46 dd          	cmovbe %r13,%r11
		if (paddr & PAGE_OFFSET_MASK) {
    2b07:	48 89 f8             	mov    %rdi,%rax
    2b0a:	25 ff 0f 00 00       	and    $0xfff,%eax
    2b0f:	74 17                	je     2b28 <nvmev_kthread_io+0x278>
			if (page_size + mem_offs > PAGE_SIZE) {
    2b11:	49 8d 34 03          	lea    (%r11,%rax,1),%rsi
				page_size = PAGE_SIZE - mem_offs;
    2b15:	ba 00 10 00 00       	mov    $0x1000,%edx
    2b1a:	48 29 c2             	sub    %rax,%rdx
    2b1d:	48 81 fe 00 10 00 00 	cmp    $0x1000,%rsi
    2b24:	4c 0f 47 da          	cmova  %rdx,%r11
		for (prp_offs++; prp_offs <= num_prps; prp_offs++) {
    2b28:	83 c3 01             	add    $0x1,%ebx
    2b2b:	41 39 df             	cmp    %ebx,%r15d
    2b2e:	7c 3b                	jl     2b6b <nvmev_kthread_io+0x2bb>
    2b30:	48 63 c3             	movslq %ebx,%rax
    2b33:	41 8d 72 01          	lea    0x1(%r10),%esi
    2b37:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    2b3e:	00 
    2b3f:	eb 12                	jmp    2b53 <nvmev_kthread_io+0x2a3>
    2b41:	83 c3 01             	add    $0x1,%ebx
				page_size += PAGE_SIZE;
    2b44:	49 81 c3 00 10 00 00 	add    $0x1000,%r11
		for (prp_offs++; prp_offs <= num_prps; prp_offs++) {
    2b4b:	48 83 c2 08          	add    $0x8,%rdx
    2b4f:	39 f3                	cmp    %esi,%ebx
    2b51:	74 18                	je     2b6b <nvmev_kthread_io+0x2bb>
			if (paddr_list[prp_offs] == paddr_list[prp_offs - 1] + PAGE_SIZE)
    2b53:	8d 43 ff             	lea    -0x1(%rbx),%eax
    2b56:	48 98                	cltq
    2b58:	48 8b 04 c5 00 00 00 	mov    0x0(,%rax,8),%rax
    2b5f:	00 
    2b60:	48 05 00 10 00 00    	add    $0x1000,%rax
    2b66:	48 39 02             	cmp    %rax,(%rdx)
    2b69:	74 d6                	je     2b41 <nvmev_kthread_io+0x291>
		if (sq_entry(sq_entry).rw.opcode == nvme_cmd_write) {
    2b6b:	48 8b 45 30          	mov    0x30(%rbp),%rax
		io_size = min_t(size_t, remaining, page_size);
    2b6f:	4d 39 eb             	cmp    %r13,%r11
    2b72:	4d 0f 47 dd          	cmova  %r13,%r11
		if (sq_entry(sq_entry).rw.opcode == nvme_cmd_write) {
    2b76:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    2b7a:	42 0f b6 04 08       	movzbl (%rax,%r9,1),%eax
    2b7f:	3c 01                	cmp    $0x1,%al
    2b81:	0f 84 0b 05 00 00    	je     3092 <nvmev_kthread_io+0x7e2>
		} else if (sq_entry(sq_entry).rw.opcode == nvme_cmd_read) {
    2b87:	3c 02                	cmp    $0x2,%al
    2b89:	0f 84 3f 05 00 00    	je     30ce <nvmev_kthread_io+0x81e>
		offset += io_size;
    2b8f:	4d 01 de             	add    %r11,%r14
	while (remaining) {
    2b92:	4d 29 dd             	sub    %r11,%r13
    2b95:	0f 85 54 ff ff ff    	jne    2aef <nvmev_kthread_io+0x23f>
    2b9b:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
    2ba0:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
    2ba5:	48 8b 6c 24 38       	mov    0x38(%rsp),%rbp

#ifdef PERF_DEBUG
				pe->nsecs_copy_done = local_clock() + delta;
				memcpy_time = pe->nsecs_copy_done - pe->nsecs_copy_start;
#endif
				pe->is_copied = true;
    2baa:	41 c6 44 24 40 01    	movb   $0x1,0x40(%r12)

				NVMEV_DEBUG("%s: copied %u, %d %d %d\n", pi->thread_name, curr,
					    pe->sqid, pe->cqid, pe->sq_entry);
			}

			if (pe->nsecs_target <= curr_nsecs) {
    2bb0:	4d 3b 5c 24 18       	cmp    0x18(%r12),%r11
    2bb5:	72 24                	jb     2bdb <nvmev_kthread_io+0x32b>
				if (pe->writeback_cmd) {
    2bb7:	41 80 7c 24 50 00    	cmpb   $0x0,0x50(%r12)
    2bbd:	0f 84 69 01 00 00    	je     2d2c <nvmev_kthread_io+0x47c>
#if (BASE_SSD == SAMSUNG_970PRO || BASE_SSD == ZNS_PROTOTYPE)
					buffer_release((struct buffer *)pe->write_buffer,
    2bc3:	41 8b 74 24 60       	mov    0x60(%r12),%esi
    2bc8:	49 8b 7c 24 58       	mov    0x58(%r12),%rdi
    2bcd:	e8 00 00 00 00       	call   2bd2 <nvmev_kthread_io+0x322>
					     pe->nsecs_copy_start - pe->nsecs_start,
					     pe->nsecs_copy_done - pe->nsecs_start,
					     pe->nsecs_cq_filled - pe->nsecs_start,
					     pe->nsecs_target - pe->nsecs_start);
#endif
				mb(); /* Reclaimer shall see after here */
    2bd2:	0f ae f0             	mfence
				pe->is_completed = true;
    2bd5:	41 c6 44 24 41 01    	movb   $0x1,0x41(%r12)
			}

			curr = pe->next;
    2bdb:	41 8b 44 24 64       	mov    0x64(%r12),%eax
    2be0:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
		while (curr != -1) {
    2be4:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
    2be8:	83 f8 ff             	cmp    $0xffffffff,%eax
    2beb:	0f 85 6f fd ff ff    	jne    2960 <nvmev_kthread_io+0xb0>
		}

		for (qidx = 1; qidx <= nvmev_vdev->nr_cq; qidx++) {
    2bf1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2bf8 <nvmev_kthread_io+0x348>
    2bf8:	4c 8b 2c 24          	mov    (%rsp),%r13
    2bfc:	bb 01 00 00 00       	mov    $0x1,%ebx
    2c01:	8b b1 b8 01 00 00    	mov    0x1b8(%rcx),%esi
    2c07:	85 f6                	test   %esi,%esi
    2c09:	74 62                	je     2c6d <nvmev_kthread_io+0x3bd>
			struct nvmev_completion_queue *cq = nvmev_vdev->cqes[qidx];
    2c0b:	48 63 c3             	movslq %ebx,%rax
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    2c0e:	31 d2                	xor    %edx,%edx
			struct nvmev_completion_queue *cq = nvmev_vdev->cqes[qidx];
    2c10:	48 8b ac c1 10 04 00 	mov    0x410(%rcx,%rax,8),%rbp
    2c17:	00 
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    2c18:	8d 43 ff             	lea    -0x1(%rbx),%eax
    2c1b:	f7 b1 c4 00 00 00    	divl   0xc4(%rcx)

#ifdef CONFIG_NVMEV_IO_WORKER_BY_SQ
			if ((pi->id) != __get_io_worker(qidx))
				continue;
#endif
			if (cq == NULL || !cq->irq_enabled)
    2c21:	41 3b 55 20          	cmp    0x20(%r13),%edx
    2c25:	75 3b                	jne    2c62 <nvmev_kthread_io+0x3b2>
    2c27:	48 85 ed             	test   %rbp,%rbp
    2c2a:	74 36                	je     2c62 <nvmev_kthread_io+0x3b2>
    2c2c:	80 7d 08 00          	cmpb   $0x0,0x8(%rbp)
    2c30:	74 30                	je     2c62 <nvmev_kthread_io+0x3b2>
	raw_spin_lock_bh(&lock->rlock);
}

static __always_inline int spin_trylock(spinlock_t *lock)
{
	return raw_spin_trylock(&lock->rlock);
    2c32:	4c 8d 75 10          	lea    0x10(%rbp),%r14
    2c36:	4c 89 f7             	mov    %r14,%rdi
    2c39:	e8 00 00 00 00       	call   2c3e <nvmev_kthread_io+0x38e>
    2c3e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2c45 <nvmev_kthread_io+0x395>
				continue;

			if (spin_trylock(&cq->irq_lock)) {
    2c45:	85 c0                	test   %eax,%eax
    2c47:	74 19                	je     2c62 <nvmev_kthread_io+0x3b2>
				if (cq->interrupt_ready == true) {
    2c49:	80 7d 09 00          	cmpb   $0x0,0x9(%rbp)
    2c4d:	0f 85 c0 04 00 00    	jne    3113 <nvmev_kthread_io+0x863>
	raw_spin_lock_irqsave_nested(spinlock_check(lock), flags, subclass); \
} while (0)

static __always_inline void spin_unlock(spinlock_t *lock)
{
	raw_spin_unlock(&lock->rlock);
    2c53:	4c 89 f7             	mov    %r14,%rdi
    2c56:	e8 00 00 00 00       	call   2c5b <nvmev_kthread_io+0x3ab>
    2c5b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2c62 <nvmev_kthread_io+0x3b2>
		for (qidx = 1; qidx <= nvmev_vdev->nr_cq; qidx++) {
    2c62:	83 c3 01             	add    $0x1,%ebx
    2c65:	39 99 b8 01 00 00    	cmp    %ebx,0x1b8(%rcx)
    2c6b:	73 9e                	jae    2c0b <nvmev_kthread_io+0x35b>
    2c6d:	e8 00 00 00 00       	call   2c72 <nvmev_kthread_io+0x3c2>
	while (!kthread_should_stop()) {
    2c72:	e8 00 00 00 00       	call   2c77 <nvmev_kthread_io+0x3c7>
    2c77:	84 c0                	test   %al,%al
    2c79:	0f 84 9b fc ff ff    	je     291a <nvmev_kthread_io+0x6a>
		}
		cond_resched();
	}

	return 0;
}
    2c7f:	48 83 c4 50          	add    $0x50,%rsp
    2c83:	31 c0                	xor    %eax,%eax
    2c85:	5b                   	pop    %rbx
    2c86:	5d                   	pop    %rbp
    2c87:	41 5c                	pop    %r12
    2c89:	41 5d                	pop    %r13
    2c8b:	41 5e                	pop    %r14
    2c8d:	41 5f                	pop    %r15
    2c8f:	e9 00 00 00 00       	jmp    2c94 <nvmev_kthread_io+0x3e4>
			paddr_list[prp_offs] = sq_entry(sq_entry).rw.prp2;
    2c94:	49 8b 47 30          	mov    0x30(%r15),%rax
    2c98:	4a 8b 04 00          	mov    (%rax,%r8,1),%rax
    2c9c:	4a 8b 44 30 20       	mov    0x20(%rax,%r14,1),%rax
    2ca1:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 2ca8 <nvmev_kthread_io+0x3f8>
			if (remaining > PAGE_SIZE) {
    2ca8:	48 81 fe 00 10 00 00 	cmp    $0x1000,%rsi
    2caf:	0f 86 a1 fd ff ff    	jbe    2a56 <nvmev_kthread_io+0x1a6>
				tmp_paddr_list = kmap_atomic_pfn(PRP_PFN(paddr_list[prp_offs])) +
    2cb5:	48 c1 e8 0c          	shr    $0xc,%rax
	return kmap_atomic(pfn_to_page(pfn));
    2cb9:	48 c1 e0 06          	shl    $0x6,%rax
    2cbd:	48 03 05 00 00 00 00 	add    0x0(%rip),%rax        # 2cc4 <nvmev_kthread_io+0x414>
	raw_cpu_add_4(pcpu_hot.preempt_count, val);
    2cc4:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 2ccb <nvmev_kthread_io+0x41b>
    2ccb:	65 48 8b 14 25 00 00 	mov    %gs:0x0,%rdx
    2cd2:	00 00 
	current->pagefault_disabled++;
    2cd4:	83 82 f8 1a 00 00 01 	addl   $0x1,0x1af8(%rdx)
						 (paddr_list[prp_offs] & PAGE_OFFSET_MASK);
    2cdb:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 2ce2 <nvmev_kthread_io+0x432>
    2ce2:	48 2b 05 00 00 00 00 	sub    0x0(%rip),%rax        # 2ce9 <nvmev_kthread_io+0x439>
				paddr_list[prp_offs] = tmp_paddr_list[prp2_offs++];
    2ce9:	8d 4f 01             	lea    0x1(%rdi),%ecx
    2cec:	48 63 ff             	movslq %edi,%rdi
    2cef:	48 c1 f8 06          	sar    $0x6,%rax
    2cf3:	48 c1 e0 0c          	shl    $0xc,%rax
						 (paddr_list[prp_offs] & PAGE_OFFSET_MASK);
    2cf7:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    2cfd:	48 03 05 00 00 00 00 	add    0x0(%rip),%rax        # 2d04 <nvmev_kthread_io+0x454>
				tmp_paddr_list = kmap_atomic_pfn(PRP_PFN(paddr_list[prp_offs])) +
    2d04:	48 01 c2             	add    %rax,%rdx
				paddr_list[prp_offs] = tmp_paddr_list[prp2_offs++];
    2d07:	48 8b 04 fa          	mov    (%rdx,%rdi,8),%rax
    2d0b:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 2d12 <nvmev_kthread_io+0x462>
		if (paddr_list[prp_offs] & PAGE_OFFSET_MASK) {
    2d12:	25 ff 0f 00 00       	and    $0xfff,%eax
    2d17:	0f 84 07 04 00 00    	je     3124 <nvmev_kthread_io+0x874>
				paddr_list[prp_offs] = tmp_paddr_list[prp2_offs++];
    2d1d:	89 cf                	mov    %ecx,%edi
				io_size = PAGE_SIZE - mem_offs;
    2d1f:	b9 00 10 00 00       	mov    $0x1000,%ecx
    2d24:	48 29 c1             	sub    %rax,%rcx
    2d27:	e9 4e fd ff ff       	jmp    2a7a <nvmev_kthread_io+0x1ca>
	unsigned int status = proc_entry->status;
    2d2c:	41 8b 44 24 44       	mov    0x44(%r12),%eax
	struct nvmev_completion_queue *cq = nvmev_vdev->cqes[cqid];
    2d31:	49 63 54 24 04       	movslq 0x4(%r12),%rdx
	int sqid = proc_entry->sqid;
    2d36:	45 8b 0c 24          	mov    (%r12),%r9d
	unsigned int command_id = proc_entry->command_id;
    2d3a:	45 8b 54 24 0c       	mov    0xc(%r12),%r10d
	unsigned int result0 = proc_entry->result0;
    2d3f:	41 8b 74 24 48       	mov    0x48(%r12),%esi
	unsigned int result1 = proc_entry->result1;
    2d44:	41 8b 4c 24 4c       	mov    0x4c(%r12),%ecx
	unsigned int status = proc_entry->status;
    2d49:	89 44 24 10          	mov    %eax,0x10(%rsp)
	struct nvmev_completion_queue *cq = nvmev_vdev->cqes[cqid];
    2d4d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2d54 <nvmev_kthread_io+0x4a4>
	int sq_entry = proc_entry->sq_entry;
    2d54:	45 8b 6c 24 08       	mov    0x8(%r12),%r13d
	int sqid = proc_entry->sqid;
    2d59:	44 89 4c 24 30       	mov    %r9d,0x30(%rsp)
	unsigned int command_id = proc_entry->command_id;
    2d5e:	44 89 54 24 28       	mov    %r10d,0x28(%rsp)
	struct nvmev_completion_queue *cq = nvmev_vdev->cqes[cqid];
    2d63:	48 8b 9c d0 10 04 00 	mov    0x410(%rax,%rdx,8),%rbx
    2d6a:	00 
	unsigned int result0 = proc_entry->result0;
    2d6b:	89 74 24 24          	mov    %esi,0x24(%rsp)
	unsigned int result1 = proc_entry->result1;
    2d6f:	89 4c 24 18          	mov    %ecx,0x18(%rsp)
	int cq_head = cq->cq_head;
    2d73:	44 8b 73 1c          	mov    0x1c(%rbx),%r14d
	raw_spin_lock(&lock->rlock);
    2d77:	4c 8d 7b 0c          	lea    0xc(%rbx),%r15
    2d7b:	4c 89 ff             	mov    %r15,%rdi
    2d7e:	e8 00 00 00 00       	call   2d83 <nvmev_kthread_io+0x4d3>
	cq_entry(cq_head).command_id = command_id;
    2d83:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    2d87:	49 63 d6             	movslq %r14d,%rdx
    2d8a:	41 0f b6 c6          	movzbl %r14b,%eax
    2d8e:	48 c1 ea 08          	shr    $0x8,%rdx
    2d92:	48 c1 e0 04          	shl    $0x4,%rax
	cq_entry(cq_head).result0 = result0;
    2d96:	8b 74 24 24          	mov    0x24(%rsp),%esi
	if (++cq_head == cq->queue_size) {
    2d9a:	41 83 c6 01          	add    $0x1,%r14d
	cq_entry(cq_head).command_id = command_id;
    2d9e:	48 8b 3c d7          	mov    (%rdi,%rdx,8),%rdi
    2da2:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
	cq_entry(cq_head).sq_id = sqid;
    2da7:	44 8b 4c 24 30       	mov    0x30(%rsp),%r9d
	cq_entry(cq_head).status = cq->phase | status << 1;
    2dac:	0f b7 4c 24 10       	movzwl 0x10(%rsp),%ecx
	cq_entry(cq_head).command_id = command_id;
    2db1:	66 44 89 54 07 0c    	mov    %r10w,0xc(%rdi,%rax,1)
	cq_entry(cq_head).sq_id = sqid;
    2db7:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    2dbb:	48 8b 3c d7          	mov    (%rdi,%rdx,8),%rdi
    2dbf:	66 44 89 4c 07 0a    	mov    %r9w,0xa(%rdi,%rax,1)
	cq_entry(cq_head).sq_head = sq_entry;
    2dc5:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    2dc9:	48 8b 3c d7          	mov    (%rdi,%rdx,8),%rdi
    2dcd:	66 44 89 6c 07 08    	mov    %r13w,0x8(%rdi,%rax,1)
	cq_entry(cq_head).status = cq->phase | status << 1;
    2dd3:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    2dd7:	44 8d 2c 09          	lea    (%rcx,%rcx,1),%r13d
    2ddb:	66 44 0b 6b 18       	or     0x18(%rbx),%r13w
	cq_entry(cq_head).result1 = result1;
    2de0:	8b 4c 24 18          	mov    0x18(%rsp),%ecx
	cq_entry(cq_head).status = cq->phase | status << 1;
    2de4:	48 8b 3c d7          	mov    (%rdi,%rdx,8),%rdi
    2de8:	66 44 89 6c 07 0e    	mov    %r13w,0xe(%rdi,%rax,1)
	cq_entry(cq_head).result0 = result0;
    2dee:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    2df2:	48 8b 3c d7          	mov    (%rdi,%rdx,8),%rdi
    2df6:	89 34 07             	mov    %esi,(%rdi,%rax,1)
	cq_entry(cq_head).result1 = result1;
    2df9:	48 8b 73 28          	mov    0x28(%rbx),%rsi
    2dfd:	48 8b 14 d6          	mov    (%rsi,%rdx,8),%rdx
    2e01:	89 4c 02 04          	mov    %ecx,0x4(%rdx,%rax,1)
	if (++cq_head == cq->queue_size) {
    2e05:	44 3b 73 14          	cmp    0x14(%rbx),%r14d
    2e09:	75 10                	jne    2e1b <nvmev_kthread_io+0x56b>
		cq->phase = !cq->phase;
    2e0b:	8b 53 18             	mov    0x18(%rbx),%edx
    2e0e:	31 c0                	xor    %eax,%eax
    2e10:	85 d2                	test   %edx,%edx
    2e12:	0f 94 c0             	sete   %al
		cq_head = 0;
    2e15:	45 31 f6             	xor    %r14d,%r14d
		cq->phase = !cq->phase;
    2e18:	89 43 18             	mov    %eax,0x18(%rbx)
	cq->cq_head = cq_head;
    2e1b:	44 89 73 1c          	mov    %r14d,0x1c(%rbx)
	raw_spin_unlock(&lock->rlock);
    2e1f:	4c 89 ff             	mov    %r15,%rdi
	cq->interrupt_ready = true;
    2e22:	c6 43 09 01          	movb   $0x1,0x9(%rbx)
    2e26:	e8 00 00 00 00       	call   2e2b <nvmev_kthread_io+0x57b>
}
    2e2b:	e9 a2 fd ff ff       	jmp    2bd2 <nvmev_kthread_io+0x322>
	size_t nsid = sq_entry(sq_entry).rw.nsid - 1; // 0-based
    2e30:	8b 40 04             	mov    0x4(%rax),%eax
				io_size = PAGE_SIZE - mem_offs;
    2e33:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
	int prp2_offs = 0;
    2e38:	45 31 c9             	xor    %r9d,%r9d
	u64 *paddr_list = NULL;
    2e3b:	45 31 d2             	xor    %r10d,%r10d
				io_size = PAGE_SIZE - mem_offs;
    2e3e:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
	size_t nsid = sq_entry(sq_entry).rw.nsid - 1; // 0-based
    2e43:	83 e8 01             	sub    $0x1,%eax
			memcpy(vaddr + mem_offs, nvmev_vdev->ns[nsid].mapped + offset, io_size);
    2e46:	48 c1 e0 06          	shl    $0x6,%rax
				io_size = PAGE_SIZE - mem_offs;
    2e4a:	49 89 c3             	mov    %rax,%r11
    2e4d:	e9 ae 00 00 00       	jmp    2f00 <nvmev_kthread_io+0x650>
		} else if (prp_offs == 2) {
    2e52:	83 fa 02             	cmp    $0x2,%edx
    2e55:	0f 84 6e 01 00 00    	je     2fc9 <nvmev_kthread_io+0x719>
			paddr = paddr_list[prp2_offs++];
    2e5b:	49 63 c9             	movslq %r9d,%rcx
    2e5e:	41 83 c1 01          	add    $0x1,%r9d
    2e62:	49 8b 0c ca          	mov    (%r10,%rcx,8),%rcx
    2e66:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 2e6d <nvmev_kthread_io+0x5bd>
    2e6d:	83 85 f8 1a 00 00 01 	addl   $0x1,0x1af8(%rbp)
		vaddr = kmap_atomic_pfn(PRP_PFN(paddr));
    2e74:	48 89 ce             	mov    %rcx,%rsi
    2e77:	48 c1 ee 0c          	shr    $0xc,%rsi
    2e7b:	48 c1 e6 06          	shl    $0x6,%rsi
    2e7f:	48 01 c6             	add    %rax,%rsi
    2e82:	48 2b 35 00 00 00 00 	sub    0x0(%rip),%rsi        # 2e89 <nvmev_kthread_io+0x5d9>
		io_size = min_t(size_t, remaining, PAGE_SIZE);
    2e89:	b8 00 10 00 00       	mov    $0x1000,%eax
    2e8e:	48 c1 fe 06          	sar    $0x6,%rsi
    2e92:	48 c1 e6 0c          	shl    $0xc,%rsi
    2e96:	48 03 35 00 00 00 00 	add    0x0(%rip),%rsi        # 2e9d <nvmev_kthread_io+0x5ed>
    2e9d:	48 39 c3             	cmp    %rax,%rbx
    2ea0:	48 0f 46 c3          	cmovbe %rbx,%rax
		if (paddr & PAGE_OFFSET_MASK) {
    2ea4:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    2eaa:	74 17                	je     2ec3 <nvmev_kthread_io+0x613>
			if (io_size + mem_offs > PAGE_SIZE)
    2eac:	4c 8d 24 08          	lea    (%rax,%rcx,1),%r12
				io_size = PAGE_SIZE - mem_offs;
    2eb0:	bf 00 10 00 00       	mov    $0x1000,%edi
    2eb5:	48 29 cf             	sub    %rcx,%rdi
    2eb8:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
    2ebf:	48 0f 47 c7          	cmova  %rdi,%rax
		if (sq_entry(sq_entry).rw.opcode == nvme_cmd_write) {
    2ec3:	49 8b 7f 30          	mov    0x30(%r15),%rdi
    2ec7:	4a 8b 3c 07          	mov    (%rdi,%r8,1),%rdi
    2ecb:	42 0f b6 3c 37       	movzbl (%rdi,%r14,1),%edi
    2ed0:	40 80 ff 01          	cmp    $0x1,%dil
    2ed4:	74 4f                	je     2f25 <nvmev_kthread_io+0x675>
		} else if (sq_entry(sq_entry).rw.opcode == nvme_cmd_read) {
    2ed6:	40 80 ff 02          	cmp    $0x2,%dil
    2eda:	0f 84 96 00 00 00    	je     2f76 <nvmev_kthread_io+0x6c6>
	current->pagefault_disabled--;
    2ee0:	83 ad f8 1a 00 00 01 	subl   $0x1,0x1af8(%rbp)
	return GEN_UNARY_RMWcc("decl", pcpu_hot.preempt_count, e,
    2ee7:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 2eee <nvmev_kthread_io+0x63e>
		preempt_enable();
    2eee:	0f 84 40 01 00 00    	je     3034 <nvmev_kthread_io+0x784>
		offset += io_size;
    2ef4:	49 01 c5             	add    %rax,%r13
	while (remaining) {
    2ef7:	48 29 c3             	sub    %rax,%rbx
    2efa:	0f 84 45 01 00 00    	je     3045 <nvmev_kthread_io+0x795>
		prp_offs++;
    2f00:	83 c2 01             	add    $0x1,%edx
	return kmap_atomic(pfn_to_page(pfn));
    2f03:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2f0a <nvmev_kthread_io+0x65a>
		if (prp_offs == 1) {
    2f0a:	83 fa 01             	cmp    $0x1,%edx
    2f0d:	0f 85 3f ff ff ff    	jne    2e52 <nvmev_kthread_io+0x5a2>
			paddr = sq_entry(sq_entry).rw.prp1;
    2f13:	49 8b 4f 30          	mov    0x30(%r15),%rcx
    2f17:	4a 8b 0c 01          	mov    (%rcx,%r8,1),%rcx
    2f1b:	4a 8b 4c 31 18       	mov    0x18(%rcx,%r14,1),%rcx
    2f20:	e9 41 ff ff ff       	jmp    2e66 <nvmev_kthread_io+0x5b6>
			memcpy(nvmev_vdev->ns[nsid].mapped + offset, vaddr + mem_offs, io_size);
    2f25:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 2f2c <nvmev_kthread_io+0x67c>
    2f2c:	48 01 ce             	add    %rcx,%rsi
    2f2f:	89 c1                	mov    %eax,%ecx
    2f31:	48 8b bf a8 01 00 00 	mov    0x1a8(%rdi),%rdi
    2f38:	4e 8b 64 1f 10       	mov    0x10(%rdi,%r11,1),%r12
    2f3d:	4d 01 ec             	add    %r13,%r12
    2f40:	83 f8 08             	cmp    $0x8,%eax
    2f43:	72 52                	jb     2f97 <nvmev_kthread_io+0x6e7>
			memcpy(vaddr + mem_offs, nvmev_vdev->ns[nsid].mapped + offset, io_size);
    2f45:	48 8b 0e             	mov    (%rsi),%rcx
    2f48:	49 89 0c 24          	mov    %rcx,(%r12)
    2f4c:	89 c1                	mov    %eax,%ecx
    2f4e:	48 8b 7c 0e f8       	mov    -0x8(%rsi,%rcx,1),%rdi
    2f53:	49 89 7c 0c f8       	mov    %rdi,-0x8(%r12,%rcx,1)
    2f58:	49 8d 7c 24 08       	lea    0x8(%r12),%rdi
    2f5d:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2f61:	49 29 fc             	sub    %rdi,%r12
    2f64:	42 8d 0c 20          	lea    (%rax,%r12,1),%ecx
    2f68:	4c 29 e6             	sub    %r12,%rsi
    2f6b:	c1 e9 03             	shr    $0x3,%ecx
    2f6e:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    2f71:	e9 6a ff ff ff       	jmp    2ee0 <nvmev_kthread_io+0x630>
    2f76:	4c 8d 24 0e          	lea    (%rsi,%rcx,1),%r12
    2f7a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2f81 <nvmev_kthread_io+0x6d1>
    2f81:	48 8b 89 a8 01 00 00 	mov    0x1a8(%rcx),%rcx
    2f88:	4a 8b 74 19 10       	mov    0x10(%rcx,%r11,1),%rsi
    2f8d:	89 c1                	mov    %eax,%ecx
    2f8f:	4c 01 ee             	add    %r13,%rsi
    2f92:	83 f8 08             	cmp    $0x8,%eax
    2f95:	73 ae                	jae    2f45 <nvmev_kthread_io+0x695>
    2f97:	a8 04                	test   $0x4,%al
    2f99:	0f 85 dd 00 00 00    	jne    307c <nvmev_kthread_io+0x7cc>
    2f9f:	85 c9                	test   %ecx,%ecx
    2fa1:	0f 84 39 ff ff ff    	je     2ee0 <nvmev_kthread_io+0x630>
    2fa7:	0f b6 3e             	movzbl (%rsi),%edi
    2faa:	41 88 3c 24          	mov    %dil,(%r12)
    2fae:	f6 c1 02             	test   $0x2,%cl
    2fb1:	0f 84 29 ff ff ff    	je     2ee0 <nvmev_kthread_io+0x630>
    2fb7:	89 c9                	mov    %ecx,%ecx
    2fb9:	0f b7 74 0e fe       	movzwl -0x2(%rsi,%rcx,1),%esi
    2fbe:	66 41 89 74 0c fe    	mov    %si,-0x2(%r12,%rcx,1)
    2fc4:	e9 17 ff ff ff       	jmp    2ee0 <nvmev_kthread_io+0x630>
			paddr = sq_entry(sq_entry).rw.prp2;
    2fc9:	49 8b 4f 30          	mov    0x30(%r15),%rcx
    2fcd:	4a 8b 0c 01          	mov    (%rcx,%r8,1),%rcx
    2fd1:	4a 8b 4c 31 20       	mov    0x20(%rcx,%r14,1),%rcx
			if (remaining > PAGE_SIZE) {
    2fd6:	48 81 fb 00 10 00 00 	cmp    $0x1000,%rbx
    2fdd:	0f 86 83 fe ff ff    	jbe    2e66 <nvmev_kthread_io+0x5b6>
	raw_cpu_add_4(pcpu_hot.preempt_count, val);
    2fe3:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 2fea <nvmev_kthread_io+0x73a>
	current->pagefault_disabled++;
    2fea:	83 85 f8 1a 00 00 01 	addl   $0x1,0x1af8(%rbp)
				paddr_list = kmap_atomic_pfn(PRP_PFN(paddr)) +
    2ff1:	49 89 ca             	mov    %rcx,%r10
    2ff4:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2ffb <nvmev_kthread_io+0x74b>
					     (paddr & PAGE_OFFSET_MASK);
    2ffb:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
				paddr_list = kmap_atomic_pfn(PRP_PFN(paddr)) +
    3001:	49 c1 ea 0c          	shr    $0xc,%r10
    3005:	49 c1 e2 06          	shl    $0x6,%r10
    3009:	49 01 c2             	add    %rax,%r10
				paddr = paddr_list[prp2_offs++];
    300c:	49 63 c1             	movslq %r9d,%rax
    300f:	41 83 c1 01          	add    $0x1,%r9d
    3013:	49 29 f2             	sub    %rsi,%r10
    3016:	49 c1 fa 06          	sar    $0x6,%r10
    301a:	49 c1 e2 0c          	shl    $0xc,%r10
    301e:	4c 03 15 00 00 00 00 	add    0x0(%rip),%r10        # 3025 <nvmev_kthread_io+0x775>
				paddr_list = kmap_atomic_pfn(PRP_PFN(paddr)) +
    3025:	49 01 ca             	add    %rcx,%r10
				paddr = paddr_list[prp2_offs++];
    3028:	49 8b 0c c2          	mov    (%r10,%rax,8),%rcx
    302c:	48 89 f0             	mov    %rsi,%rax
    302f:	e9 32 fe ff ff       	jmp    2e66 <nvmev_kthread_io+0x5b6>
		preempt_enable();
    3034:	e8 00 00 00 00       	call   3039 <nvmev_kthread_io+0x789>
		offset += io_size;
    3039:	49 01 c5             	add    %rax,%r13
	while (remaining) {
    303c:	48 29 c3             	sub    %rax,%rbx
    303f:	0f 85 bb fe ff ff    	jne    2f00 <nvmev_kthread_io+0x650>
	if (paddr_list != NULL)
    3045:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    304a:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
    304f:	4d 85 d2             	test   %r10,%r10
    3052:	0f 84 52 fb ff ff    	je     2baa <nvmev_kthread_io+0x2fa>
	current->pagefault_disabled--;
    3058:	83 ad f8 1a 00 00 01 	subl   $0x1,0x1af8(%rbp)
	return GEN_UNARY_RMWcc("decl", pcpu_hot.preempt_count, e,
    305f:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 3066 <nvmev_kthread_io+0x7b6>
    3066:	0f 85 3e fb ff ff    	jne    2baa <nvmev_kthread_io+0x2fa>
    306c:	e8 00 00 00 00       	call   3071 <nvmev_kthread_io+0x7c1>
				pe->is_copied = true;
    3071:	41 c6 44 24 40 01    	movb   $0x1,0x40(%r12)
    3077:	e9 34 fb ff ff       	jmp    2bb0 <nvmev_kthread_io+0x300>
			memcpy(vaddr + mem_offs, nvmev_vdev->ns[nsid].mapped + offset, io_size);
    307c:	8b 3e                	mov    (%rsi),%edi
    307e:	89 c9                	mov    %ecx,%ecx
    3080:	41 89 3c 24          	mov    %edi,(%r12)
    3084:	8b 74 0e fc          	mov    -0x4(%rsi,%rcx,1),%esi
    3088:	41 89 74 0c fc       	mov    %esi,-0x4(%r12,%rcx,1)
    308d:	e9 4e fe ff ff       	jmp    2ee0 <nvmev_kthread_io+0x630>
			ioat_dma_submit(paddr, nvmev_vdev->config.storage_start + offset, io_size);
    3092:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 3099 <nvmev_kthread_io+0x7e9>
    3099:	44 89 da             	mov    %r11d,%edx
    309c:	44 89 54 24 24       	mov    %r10d,0x24(%rsp)
    30a1:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    30a6:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
    30ad:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
    30b2:	4c 01 f6             	add    %r14,%rsi
    30b5:	e8 00 00 00 00       	call   30ba <nvmev_kthread_io+0x80a>
    30ba:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
    30bf:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    30c4:	44 8b 54 24 24       	mov    0x24(%rsp),%r10d
    30c9:	e9 c1 fa ff ff       	jmp    2b8f <nvmev_kthread_io+0x2df>
			ioat_dma_submit(nvmev_vdev->config.storage_start + offset, paddr, io_size);
    30ce:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 30d5 <nvmev_kthread_io+0x825>
    30d5:	48 89 fe             	mov    %rdi,%rsi
    30d8:	44 89 54 24 24       	mov    %r10d,0x24(%rsp)
    30dd:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    30e2:	48 8b 90 a8 00 00 00 	mov    0xa8(%rax),%rdx
    30e9:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
    30ee:	4c 01 f2             	add    %r14,%rdx
    30f1:	48 89 d0             	mov    %rdx,%rax
    30f4:	44 89 da             	mov    %r11d,%edx
    30f7:	48 89 c7             	mov    %rax,%rdi
    30fa:	e8 00 00 00 00       	call   30ff <nvmev_kthread_io+0x84f>
    30ff:	44 8b 54 24 24       	mov    0x24(%rsp),%r10d
    3104:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    3109:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
    310e:	e9 7c fa ff ff       	jmp    2b8f <nvmev_kthread_io+0x2df>
					cq->interrupt_ready = false;
    3113:	c6 45 09 00          	movb   $0x0,0x9(%rbp)
					nvmev_signal_irq(cq->irq_vector);
    3117:	8b 7d 04             	mov    0x4(%rbp),%edi
    311a:	e8 00 00 00 00       	call   311f <nvmev_kthread_io+0x86f>
    311f:	e9 2f fb ff ff       	jmp    2c53 <nvmev_kthread_io+0x3a3>
		remaining -= io_size;
    3124:	48 81 ee 00 10 00 00 	sub    $0x1000,%rsi
				paddr_list[prp_offs] = tmp_paddr_list[prp2_offs++];
    312b:	89 cf                	mov    %ecx,%edi
	while (remaining) {
    312d:	b8 03 00 00 00       	mov    $0x3,%eax
    3132:	e9 4c f9 ff ff       	jmp    2a83 <nvmev_kthread_io+0x1d3>
    3137:	e8 00 00 00 00       	call   313c <nvmev_kthread_io+0x88c>
    313c:	e9 83 f9 ff ff       	jmp    2ac4 <nvmev_kthread_io+0x214>
    3141:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3148:	00 00 00 00 
    314c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003150 <__pfx_enqueue_writeback_io_req>:
    3150:	90                   	nop
    3151:	90                   	nop
    3152:	90                   	nop
    3153:	90                   	nop
    3154:	90                   	nop
    3155:	90                   	nop
    3156:	90                   	nop
    3157:	90                   	nop
    3158:	90                   	nop
    3159:	90                   	nop
    315a:	90                   	nop
    315b:	90                   	nop
    315c:	90                   	nop
    315d:	90                   	nop
    315e:	90                   	nop
    315f:	90                   	nop

0000000000003160 <enqueue_writeback_io_req>:
{
    3160:	f3 0f 1e fa          	endbr64
    3164:	e8 00 00 00 00       	call   3169 <enqueue_writeback_io_req+0x9>
    3169:	41 57                	push   %r15
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    316b:	8d 47 ff             	lea    -0x1(%rdi),%eax
{
    316e:	49 89 d7             	mov    %rdx,%r15
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    3171:	31 d2                	xor    %edx,%edx
{
    3173:	41 56                	push   %r14
    3175:	41 55                	push   %r13
    3177:	41 54                	push   %r12
    3179:	49 89 f4             	mov    %rsi,%r12
    317c:	89 ce                	mov    %ecx,%esi
    317e:	55                   	push   %rbp
    317f:	53                   	push   %rbx
    3180:	48 83 ec 10          	sub    $0x10,%rsp
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    3184:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 318b <enqueue_writeback_io_req+0x2b>
    318b:	44 8b 81 c4 00 00 00 	mov    0xc4(%rcx),%r8d
    3192:	41 f7 f0             	div    %r8d
	struct nvmev_proc_info *pi = &nvmev_vdev->proc_info[proc_turn];
    3195:	89 d0                	mov    %edx,%eax
    3197:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    319b:	48 c1 e3 04          	shl    $0x4,%rbx
    319f:	48 03 99 70 01 00 00 	add    0x170(%rcx),%rbx
	unsigned int entry = pi->free_seq;
    31a6:	44 8b 73 08          	mov    0x8(%rbx),%r14d
	if (pi->proc_table[entry].next >= NR_MAX_PARALLEL_IO) {
    31aa:	48 8b 03             	mov    (%rbx),%rax
    31ad:	4a 8d 2c f5 00 00 00 	lea    0x0(,%r14,8),%rbp
    31b4:	00 
    31b5:	4c 29 f5             	sub    %r14,%rbp
    31b8:	48 c1 e5 04          	shl    $0x4,%rbp
    31bc:	81 7c 28 64 ff 3f 00 	cmpl   $0x3fff,0x64(%rax,%rbp,1)
    31c3:	00 
    31c4:	0f 87 7d 01 00 00    	ja     3347 <enqueue_writeback_io_req+0x1e7>
	if (++proc_turn == nvmev_vdev->config.nr_io_cpu)
    31ca:	83 c2 01             	add    $0x1,%edx
		proc_turn = 0;
    31cd:	31 c0                	xor    %eax,%eax
    31cf:	44 39 c2             	cmp    %r8d,%edx
    31d2:	0f 44 d0             	cmove  %eax,%edx
	nvmev_vdev->proc_turn = proc_turn;
    31d5:	89 91 78 01 00 00    	mov    %edx,0x178(%rcx)
	pi->free_seq = pi->proc_table[entry].next;
    31db:	48 8b 13             	mov    (%rbx),%rdx
    31de:	48 01 ea             	add    %rbp,%rdx
    31e1:	8b 42 64             	mov    0x64(%rdx),%eax
    31e4:	89 43 08             	mov    %eax,0x8(%rbx)
	BUG_ON(pi->free_seq >= NR_MAX_PARALLEL_IO);
    31e7:	3d ff 3f 00 00       	cmp    $0x3fff,%eax
    31ec:	0f 87 b0 01 00 00    	ja     33a2 <enqueue_writeback_io_req+0x242>
	pi->proc_table[entry].sqid = sqid;
    31f2:	89 3a                	mov    %edi,(%rdx)
	pi->proc_table[entry].nsecs_start = local_clock();
    31f4:	48 8b 13             	mov    (%rbx),%rdx
    31f7:	89 74 24 0c          	mov    %esi,0xc(%rsp)
    31fb:	48 01 ea             	add    %rbp,%rdx
    31fe:	48 89 14 24          	mov    %rdx,(%rsp)
    3202:	65 8b 3d 00 00 00 00 	mov    %gs:0x0(%rip),%edi        # 3209 <enqueue_writeback_io_req+0xa9>
    3209:	e8 00 00 00 00       	call   320e <enqueue_writeback_io_req+0xae>
    320e:	48 8b 14 24          	mov    (%rsp),%rdx
    3212:	48 89 42 10          	mov    %rax,0x10(%rdx)
	pi->proc_table[entry].nsecs_enqueue = local_clock();
    3216:	48 8b 13             	mov    (%rbx),%rdx
    3219:	48 01 ea             	add    %rbp,%rdx
    321c:	48 89 14 24          	mov    %rdx,(%rsp)
    3220:	65 8b 3d 00 00 00 00 	mov    %gs:0x0(%rip),%edi        # 3227 <enqueue_writeback_io_req+0xc7>
    3227:	e8 00 00 00 00       	call   322c <enqueue_writeback_io_req+0xcc>
    322c:	48 8b 14 24          	mov    (%rsp),%rdx
	pi->proc_table[entry].buffs_to_release = buffs_to_release;
    3230:	8b 74 24 0c          	mov    0xc(%rsp),%esi
	pi->proc_table[entry].nsecs_enqueue = local_clock();
    3234:	48 89 42 20          	mov    %rax,0x20(%rdx)
	pi->proc_table[entry].nsecs_target = nsecs_target;
    3238:	48 8b 03             	mov    (%rbx),%rax
    323b:	4c 89 64 28 18       	mov    %r12,0x18(%rax,%rbp,1)
	pi->proc_table[entry].is_completed = false;
    3240:	48 8b 03             	mov    (%rbx),%rax
    3243:	c6 44 28 41 00       	movb   $0x0,0x41(%rax,%rbp,1)
	pi->proc_table[entry].is_copied = true;
    3248:	48 8b 03             	mov    (%rbx),%rax
    324b:	c6 44 28 40 01       	movb   $0x1,0x40(%rax,%rbp,1)
	pi->proc_table[entry].prev = -1;
    3250:	48 8b 03             	mov    (%rbx),%rax
    3253:	c7 44 28 68 ff ff ff 	movl   $0xffffffff,0x68(%rax,%rbp,1)
    325a:	ff 
	pi->proc_table[entry].next = -1;
    325b:	48 8b 03             	mov    (%rbx),%rax
    325e:	c7 44 28 64 ff ff ff 	movl   $0xffffffff,0x64(%rax,%rbp,1)
    3265:	ff 
	pi->proc_table[entry].writeback_cmd = true;
    3266:	48 8b 03             	mov    (%rbx),%rax
    3269:	c6 44 28 50 01       	movb   $0x1,0x50(%rax,%rbp,1)
	pi->proc_table[entry].buffs_to_release = buffs_to_release;
    326e:	48 8b 03             	mov    (%rbx),%rax
    3271:	89 74 28 60          	mov    %esi,0x60(%rax,%rbp,1)
	pi->proc_table[entry].write_buffer = (void *)write_buffer;
    3275:	48 8b 03             	mov    (%rbx),%rax
    3278:	4c 89 7c 28 58       	mov    %r15,0x58(%rax,%rbp,1)
	mb(); /* IO worker shall see the updated pi at once */
    327d:	0f ae f0             	mfence
	if (pi->io_seq == -1) {
    3280:	44 8b 43 10          	mov    0x10(%rbx),%r8d
    3284:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
    3288:	0f 84 98 00 00 00    	je     3326 <enqueue_writeback_io_req+0x1c6>
		unsigned int curr = pi->io_seq_end;
    328e:	8b 53 14             	mov    0x14(%rbx),%edx
			pi->proc_table[pi->io_seq].prev = entry;
    3291:	48 8b 3b             	mov    (%rbx),%rdi
    3294:	4d 89 f5             	mov    %r14,%r13
		while (curr != -1) {
    3297:	83 fa ff             	cmp    $0xffffffff,%edx
    329a:	0f 84 cd 00 00 00    	je     336d <enqueue_writeback_io_req+0x20d>
    32a0:	48 8b 43 18          	mov    0x18(%rbx),%rax
    32a4:	49 39 c4             	cmp    %rax,%r12
    32a7:	49 0f 43 c4          	cmovae %r12,%rax
    32ab:	48 89 c6             	mov    %rax,%rsi
    32ae:	eb 0c                	jmp    32bc <enqueue_writeback_io_req+0x15c>
			curr = pi->proc_table[curr].prev;
    32b0:	8b 51 68             	mov    0x68(%rcx),%edx
		while (curr != -1) {
    32b3:	83 fa ff             	cmp    $0xffffffff,%edx
    32b6:	0f 84 b1 00 00 00    	je     336d <enqueue_writeback_io_req+0x20d>
			if (pi->proc_table[curr].nsecs_target <= pi->proc_io_nsecs)
    32bc:	89 d1                	mov    %edx,%ecx
    32be:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
    32c5:	00 
    32c6:	48 29 c8             	sub    %rcx,%rax
    32c9:	48 c1 e0 04          	shl    $0x4,%rax
    32cd:	48 8d 0c 07          	lea    (%rdi,%rax,1),%rcx
			if (pi->proc_table[curr].nsecs_target <= nsecs_target)
    32d1:	48 3b 71 18          	cmp    0x18(%rcx),%rsi
    32d5:	72 d9                	jb     32b0 <enqueue_writeback_io_req+0x150>
		} else if (pi->proc_table[curr].next == -1) { /* Tail */
    32d7:	83 7c 07 64 ff       	cmpl   $0xffffffff,0x64(%rdi,%rax,1)
			pi->proc_table[entry].prev = curr;
    32dc:	48 8d 0c 2f          	lea    (%rdi,%rbp,1),%rcx
		} else if (pi->proc_table[curr].next == -1) { /* Tail */
    32e0:	74 7a                	je     335c <enqueue_writeback_io_req+0x1fc>
			pi->proc_table[entry].prev = curr;
    32e2:	89 51 68             	mov    %edx,0x68(%rcx)
			pi->proc_table[entry].next = pi->proc_table[curr].next;
    32e5:	48 8b 13             	mov    (%rbx),%rdx
    32e8:	8b 4c 02 64          	mov    0x64(%rdx,%rax,1),%ecx
    32ec:	89 4c 2a 64          	mov    %ecx,0x64(%rdx,%rbp,1)
			pi->proc_table[pi->proc_table[entry].next].prev = entry;
    32f0:	48 8b 0b             	mov    (%rbx),%rcx
    32f3:	8b 74 29 64          	mov    0x64(%rcx,%rbp,1),%esi
    32f7:	48 8d 14 f5 00 00 00 	lea    0x0(,%rsi,8),%rdx
    32fe:	00 
    32ff:	48 29 f2             	sub    %rsi,%rdx
    3302:	48 c1 e2 04          	shl    $0x4,%rdx
    3306:	44 89 6c 11 68       	mov    %r13d,0x68(%rcx,%rdx,1)
			pi->proc_table[curr].next = entry;
    330b:	48 8b 13             	mov    (%rbx),%rdx
    330e:	44 89 6c 02 64       	mov    %r13d,0x64(%rdx,%rax,1)
}
    3313:	48 83 c4 10          	add    $0x10,%rsp
    3317:	5b                   	pop    %rbx
    3318:	5d                   	pop    %rbp
    3319:	41 5c                	pop    %r12
    331b:	41 5d                	pop    %r13
    331d:	41 5e                	pop    %r14
    331f:	41 5f                	pop    %r15
    3321:	e9 00 00 00 00       	jmp    3326 <enqueue_writeback_io_req+0x1c6>
		pi->io_seq = entry;
    3326:	4c 89 f0             	mov    %r14,%rax
    3329:	48 c1 e0 20          	shl    $0x20,%rax
    332d:	49 09 c6             	or     %rax,%r14
    3330:	4c 89 73 10          	mov    %r14,0x10(%rbx)
}
    3334:	48 83 c4 10          	add    $0x10,%rsp
    3338:	5b                   	pop    %rbx
    3339:	5d                   	pop    %rbp
    333a:	41 5c                	pop    %r12
    333c:	41 5d                	pop    %r13
    333e:	41 5e                	pop    %r14
    3340:	41 5f                	pop    %r15
    3342:	e9 00 00 00 00       	jmp    3347 <enqueue_writeback_io_req+0x1e7>
		WARN_ON_ONCE("IO queue is almost full");
    3347:	0f 0b                	ud2
}
    3349:	48 83 c4 10          	add    $0x10,%rsp
    334d:	5b                   	pop    %rbx
    334e:	5d                   	pop    %rbp
    334f:	41 5c                	pop    %r12
    3351:	41 5d                	pop    %r13
    3353:	41 5e                	pop    %r14
    3355:	41 5f                	pop    %r15
    3357:	e9 00 00 00 00       	jmp    335c <enqueue_writeback_io_req+0x1fc>
			pi->proc_table[entry].prev = curr;
    335c:	89 51 68             	mov    %edx,0x68(%rcx)
			pi->proc_table[curr].next = entry;
    335f:	48 8b 13             	mov    (%rbx),%rdx
			pi->io_seq_end = entry;
    3362:	44 89 6b 14          	mov    %r13d,0x14(%rbx)
			pi->proc_table[curr].next = entry;
    3366:	44 89 6c 02 64       	mov    %r13d,0x64(%rdx,%rax,1)
    336b:	eb c7                	jmp    3334 <enqueue_writeback_io_req+0x1d4>
			pi->proc_table[pi->io_seq].prev = entry;
    336d:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    3374:	00 
    3375:	4c 29 c0             	sub    %r8,%rax
    3378:	48 c1 e0 04          	shl    $0x4,%rax
    337c:	44 89 6c 07 68       	mov    %r13d,0x68(%rdi,%rax,1)
			pi->proc_table[entry].next = pi->io_seq;
    3381:	8b 53 10             	mov    0x10(%rbx),%edx
    3384:	48 8b 03             	mov    (%rbx),%rax
    3387:	89 54 28 64          	mov    %edx,0x64(%rax,%rbp,1)
			pi->io_seq = entry;
    338b:	44 89 6b 10          	mov    %r13d,0x10(%rbx)
}
    338f:	48 83 c4 10          	add    $0x10,%rsp
    3393:	5b                   	pop    %rbx
    3394:	5d                   	pop    %rbp
    3395:	41 5c                	pop    %r12
    3397:	41 5d                	pop    %r13
    3399:	41 5e                	pop    %r14
    339b:	41 5f                	pop    %r15
    339d:	e9 00 00 00 00       	jmp    33a2 <enqueue_writeback_io_req+0x242>
	BUG_ON(pi->free_seq >= NR_MAX_PARALLEL_IO);
    33a2:	0f 0b                	ud2
    33a4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    33ab:	00 00 00 00 
    33af:	90                   	nop

00000000000033b0 <__pfx_nvmev_proc_io_sq>:
    33b0:	90                   	nop
    33b1:	90                   	nop
    33b2:	90                   	nop
    33b3:	90                   	nop
    33b4:	90                   	nop
    33b5:	90                   	nop
    33b6:	90                   	nop
    33b7:	90                   	nop
    33b8:	90                   	nop
    33b9:	90                   	nop
    33ba:	90                   	nop
    33bb:	90                   	nop
    33bc:	90                   	nop
    33bd:	90                   	nop
    33be:	90                   	nop
    33bf:	90                   	nop

00000000000033c0 <nvmev_proc_io_sq>:
{
    33c0:	f3 0f 1e fa          	endbr64
    33c4:	e8 00 00 00 00       	call   33c9 <nvmev_proc_io_sq+0x9>
    33c9:	41 57                	push   %r15
	int num_proc = new_db - old_db;
    33cb:	29 d6                	sub    %edx,%esi
{
    33cd:	41 56                	push   %r14
    33cf:	41 55                	push   %r13
    33d1:	41 54                	push   %r12
    33d3:	41 89 d4             	mov    %edx,%r12d
    33d6:	55                   	push   %rbp
    33d7:	53                   	push   %rbx
    33d8:	48 83 ec 70          	sub    $0x70,%rsp
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    33dc:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 33e3 <nvmev_proc_io_sq+0x23>
{
    33e3:	89 7c 24 18          	mov    %edi,0x18(%rsp)
    33e7:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    33ee:	00 00 
    33f0:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    33f5:	31 c0                	xor    %eax,%eax
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    33f7:	48 63 c7             	movslq %edi,%rax
	int num_proc = new_db - old_db;
    33fa:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    33fe:	4c 8b ac c1 c8 01 00 	mov    0x1c8(%rcx,%rax,8),%r13
    3405:	00 
	if (unlikely(!sq))
    3406:	4d 85 ed             	test   %r13,%r13
    3409:	0f 84 0e 01 00 00    	je     351d <nvmev_proc_io_sq+0x15d>
	if (unlikely(num_proc < 0))
    340f:	85 f6                	test   %esi,%esi
    3411:	0f 88 e8 04 00 00    	js     38ff <nvmev_proc_io_sq+0x53f>
	for (seq = 0; seq < num_proc; seq++) {
    3417:	8b 54 24 1c          	mov    0x1c(%rsp),%edx
    341b:	85 d2                	test   %edx,%edx
    341d:	0f 8e e9 04 00 00    	jle    390c <nvmev_proc_io_sq+0x54c>
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    3423:	8b 7c 24 18          	mov    0x18(%rsp),%edi
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    3427:	48 83 c0 38          	add    $0x38,%rax
    342b:	44 89 64 24 28       	mov    %r12d,0x28(%rsp)
	struct nvmev_request req = {
    3430:	4d 89 ee             	mov    %r13,%r14
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    3433:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
	int sq_entry = old_db;
    3438:	44 89 e5             	mov    %r12d,%ebp
	for (seq = 0; seq < num_proc; seq++) {
    343b:	45 31 d2             	xor    %r10d,%r10d
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    343e:	83 ef 01             	sub    $0x1,%edi
    3441:	89 7c 24 2c          	mov    %edi,0x2c(%rsp)
	return sched_clock_cpu(cpu);
    3445:	8b b9 c0 00 00 00    	mov    0xc0(%rcx),%edi
    344b:	44 89 54 24 14       	mov    %r10d,0x14(%rsp)
    3450:	e8 00 00 00 00       	call   3455 <nvmev_proc_io_sq+0x95>
	struct nvme_command *cmd = &sq_entry(sq_entry);
    3455:	41 89 e8             	mov    %ebp,%r8d
    3458:	4c 63 cd             	movslq %ebp,%r9
    345b:	49 89 c7             	mov    %rax,%r15
    345e:	41 83 e0 3f          	and    $0x3f,%r8d
    3462:	49 8b 46 30          	mov    0x30(%r14),%rax
    3466:	49 c1 e9 06          	shr    $0x6,%r9
    346a:	49 c1 e0 06          	shl    $0x6,%r8
    346e:	4c 89 0c 24          	mov    %r9,(%rsp)
	if (!ns->proc_io_cmd(ns, &req, &ret))
    3472:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
	struct nvme_command *cmd = &sq_entry(sq_entry);
    3477:	4c 89 c1             	mov    %r8,%rcx
    347a:	4a 03 0c c8          	add    (%rax,%r9,8),%rcx
	struct nvmev_request req = {
    347e:	8b 44 24 18          	mov    0x18(%rsp),%eax
	struct nvme_command *cmd = &sq_entry(sq_entry);
    3482:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
	uint32_t nsid = cmd->common.nsid - 1;
    3487:	8b 51 04             	mov    0x4(%rcx),%edx
	struct nvmev_request req = {
    348a:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
    348f:	89 44 24 38          	mov    %eax,0x38(%rsp)
	struct nvmev_ns *ns = &nvmev_vdev->ns[nsid];
    3493:	8d 7a ff             	lea    -0x1(%rdx),%edi
    3496:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 349d <nvmev_proc_io_sq+0xdd>
	struct nvmev_request req = {
    349d:	4c 89 7c 24 40       	mov    %r15,0x40(%rsp)
	struct nvmev_ns *ns = &nvmev_vdev->ns[nsid];
    34a2:	48 c1 e7 06          	shl    $0x6,%rdi
	struct nvmev_request req = {
    34a6:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    34ad:	00 
	struct nvmev_ns *ns = &nvmev_vdev->ns[nsid];
    34ae:	48 03 ba a8 01 00 00 	add    0x1a8(%rdx),%rdi
	struct nvmev_result ret = {
    34b5:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
	if (!ns->proc_io_cmd(ns, &req, &ret))
    34ba:	48 8d 54 24 48       	lea    0x48(%rsp),%rdx
	struct nvmev_result ret = {
    34bf:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    34c6:	00 00 
    34c8:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    34cf:	00 00 
	if (!ns->proc_io_cmd(ns, &req, &ret))
    34d1:	48 8b 47 28          	mov    0x28(%rdi),%rax
	struct nvmev_result ret = {
    34d5:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    34dc:	00 00 
	if (!ns->proc_io_cmd(ns, &req, &ret))
    34de:	e8 00 00 00 00       	call   34e3 <nvmev_proc_io_sq+0x123>
    34e3:	4c 8b 0c 24          	mov    (%rsp),%r9
    34e7:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    34ec:	84 c0                	test   %al,%al
    34ee:	44 8b 54 24 14       	mov    0x14(%rsp),%r10d
    34f3:	75 51                	jne    3546 <nvmev_proc_io_sq+0x186>
	sq->stat.max_nr_in_flight = max_t(int, sq->stat.max_nr_in_flight, sq->stat.nr_in_flight);
    34f5:	44 8b 64 24 28       	mov    0x28(%rsp),%r12d
    34fa:	41 8b 45 20          	mov    0x20(%r13),%eax
	latest_db = (old_db + seq) % sq->queue_size;
    34fe:	41 8b 75 10          	mov    0x10(%r13),%esi
    3502:	45 01 d4             	add    %r10d,%r12d
	sq->stat.max_nr_in_flight = max_t(int, sq->stat.max_nr_in_flight, sq->stat.nr_in_flight);
    3505:	41 8b 55 24          	mov    0x24(%r13),%edx
	sq->stat.nr_dispatch++;
    3509:	41 83 45 1c 01       	addl   $0x1,0x1c(%r13)
	sq->stat.max_nr_in_flight = max_t(int, sq->stat.max_nr_in_flight, sq->stat.nr_in_flight);
    350e:	39 c2                	cmp    %eax,%edx
    3510:	0f 4c d0             	cmovl  %eax,%edx
	latest_db = (old_db + seq) % sq->queue_size;
    3513:	44 89 e0             	mov    %r12d,%eax
	sq->stat.max_nr_in_flight = max_t(int, sq->stat.max_nr_in_flight, sq->stat.nr_in_flight);
    3516:	41 89 55 24          	mov    %edx,0x24(%r13)
	latest_db = (old_db + seq) % sq->queue_size;
    351a:	99                   	cltd
    351b:	f7 fe                	idiv   %esi
}
    351d:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    3522:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    3529:	00 00 
    352b:	0f 85 e8 03 00 00    	jne    3919 <nvmev_proc_io_sq+0x559>
    3531:	48 83 c4 70          	add    $0x70,%rsp
    3535:	89 d0                	mov    %edx,%eax
    3537:	5b                   	pop    %rbx
    3538:	5d                   	pop    %rbp
    3539:	41 5c                	pop    %r12
    353b:	41 5d                	pop    %r13
    353d:	41 5e                	pop    %r14
    353f:	41 5f                	pop    %r15
    3541:	e9 00 00 00 00       	jmp    3546 <nvmev_proc_io_sq+0x186>
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    3546:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 354d <nvmev_proc_io_sq+0x18d>
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    354d:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
    3551:	31 d2                	xor    %edx,%edx
    3553:	8b b1 c4 00 00 00    	mov    0xc4(%rcx),%esi
    3559:	f7 f6                	div    %esi
    355b:	89 d0                	mov    %edx,%eax
	struct nvmev_proc_info *pi = &nvmev_vdev->proc_info[proc_turn];
    355d:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
	return (sqid - 1) % nvmev_vdev->config.nr_io_cpu;
    3561:	48 89 c7             	mov    %rax,%rdi
	struct nvmev_proc_info *pi = &nvmev_vdev->proc_info[proc_turn];
    3564:	48 c1 e3 04          	shl    $0x4,%rbx
    3568:	48 03 99 70 01 00 00 	add    0x170(%rcx),%rbx
	unsigned int entry = pi->free_seq;
    356f:	44 8b 5b 08          	mov    0x8(%rbx),%r11d
	if (pi->proc_table[entry].next >= NR_MAX_PARALLEL_IO) {
    3573:	48 8b 03             	mov    (%rbx),%rax
    3576:	4e 8d 24 dd 00 00 00 	lea    0x0(,%r11,8),%r12
    357d:	00 
    357e:	4d 29 dc             	sub    %r11,%r12
    3581:	49 c1 e4 04          	shl    $0x4,%r12
    3585:	42 81 7c 20 64 ff 3f 	cmpl   $0x3fff,0x64(%rax,%r12,1)
    358c:	00 00 
    358e:	0f 87 de 02 00 00    	ja     3872 <nvmev_proc_io_sq+0x4b2>
	if (++proc_turn == nvmev_vdev->config.nr_io_cpu)
    3594:	83 c7 01             	add    $0x1,%edi
		proc_turn = 0;
    3597:	31 c0                	xor    %eax,%eax
    3599:	39 fe                	cmp    %edi,%esi
	__enqueue_io_req(sqid, sq->cqid, sq_entry, nsecs_start, &ret);
    359b:	41 8b 76 04          	mov    0x4(%r14),%esi
		proc_turn = 0;
    359f:	0f 44 f8             	cmove  %eax,%edi
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    35a2:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    35a7:	48 8b 44 c1 08       	mov    0x8(%rcx,%rax,8),%rax
	nvmev_vdev->proc_turn = proc_turn;
    35ac:	89 b9 78 01 00 00    	mov    %edi,0x178(%rcx)
	pi->free_seq = pi->proc_table[entry].next;
    35b2:	48 8b 3b             	mov    (%rbx),%rdi
    35b5:	4c 01 e7             	add    %r12,%rdi
    35b8:	8b 4f 64             	mov    0x64(%rdi),%ecx
    35bb:	89 4b 08             	mov    %ecx,0x8(%rbx)
	BUG_ON(pi->free_seq >= NR_MAX_PARALLEL_IO);
    35be:	81 f9 ff 3f 00 00    	cmp    $0x3fff,%ecx
    35c4:	0f 87 33 03 00 00    	ja     38fd <nvmev_proc_io_sq+0x53d>
	pi->proc_table[entry].sqid = sqid;
    35ca:	8b 4c 24 18          	mov    0x18(%rsp),%ecx
    35ce:	44 89 54 24 14       	mov    %r10d,0x14(%rsp)
    35d3:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
    35d8:	89 0f                	mov    %ecx,(%rdi)
	pi->proc_table[entry].cqid = cqid;
    35da:	48 8b 0b             	mov    (%rbx),%rcx
    35dd:	44 89 1c 24          	mov    %r11d,(%rsp)
    35e1:	42 89 74 21 04       	mov    %esi,0x4(%rcx,%r12,1)
	pi->proc_table[entry].sq_entry = sq_entry;
    35e6:	48 8b 0b             	mov    (%rbx),%rcx
    35e9:	42 89 6c 21 08       	mov    %ebp,0x8(%rcx,%r12,1)
	pi->proc_table[entry].command_id = sq_entry(sq_entry).common.command_id;
    35ee:	48 8b 40 30          	mov    0x30(%rax),%rax
    35f2:	48 8b 0b             	mov    (%rbx),%rcx
    35f5:	4a 8b 04 c8          	mov    (%rax,%r9,8),%rax
    35f9:	42 0f b7 44 00 02    	movzwl 0x2(%rax,%r8,1),%eax
    35ff:	42 89 44 21 0c       	mov    %eax,0xc(%rcx,%r12,1)
	pi->proc_table[entry].nsecs_start = nsecs_start;
    3604:	48 8b 03             	mov    (%rbx),%rax
    3607:	4e 89 7c 20 10       	mov    %r15,0x10(%rax,%r12,1)
	pi->proc_table[entry].nsecs_enqueue = local_clock();
    360c:	4c 8b 33             	mov    (%rbx),%r14
    360f:	4d 01 e6             	add    %r12,%r14
	return sched_clock_cpu(raw_smp_processor_id());
    3612:	65 8b 3d 00 00 00 00 	mov    %gs:0x0(%rip),%edi        # 3619 <nvmev_proc_io_sq+0x259>
    3619:	e8 00 00 00 00       	call   361e <nvmev_proc_io_sq+0x25e>
	pi->proc_table[entry].nsecs_target = ret->nsecs_target;
    361e:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
	pi->proc_table[entry].nsecs_enqueue = local_clock();
    3623:	49 89 46 20          	mov    %rax,0x20(%r14)
	pi->proc_table[entry].nsecs_target = ret->nsecs_target;
    3627:	48 8b 03             	mov    (%rbx),%rax
    362a:	4a 89 4c 20 18       	mov    %rcx,0x18(%rax,%r12,1)
	pi->proc_table[entry].status = ret->status;
    362f:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    3633:	48 8b 03             	mov    (%rbx),%rax
    3636:	42 89 4c 20 44       	mov    %ecx,0x44(%rax,%r12,1)
	pi->proc_table[entry].is_completed = false;
    363b:	48 8b 03             	mov    (%rbx),%rax
    363e:	42 c6 44 20 41 00    	movb   $0x0,0x41(%rax,%r12,1)
	pi->proc_table[entry].is_copied = false;
    3644:	48 8b 03             	mov    (%rbx),%rax
    3647:	42 c6 44 20 40 00    	movb   $0x0,0x40(%rax,%r12,1)
	pi->proc_table[entry].prev = -1;
    364d:	48 8b 03             	mov    (%rbx),%rax
    3650:	42 c7 44 20 68 ff ff 	movl   $0xffffffff,0x68(%rax,%r12,1)
    3657:	ff ff 
	pi->proc_table[entry].next = -1;
    3659:	48 8b 03             	mov    (%rbx),%rax
    365c:	42 c7 44 20 64 ff ff 	movl   $0xffffffff,0x64(%rax,%r12,1)
    3663:	ff ff 
	pi->proc_table[entry].writeback_cmd = false;
    3665:	48 8b 03             	mov    (%rbx),%rax
    3668:	42 c6 44 20 50 00    	movb   $0x0,0x50(%rax,%r12,1)
	mb(); /* IO worker shall see the updated pi at once */
    366e:	0f ae f0             	mfence
	if (pi->io_seq == -1) {
    3671:	8b 7b 10             	mov    0x10(%rbx),%edi
    3674:	8b 14 24             	mov    (%rsp),%edx
    3677:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
    367c:	44 8b 54 24 14       	mov    0x14(%rsp),%r10d
    3681:	83 ff ff             	cmp    $0xffffffff,%edi
    3684:	0f 84 ef 01 00 00    	je     3879 <nvmev_proc_io_sq+0x4b9>
		unsigned int curr = pi->io_seq_end;
    368a:	8b 73 14             	mov    0x14(%rbx),%esi
			pi->proc_table[pi->io_seq].prev = entry;
    368d:	4c 8b 03             	mov    (%rbx),%r8
		while (curr != -1) {
    3690:	83 fe ff             	cmp    $0xffffffff,%esi
    3693:	0f 84 00 02 00 00    	je     3899 <nvmev_proc_io_sq+0x4d9>
			if (pi->proc_table[curr].nsecs_target <= pi->proc_io_nsecs)
    3699:	4c 8b 4b 18          	mov    0x18(%rbx),%r9
			if (pi->proc_table[curr].nsecs_target <= ret->nsecs_target)
    369d:	4c 8b 5c 24 50       	mov    0x50(%rsp),%r11
    36a2:	eb 11                	jmp    36b5 <nvmev_proc_io_sq+0x2f5>
    36a4:	4d 39 f3             	cmp    %r14,%r11
    36a7:	73 29                	jae    36d2 <nvmev_proc_io_sq+0x312>
			curr = pi->proc_table[curr].prev;
    36a9:	8b 70 68             	mov    0x68(%rax),%esi
		while (curr != -1) {
    36ac:	83 fe ff             	cmp    $0xffffffff,%esi
    36af:	0f 84 e4 01 00 00    	je     3899 <nvmev_proc_io_sq+0x4d9>
			if (pi->proc_table[curr].nsecs_target <= pi->proc_io_nsecs)
    36b5:	89 f1                	mov    %esi,%ecx
    36b7:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
    36be:	00 
    36bf:	48 29 c8             	sub    %rcx,%rax
    36c2:	48 c1 e0 04          	shl    $0x4,%rax
    36c6:	4c 01 c0             	add    %r8,%rax
    36c9:	4c 8b 70 18          	mov    0x18(%rax),%r14
    36cd:	4d 39 f1             	cmp    %r14,%r9
    36d0:	72 d2                	jb     36a4 <nvmev_proc_io_sq+0x2e4>
		} else if (pi->proc_table[curr].next == -1) { /* Tail */
    36d2:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
    36d9:	00 
    36da:	48 29 c8             	sub    %rcx,%rax
			pi->proc_table[entry].prev = curr;
    36dd:	4b 8d 0c 20          	lea    (%r8,%r12,1),%rcx
		} else if (pi->proc_table[curr].next == -1) { /* Tail */
    36e1:	48 c1 e0 04          	shl    $0x4,%rax
    36e5:	41 83 7c 00 64 ff    	cmpl   $0xffffffff,0x64(%r8,%rax,1)
    36eb:	0f 84 ed 01 00 00    	je     38de <nvmev_proc_io_sq+0x51e>
			pi->proc_table[entry].prev = curr;
    36f1:	89 71 68             	mov    %esi,0x68(%rcx)
			pi->proc_table[entry].next = pi->proc_table[curr].next;
    36f4:	48 8b 0b             	mov    (%rbx),%rcx
    36f7:	8b 74 01 64          	mov    0x64(%rcx,%rax,1),%esi
    36fb:	42 89 74 21 64       	mov    %esi,0x64(%rcx,%r12,1)
			pi->proc_table[pi->proc_table[entry].next].prev = entry;
    3700:	48 8b 33             	mov    (%rbx),%rsi
    3703:	42 8b 7c 26 64       	mov    0x64(%rsi,%r12,1),%edi
    3708:	48 8d 0c fd 00 00 00 	lea    0x0(,%rdi,8),%rcx
    370f:	00 
    3710:	48 29 f9             	sub    %rdi,%rcx
    3713:	48 c1 e1 04          	shl    $0x4,%rcx
    3717:	89 54 0e 68          	mov    %edx,0x68(%rsi,%rcx,1)
			pi->proc_table[curr].next = entry;
    371b:	48 8b 0b             	mov    (%rbx),%rcx
    371e:	89 54 01 64          	mov    %edx,0x64(%rcx,%rax,1)
	for (turn = 0; turn < nvmev_vdev->config.nr_io_cpu; turn++) {
    3722:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 3729 <nvmev_proc_io_sq+0x369>
    3729:	8b b1 c4 00 00 00    	mov    0xc4(%rcx),%esi
    372f:	45 31 c9             	xor    %r9d,%r9d
    3732:	85 f6                	test   %esi,%esi
    3734:	0f 84 f4 00 00 00    	je     382e <nvmev_proc_io_sq+0x46e>
		pi = &nvmev_vdev->proc_info[turn];
    373a:	44 89 c8             	mov    %r9d,%eax
    373d:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
    3741:	48 c1 e6 04          	shl    $0x4,%rsi
    3745:	48 03 b1 70 01 00 00 	add    0x170(%rcx),%rsi
		first_entry = pi->io_seq;
    374c:	44 8b 5e 10          	mov    0x10(%rsi),%r11d
		while (curr != -1) {
    3750:	41 83 fb ff          	cmp    $0xffffffff,%r11d
    3754:	0f 84 c3 00 00 00    	je     381d <nvmev_proc_io_sq+0x45d>
			pe = &pi->proc_table[curr];
    375a:	48 8b 3e             	mov    (%rsi),%rdi
		curr = first_entry;
    375d:	44 89 da             	mov    %r11d,%edx
		unsigned int last_entry = -1;
    3760:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    3766:	eb 1b                	jmp    3783 <nvmev_proc_io_sq+0x3c3>
			if (pe->is_completed == true && pe->is_copied == true &&
    3768:	48 8b 58 18          	mov    0x18(%rax),%rbx
    376c:	48 39 5e 18          	cmp    %rbx,0x18(%rsi)
    3770:	72 2d                	jb     379f <nvmev_proc_io_sq+0x3df>
				curr = pe->next;
    3772:	8b 58 64             	mov    0x64(%rax),%ebx
		while (curr != -1) {
    3775:	41 89 d0             	mov    %edx,%r8d
    3778:	83 fb ff             	cmp    $0xffffffff,%ebx
    377b:	0f 84 e5 00 00 00    	je     3866 <nvmev_proc_io_sq+0x4a6>
				curr = pe->next;
    3781:	89 da                	mov    %ebx,%edx
			pe = &pi->proc_table[curr];
    3783:	89 d3                	mov    %edx,%ebx
    3785:	48 8d 04 dd 00 00 00 	lea    0x0(,%rbx,8),%rax
    378c:	00 
    378d:	48 29 d8             	sub    %rbx,%rax
    3790:	48 c1 e0 04          	shl    $0x4,%rax
    3794:	48 01 f8             	add    %rdi,%rax
			if (pe->is_completed == true && pe->is_copied == true &&
    3797:	66 81 78 40 01 01    	cmpw   $0x101,0x40(%rax)
    379d:	74 c9                	je     3768 <nvmev_proc_io_sq+0x3a8>
		if (last_entry != -1) {
    379f:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
    37a3:	74 78                	je     381d <nvmev_proc_io_sq+0x45d>
			pe = &pi->proc_table[last_entry];
    37a5:	44 89 c2             	mov    %r8d,%edx
    37a8:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    37af:	00 
    37b0:	48 29 d0             	sub    %rdx,%rax
    37b3:	48 c1 e0 04          	shl    $0x4,%rax
    37b7:	48 01 f8             	add    %rdi,%rax
			pi->io_seq = pe->next;
    37ba:	8b 50 64             	mov    0x64(%rax),%edx
    37bd:	89 56 10             	mov    %edx,0x10(%rsi)
			if (pe->next != -1) {
    37c0:	83 fa ff             	cmp    $0xffffffff,%edx
    37c3:	74 1a                	je     37df <nvmev_proc_io_sq+0x41f>
				pi->proc_table[pe->next].prev = -1;
    37c5:	48 8d 1c d5 00 00 00 	lea    0x0(,%rdx,8),%rbx
    37cc:	00 
    37cd:	48 29 d3             	sub    %rdx,%rbx
    37d0:	48 89 da             	mov    %rbx,%rdx
    37d3:	48 c1 e2 04          	shl    $0x4,%rdx
    37d7:	c7 44 17 68 ff ff ff 	movl   $0xffffffff,0x68(%rdi,%rdx,1)
    37de:	ff 
		unsigned int last_entry = -1;
    37df:	44 89 c2             	mov    %r8d,%edx
			pe = &pi->proc_table[first_entry];
    37e2:	45 89 d8             	mov    %r11d,%r8d
			pe->next = -1;
    37e5:	c7 40 64 ff ff ff ff 	movl   $0xffffffff,0x64(%rax)
			pe->prev = pi->free_seq_end;
    37ec:	8b 7e 0c             	mov    0xc(%rsi),%edi
    37ef:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    37f6:	00 
    37f7:	4c 29 c0             	sub    %r8,%rax
    37fa:	48 c1 e0 04          	shl    $0x4,%rax
    37fe:	48 03 06             	add    (%rsi),%rax
    3801:	89 78 68             	mov    %edi,0x68(%rax)
			pe->next = first_entry;
    3804:	48 8d 04 fd 00 00 00 	lea    0x0(,%rdi,8),%rax
    380b:	00 
    380c:	48 29 f8             	sub    %rdi,%rax
    380f:	48 c1 e0 04          	shl    $0x4,%rax
    3813:	48 03 06             	add    (%rsi),%rax
    3816:	44 89 58 64          	mov    %r11d,0x64(%rax)
			pi->free_seq_end = last_entry;
    381a:	89 56 0c             	mov    %edx,0xc(%rsi)
	for (turn = 0; turn < nvmev_vdev->config.nr_io_cpu; turn++) {
    381d:	41 83 c1 01          	add    $0x1,%r9d
    3821:	44 3b 89 c4 00 00 00 	cmp    0xc4(%rcx),%r9d
    3828:	0f 82 0c ff ff ff    	jb     373a <nvmev_proc_io_sq+0x37a>
		if (++sq_entry == sq->queue_size) {
    382e:	41 8b 75 10          	mov    0x10(%r13),%esi
    3832:	83 c5 01             	add    $0x1,%ebp
			sq_entry = 0;
    3835:	31 c0                	xor    %eax,%eax
    3837:	39 ee                	cmp    %ebp,%esi
    3839:	0f 44 e8             	cmove  %eax,%ebp
		sq->stat.nr_in_flight++;
    383c:	41 8b 45 20          	mov    0x20(%r13),%eax
		sq->stat.nr_dispatched++;
    3840:	41 83 45 18 01       	addl   $0x1,0x18(%r13)
	for (seq = 0; seq < num_proc; seq++) {
    3845:	41 83 c2 01          	add    $0x1,%r10d
		sq->stat.nr_in_flight++;
    3849:	83 c0 01             	add    $0x1,%eax
    384c:	41 89 45 20          	mov    %eax,0x20(%r13)
	for (seq = 0; seq < num_proc; seq++) {
    3850:	44 39 54 24 1c       	cmp    %r10d,0x1c(%rsp)
    3855:	74 76                	je     38cd <nvmev_proc_io_sq+0x50d>
	struct nvmev_submission_queue *sq = nvmev_vdev->sqes[sqid];
    3857:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    385c:	4c 8b 74 c1 08       	mov    0x8(%rcx,%rax,8),%r14
    3861:	e9 df fb ff ff       	jmp    3445 <nvmev_proc_io_sq+0x85>
			pi->io_seq = pe->next;
    3866:	c7 46 10 ff ff ff ff 	movl   $0xffffffff,0x10(%rsi)
			if (pe->next != -1) {
    386d:	e9 70 ff ff ff       	jmp    37e2 <nvmev_proc_io_sq+0x422>
		WARN_ON_ONCE("IO queue is almost full");
    3872:	0f 0b                	ud2
		return;
    3874:	e9 b6 fe ff ff       	jmp    372f <nvmev_proc_io_sq+0x36f>
		pi->io_seq = entry;
    3879:	4c 89 d8             	mov    %r11,%rax
	for (turn = 0; turn < nvmev_vdev->config.nr_io_cpu; turn++) {
    387c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 3883 <nvmev_proc_io_sq+0x4c3>
		pi->io_seq = entry;
    3883:	48 c1 e0 20          	shl    $0x20,%rax
    3887:	49 09 c3             	or     %rax,%r11
    388a:	4c 89 5b 10          	mov    %r11,0x10(%rbx)
	for (turn = 0; turn < nvmev_vdev->config.nr_io_cpu; turn++) {
    388e:	8b b1 c4 00 00 00    	mov    0xc4(%rcx),%esi
    3894:	e9 96 fe ff ff       	jmp    372f <nvmev_proc_io_sq+0x36f>
			pi->proc_table[pi->io_seq].prev = entry;
    3899:	48 8d 04 fd 00 00 00 	lea    0x0(,%rdi,8),%rax
    38a0:	00 
    38a1:	48 29 f8             	sub    %rdi,%rax
    38a4:	48 c1 e0 04          	shl    $0x4,%rax
    38a8:	41 89 54 00 68       	mov    %edx,0x68(%r8,%rax,1)
			pi->proc_table[entry].next = pi->io_seq;
    38ad:	8b 4b 10             	mov    0x10(%rbx),%ecx
    38b0:	48 8b 03             	mov    (%rbx),%rax
    38b3:	42 89 4c 20 64       	mov    %ecx,0x64(%rax,%r12,1)
	for (turn = 0; turn < nvmev_vdev->config.nr_io_cpu; turn++) {
    38b8:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 38bf <nvmev_proc_io_sq+0x4ff>
			pi->io_seq = entry;
    38bf:	89 53 10             	mov    %edx,0x10(%rbx)
	for (turn = 0; turn < nvmev_vdev->config.nr_io_cpu; turn++) {
    38c2:	8b b1 c4 00 00 00    	mov    0xc4(%rcx),%esi
    38c8:	e9 62 fe ff ff       	jmp    372f <nvmev_proc_io_sq+0x36f>
    38cd:	44 8b 64 24 28       	mov    0x28(%rsp),%r12d
	latest_db = (old_db + seq) % sq->queue_size;
    38d2:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
    38d6:	41 01 cc             	add    %ecx,%r12d
    38d9:	e9 27 fc ff ff       	jmp    3505 <nvmev_proc_io_sq+0x145>
			pi->proc_table[entry].prev = curr;
    38de:	89 71 68             	mov    %esi,0x68(%rcx)
			pi->proc_table[curr].next = entry;
    38e1:	48 8b 0b             	mov    (%rbx),%rcx
			pi->io_seq_end = entry;
    38e4:	89 53 14             	mov    %edx,0x14(%rbx)
			pi->proc_table[curr].next = entry;
    38e7:	89 54 01 64          	mov    %edx,0x64(%rcx,%rax,1)
	for (turn = 0; turn < nvmev_vdev->config.nr_io_cpu; turn++) {
    38eb:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 38f2 <nvmev_proc_io_sq+0x532>
    38f2:	8b b1 c4 00 00 00    	mov    0xc4(%rcx),%esi
    38f8:	e9 32 fe ff ff       	jmp    372f <nvmev_proc_io_sq+0x36f>
	BUG_ON(pi->free_seq >= NR_MAX_PARALLEL_IO);
    38fd:	0f 0b                	ud2
		num_proc += sq->queue_size;
    38ff:	41 8b 75 10          	mov    0x10(%r13),%esi
    3903:	01 74 24 1c          	add    %esi,0x1c(%rsp)
    3907:	e9 0b fb ff ff       	jmp    3417 <nvmev_proc_io_sq+0x57>
	sq->stat.max_nr_in_flight = max_t(int, sq->stat.max_nr_in_flight, sq->stat.nr_in_flight);
    390c:	41 8b 45 20          	mov    0x20(%r13),%eax
		num_proc += sq->queue_size;
    3910:	41 8b 75 10          	mov    0x10(%r13),%esi
    3914:	e9 ec fb ff ff       	jmp    3505 <nvmev_proc_io_sq+0x145>
}
    3919:	e8 00 00 00 00       	call   391e <nvmev_proc_io_sq+0x55e>
    391e:	66 90                	xchg   %ax,%ax

0000000000003920 <__pfx_nvmev_proc_io_cq>:
    3920:	90                   	nop
    3921:	90                   	nop
    3922:	90                   	nop
    3923:	90                   	nop
    3924:	90                   	nop
    3925:	90                   	nop
    3926:	90                   	nop
    3927:	90                   	nop
    3928:	90                   	nop
    3929:	90                   	nop
    392a:	90                   	nop
    392b:	90                   	nop
    392c:	90                   	nop
    392d:	90                   	nop
    392e:	90                   	nop
    392f:	90                   	nop

0000000000003930 <nvmev_proc_io_cq>:
{
    3930:	f3 0f 1e fa          	endbr64
    3934:	e8 00 00 00 00       	call   3939 <nvmev_proc_io_cq+0x9>
	struct nvmev_completion_queue *cq = nvmev_vdev->cqes[cqid];
    3939:	4c 8b 0d 00 00 00 00 	mov    0x0(%rip),%r9        # 3940 <nvmev_proc_io_cq+0x10>
    3940:	48 63 ff             	movslq %edi,%rdi
{
    3943:	41 89 f0             	mov    %esi,%r8d
	struct nvmev_completion_queue *cq = nvmev_vdev->cqes[cqid];
    3946:	49 8b b4 f9 10 04 00 	mov    0x410(%r9,%rdi,8),%rsi
    394d:	00 
	for (i = old_db; i != new_db; i++) {
    394e:	44 39 c2             	cmp    %r8d,%edx
    3951:	74 33                	je     3986 <nvmev_proc_io_cq+0x56>
		if (i >= cq->queue_size) {
    3953:	39 56 14             	cmp    %edx,0x14(%rsi)
    3956:	7e 40                	jle    3998 <nvmev_proc_io_cq+0x68>
		nvmev_vdev->sqes[cq_entry(i).sq_id]->stat.nr_in_flight--;
    3958:	48 8b 7e 28          	mov    0x28(%rsi),%rdi
    395c:	48 63 ca             	movslq %edx,%rcx
    395f:	0f b6 c2             	movzbl %dl,%eax
	for (i = old_db; i != new_db; i++) {
    3962:	83 c2 01             	add    $0x1,%edx
		nvmev_vdev->sqes[cq_entry(i).sq_id]->stat.nr_in_flight--;
    3965:	48 c1 e9 08          	shr    $0x8,%rcx
    3969:	48 c1 e0 04          	shl    $0x4,%rax
    396d:	48 03 04 cf          	add    (%rdi,%rcx,8),%rax
    3971:	0f b7 40 0a          	movzwl 0xa(%rax),%eax
    3975:	49 8b 84 c1 c8 01 00 	mov    0x1c8(%r9,%rax,8),%rax
    397c:	00 
    397d:	83 68 20 01          	subl   $0x1,0x20(%rax)
	for (i = old_db; i != new_db; i++) {
    3981:	44 39 c2             	cmp    %r8d,%edx
    3984:	75 cd                	jne    3953 <nvmev_proc_io_cq+0x23>
	cq->cq_tail = new_db - 1;
    3986:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    398a:	89 46 20             	mov    %eax,0x20(%rsi)
	if (new_db == -1)
    398d:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
    3991:	74 09                	je     399c <nvmev_proc_io_cq+0x6c>
}
    3993:	e9 00 00 00 00       	jmp    3998 <nvmev_proc_io_cq+0x68>
    3998:	31 d2                	xor    %edx,%edx
	for (i = old_db; i != new_db; i++) {
    399a:	eb b2                	jmp    394e <nvmev_proc_io_cq+0x1e>
		cq->cq_tail = cq->queue_size - 1;
    399c:	8b 46 14             	mov    0x14(%rsi),%eax
    399f:	83 e8 01             	sub    $0x1,%eax
    39a2:	89 46 20             	mov    %eax,0x20(%rsi)
}
    39a5:	e9 00 00 00 00       	jmp    39aa <nvmev_proc_io_cq+0x7a>
    39aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000039b0 <__pfx_NVMEV_IO_PROC_INIT>:
    39b0:	90                   	nop
    39b1:	90                   	nop
    39b2:	90                   	nop
    39b3:	90                   	nop
    39b4:	90                   	nop
    39b5:	90                   	nop
    39b6:	90                   	nop
    39b7:	90                   	nop
    39b8:	90                   	nop
    39b9:	90                   	nop
    39ba:	90                   	nop
    39bb:	90                   	nop
    39bc:	90                   	nop
    39bd:	90                   	nop
    39be:	90                   	nop
    39bf:	90                   	nop

00000000000039c0 <NVMEV_IO_PROC_INIT>:

void NVMEV_IO_PROC_INIT(struct nvmev_dev *nvmev_vdev)
{
    39c0:	f3 0f 1e fa          	endbr64
    39c4:	e8 00 00 00 00       	call   39c9 <NVMEV_IO_PROC_INIT+0x9>
    39c9:	41 57                	push   %r15
	return __kmalloc(bytes, flags);
    39cb:	be c0 0d 00 00       	mov    $0xdc0,%esi
    39d0:	41 56                	push   %r14
    39d2:	41 55                	push   %r13
    39d4:	41 54                	push   %r12
    39d6:	55                   	push   %rbp
    39d7:	48 89 fd             	mov    %rdi,%rbp
    39da:	53                   	push   %rbx
	if (unlikely(check_mul_overflow(n, size, &bytes)))
    39db:	8b 87 c4 00 00 00    	mov    0xc4(%rdi),%eax
    39e1:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    39e5:	48 c1 e7 04          	shl    $0x4,%rdi
	return __kmalloc(bytes, flags);
    39e9:	e8 00 00 00 00       	call   39ee <NVMEV_IO_PROC_INIT+0x2e>

	nvmev_vdev->proc_info =
		kcalloc(sizeof(struct nvmev_proc_info), nvmev_vdev->config.nr_io_cpu, GFP_KERNEL);
	nvmev_vdev->proc_turn = 0;

	for (proc_idx = 0; proc_idx < nvmev_vdev->config.nr_io_cpu; proc_idx++) {
    39ee:	8b 95 c4 00 00 00    	mov    0xc4(%rbp),%edx
	nvmev_vdev->proc_turn = 0;
    39f4:	c7 85 78 01 00 00 00 	movl   $0x0,0x178(%rbp)
    39fb:	00 00 00 
	nvmev_vdev->proc_info =
    39fe:	48 89 85 70 01 00 00 	mov    %rax,0x170(%rbp)
	for (proc_idx = 0; proc_idx < nvmev_vdev->config.nr_io_cpu; proc_idx++) {
    3a05:	85 d2                	test   %edx,%edx
    3a07:	0f 84 f6 00 00 00    	je     3b03 <NVMEV_IO_PROC_INIT+0x143>
			pi->proc_table[i].next = i + 1;
			pi->proc_table[i].prev = i - 1;
		}
		pi->proc_table[NR_MAX_PARALLEL_IO - 1].next = -1;
		pi->id = proc_idx;
		pi->free_seq = 0;
    3a0d:	49 bc 00 00 00 00 ff 	movabs $0x3fff00000000,%r12
    3a14:	3f 00 00 
    3a17:	48 89 c3             	mov    %rax,%rbx
	for (proc_idx = 0; proc_idx < nvmev_vdev->config.nr_io_cpu; proc_idx++) {
    3a1a:	45 31 ed             	xor    %r13d,%r13d
		struct nvmev_proc_info *pi = &nvmev_vdev->proc_info[proc_idx];
    3a1d:	4b 8d 44 ad 00       	lea    0x0(%r13,%r13,4),%rax
			return kmalloc_large(size, flags);
    3a22:	be c0 0d 00 00       	mov    $0xdc0,%esi
    3a27:	bf 00 00 1c 00       	mov    $0x1c0000,%edi
    3a2c:	45 89 ee             	mov    %r13d,%r14d
    3a2f:	48 c1 e0 04          	shl    $0x4,%rax
    3a33:	48 01 c3             	add    %rax,%rbx
    3a36:	e8 00 00 00 00       	call   3a3b <NVMEV_IO_PROC_INIT+0x7b>
			pi->proc_table[i].prev = i - 1;
    3a3b:	ba 70 00 00 00       	mov    $0x70,%edx
		pi->proc_table =
    3a40:	48 89 03             	mov    %rax,(%rbx)
			pi->proc_table[i].next = i + 1;
    3a43:	c7 40 64 01 00 00 00 	movl   $0x1,0x64(%rax)
			pi->proc_table[i].prev = i - 1;
    3a4a:	48 8b 03             	mov    (%rbx),%rax
    3a4d:	c7 40 68 ff ff ff ff 	movl   $0xffffffff,0x68(%rax)
    3a54:	31 c0                	xor    %eax,%eax
			pi->proc_table[i].next = i + 1;
    3a56:	48 8b 0b             	mov    (%rbx),%rcx
    3a59:	8d 70 02             	lea    0x2(%rax),%esi
    3a5c:	89 74 11 64          	mov    %esi,0x64(%rcx,%rdx,1)
			pi->proc_table[i].prev = i - 1;
    3a60:	48 8b 0b             	mov    (%rbx),%rcx
    3a63:	89 44 11 68          	mov    %eax,0x68(%rcx,%rdx,1)
		for (i = 0; i < NR_MAX_PARALLEL_IO; i++) {
    3a67:	48 83 c0 01          	add    $0x1,%rax
    3a6b:	48 83 c2 70          	add    $0x70,%rdx
    3a6f:	48 3d ff 3f 00 00    	cmp    $0x3fff,%rax
    3a75:	75 df                	jne    3a56 <NVMEV_IO_PROC_INIT+0x96>
		pi->proc_table[NR_MAX_PARALLEL_IO - 1].next = -1;
    3a77:	48 8b 03             	mov    (%rbx),%rax
		pi->free_seq_end = NR_MAX_PARALLEL_IO - 1;
		pi->io_seq = -1;
		pi->io_seq_end = -1;

		snprintf(pi->thread_name, sizeof(pi->thread_name), "nvmev_io_worker_%d", proc_idx);
    3a7a:	4c 8d 7b 30          	lea    0x30(%rbx),%r15
    3a7e:	44 89 f1             	mov    %r14d,%ecx
    3a81:	be 20 00 00 00       	mov    $0x20,%esi
    3a86:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    3a8d:	4c 89 ff             	mov    %r15,%rdi
		pi->proc_table[NR_MAX_PARALLEL_IO - 1].next = -1;
    3a90:	c7 80 f4 ff 1b 00 ff 	movl   $0xffffffff,0x1bfff4(%rax)
    3a97:	ff ff ff 
		pi->id = proc_idx;
    3a9a:	44 89 73 20          	mov    %r14d,0x20(%rbx)
		pi->free_seq = 0;
    3a9e:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    3aa2:	48 c7 43 10 ff ff ff 	movq   $0xffffffffffffffff,0x10(%rbx)
    3aa9:	ff 
		snprintf(pi->thread_name, sizeof(pi->thread_name), "nvmev_io_worker_%d", proc_idx);
    3aaa:	e8 00 00 00 00       	call   3aaf <NVMEV_IO_PROC_INIT+0xef>

		pi->nvmev_io_worker = kthread_create(nvmev_kthread_io, pi, "%s", pi->thread_name);
    3aaf:	4d 89 f8             	mov    %r15,%r8
    3ab2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    3ab7:	48 89 de             	mov    %rbx,%rsi
    3aba:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
    3ac1:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3ac8:	e8 00 00 00 00       	call   3acd <NVMEV_IO_PROC_INIT+0x10d>
    3acd:	48 89 43 28          	mov    %rax,0x28(%rbx)

		kthread_bind(pi->nvmev_io_worker, nvmev_vdev->config.cpu_nr_io_workers[proc_idx]);
    3ad1:	42 8b b4 ad c8 00 00 	mov    0xc8(%rbp,%r13,4),%esi
    3ad8:	00 
		pi->nvmev_io_worker = kthread_create(nvmev_kthread_io, pi, "%s", pi->thread_name);
    3ad9:	48 89 c7             	mov    %rax,%rdi
	for (proc_idx = 0; proc_idx < nvmev_vdev->config.nr_io_cpu; proc_idx++) {
    3adc:	49 83 c5 01          	add    $0x1,%r13
		kthread_bind(pi->nvmev_io_worker, nvmev_vdev->config.cpu_nr_io_workers[proc_idx]);
    3ae0:	e8 00 00 00 00       	call   3ae5 <NVMEV_IO_PROC_INIT+0x125>
		wake_up_process(pi->nvmev_io_worker);
    3ae5:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    3ae9:	e8 00 00 00 00       	call   3aee <NVMEV_IO_PROC_INIT+0x12e>
	for (proc_idx = 0; proc_idx < nvmev_vdev->config.nr_io_cpu; proc_idx++) {
    3aee:	44 3b ad c4 00 00 00 	cmp    0xc4(%rbp),%r13d
    3af5:	73 0c                	jae    3b03 <NVMEV_IO_PROC_INIT+0x143>
		struct nvmev_proc_info *pi = &nvmev_vdev->proc_info[proc_idx];
    3af7:	48 8b 9d 70 01 00 00 	mov    0x170(%rbp),%rbx
    3afe:	e9 1a ff ff ff       	jmp    3a1d <NVMEV_IO_PROC_INIT+0x5d>
	}
}
    3b03:	5b                   	pop    %rbx
    3b04:	5d                   	pop    %rbp
    3b05:	41 5c                	pop    %r12
    3b07:	41 5d                	pop    %r13
    3b09:	41 5e                	pop    %r14
    3b0b:	41 5f                	pop    %r15
    3b0d:	e9 00 00 00 00       	jmp    3b12 <NVMEV_IO_PROC_INIT+0x152>
    3b12:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3b19:	00 00 00 00 
    3b1d:	0f 1f 00             	nopl   (%rax)

0000000000003b20 <__pfx_NVMEV_IO_PROC_FINAL>:
    3b20:	90                   	nop
    3b21:	90                   	nop
    3b22:	90                   	nop
    3b23:	90                   	nop
    3b24:	90                   	nop
    3b25:	90                   	nop
    3b26:	90                   	nop
    3b27:	90                   	nop
    3b28:	90                   	nop
    3b29:	90                   	nop
    3b2a:	90                   	nop
    3b2b:	90                   	nop
    3b2c:	90                   	nop
    3b2d:	90                   	nop
    3b2e:	90                   	nop
    3b2f:	90                   	nop

0000000000003b30 <NVMEV_IO_PROC_FINAL>:

void NVMEV_IO_PROC_FINAL(struct nvmev_dev *nvmev_vdev)
{
    3b30:	f3 0f 1e fa          	endbr64
    3b34:	e8 00 00 00 00       	call   3b39 <NVMEV_IO_PROC_FINAL+0x9>
    3b39:	41 54                	push   %r12
    3b3b:	49 89 fc             	mov    %rdi,%r12
    3b3e:	55                   	push   %rbp
    3b3f:	53                   	push   %rbx
	unsigned int i;

	for (i = 0; i < nvmev_vdev->config.nr_io_cpu; i++) {
    3b40:	8b 87 c4 00 00 00    	mov    0xc4(%rdi),%eax
    3b46:	85 c0                	test   %eax,%eax
    3b48:	74 40                	je     3b8a <NVMEV_IO_PROC_FINAL+0x5a>
    3b4a:	31 ed                	xor    %ebp,%ebp
		struct nvmev_proc_info *pi = &nvmev_vdev->proc_info[i];
    3b4c:	89 e8                	mov    %ebp,%eax
    3b4e:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    3b52:	48 c1 e3 04          	shl    $0x4,%rbx
    3b56:	49 03 9c 24 70 01 00 	add    0x170(%r12),%rbx
    3b5d:	00 

		if (!IS_ERR_OR_NULL(pi->nvmev_io_worker)) {
    3b5e:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    3b62:	48 85 ff             	test   %rdi,%rdi
    3b65:	74 0e                	je     3b75 <NVMEV_IO_PROC_FINAL+0x45>
    3b67:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
    3b6e:	77 05                	ja     3b75 <NVMEV_IO_PROC_FINAL+0x45>
			kthread_stop(pi->nvmev_io_worker);
    3b70:	e8 00 00 00 00       	call   3b75 <NVMEV_IO_PROC_FINAL+0x45>
		}

		kfree(pi->proc_table);
    3b75:	48 8b 3b             	mov    (%rbx),%rdi
	for (i = 0; i < nvmev_vdev->config.nr_io_cpu; i++) {
    3b78:	83 c5 01             	add    $0x1,%ebp
		kfree(pi->proc_table);
    3b7b:	e8 00 00 00 00       	call   3b80 <NVMEV_IO_PROC_FINAL+0x50>
	for (i = 0; i < nvmev_vdev->config.nr_io_cpu; i++) {
    3b80:	41 3b ac 24 c4 00 00 	cmp    0xc4(%r12),%ebp
    3b87:	00 
    3b88:	72 c2                	jb     3b4c <NVMEV_IO_PROC_FINAL+0x1c>
	}

	kfree(nvmev_vdev->proc_info);
    3b8a:	49 8b bc 24 70 01 00 	mov    0x170(%r12),%rdi
    3b91:	00 
}
    3b92:	5b                   	pop    %rbx
    3b93:	5d                   	pop    %rbp
    3b94:	41 5c                	pop    %r12
	kfree(nvmev_vdev->proc_info);
    3b96:	e9 00 00 00 00       	jmp    3b9b <NVMEV_IO_PROC_FINAL+0x6b>
    3b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003ba0 <__pfx_filter>:
    3ba0:	90                   	nop
    3ba1:	90                   	nop
    3ba2:	90                   	nop
    3ba3:	90                   	nop
    3ba4:	90                   	nop
    3ba5:	90                   	nop
    3ba6:	90                   	nop
    3ba7:	90                   	nop
    3ba8:	90                   	nop
    3ba9:	90                   	nop
    3baa:	90                   	nop
    3bab:	90                   	nop
    3bac:	90                   	nop
    3bad:	90                   	nop
    3bae:	90                   	nop
    3baf:	90                   	nop

0000000000003bb0 <filter>:

	return 0;
}

static bool filter(struct dma_chan *chan, void *param)
{
    3bb0:	f3 0f 1e fa          	endbr64
    3bb4:	e8 00 00 00 00       	call   3bb9 <filter+0x9>
    3bb9:	55                   	push   %rbp
    3bba:	48 89 fd             	mov    %rdi,%rbp
    3bbd:	53                   	push   %rbx
	if (params->channel[0] == '\0')
    3bbe:	80 7e 04 00          	cmpb   $0x0,0x4(%rsi)
{
    3bc2:	48 89 f3             	mov    %rsi,%rbx
	if (params->channel[0] == '\0')
    3bc5:	74 25                	je     3bec <filter+0x3c>
	bool descriptor_reuse;
};

static inline const char *dma_chan_name(struct dma_chan *chan)
{
	return dev_name(&chan->dev->device);
    3bc7:	48 8b 47 20          	mov    0x20(%rdi),%rax
	return strcmp(dma_chan_name(chan), params->channel) == 0;
    3bcb:	48 8d 76 04          	lea    0x4(%rsi),%rsi
#include <linux/pm_wakeup.h>

static inline const char *dev_name(const struct device *dev)
{
	/* Use the init name until the kobject becomes available */
	if (dev->init_name)
    3bcf:	48 8b 78 58          	mov    0x58(%rax),%rdi
    3bd3:	48 85 ff             	test   %rdi,%rdi
    3bd6:	74 45                	je     3c1d <filter+0x6d>
    3bd8:	e8 00 00 00 00       	call   3bdd <filter+0x2d>
    3bdd:	89 c2                	mov    %eax,%edx
    3bdf:	31 c0                	xor    %eax,%eax
	return ioat_dma_match_channel(param, chan) && ioat_dma_match_device(param, chan->device);
    3be1:	85 d2                	test   %edx,%edx
    3be3:	74 07                	je     3bec <filter+0x3c>
}
    3be5:	5b                   	pop    %rbx
    3be6:	5d                   	pop    %rbp
    3be7:	e9 00 00 00 00       	jmp    3bec <filter+0x3c>
	if (params->device[0] == '\0')
    3bec:	80 7b 18 00          	cmpb   $0x0,0x18(%rbx)
    3bf0:	b8 01 00 00 00       	mov    $0x1,%eax
    3bf5:	74 ee                	je     3be5 <filter+0x35>
	return strcmp(dev_name(device->dev), params->device) == 0;
    3bf7:	48 8b 45 00          	mov    0x0(%rbp),%rax
    3bfb:	48 8d 73 18          	lea    0x18(%rbx),%rsi
    3bff:	48 8b 40 70          	mov    0x70(%rax),%rax
    3c03:	48 8b 78 50          	mov    0x50(%rax),%rdi
    3c07:	48 85 ff             	test   %rdi,%rdi
    3c0a:	74 17                	je     3c23 <filter+0x73>
    3c0c:	e8 00 00 00 00       	call   3c11 <filter+0x61>
    3c11:	85 c0                	test   %eax,%eax
    3c13:	0f 94 c0             	sete   %al
}
    3c16:	5b                   	pop    %rbx
    3c17:	5d                   	pop    %rbp
    3c18:	e9 00 00 00 00       	jmp    3c1d <filter+0x6d>
int kobject_set_name_vargs(struct kobject *kobj, const char *fmt,
			   va_list vargs);

static inline const char *kobject_name(const struct kobject *kobj)
{
	return kobj->name;
    3c1d:	48 8b 78 08          	mov    0x8(%rax),%rdi
		return dev->init_name;

	return kobject_name(&dev->kobj);
    3c21:	eb b5                	jmp    3bd8 <filter+0x28>
    3c23:	48 8b 38             	mov    (%rax),%rdi
	return strcmp(dev_name(device->dev), params->device) == 0;
    3c26:	e8 00 00 00 00       	call   3c2b <filter+0x7b>
    3c2b:	85 c0                	test   %eax,%eax
    3c2d:	0f 94 c0             	sete   %al
    3c30:	eb e4                	jmp    3c16 <filter+0x66>
    3c32:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3c39:	00 00 00 00 
    3c3d:	0f 1f 00             	nopl   (%rax)

0000000000003c40 <__pfx_result.constprop.0>:
    3c40:	90                   	nop
    3c41:	90                   	nop
    3c42:	90                   	nop
    3c43:	90                   	nop
    3c44:	90                   	nop
    3c45:	90                   	nop
    3c46:	90                   	nop
    3c47:	90                   	nop
    3c48:	90                   	nop
    3c49:	90                   	nop
    3c4a:	90                   	nop
    3c4b:	90                   	nop
    3c4c:	90                   	nop
    3c4d:	90                   	nop
    3c4e:	90                   	nop
    3c4f:	90                   	nop

0000000000003c50 <result.constprop.0>:
static void result(const char *err, unsigned int n, unsigned long src_off, unsigned long dst_off,
    3c50:	e8 00 00 00 00       	call   3c55 <result.constprop.0+0x5>

#ifdef CONFIG_HAVE_JUMP_LABEL_HACK

static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
{
	asm_volatile_goto("1:"
    3c55:	66 90                	xchg   %ax,%ax
    3c57:	e9 00 00 00 00       	jmp    3c5c <result.constprop.0+0xc>
		pr_debug("%s: result #%u: '%s' with src_off=0x%lx dst_off=0x%lx len=0x%x (%ld)\n",
    3c5c:	6a f4                	push   $0xfffffffffffffff4
    3c5e:	49 89 f1             	mov    %rsi,%r9
    3c61:	49 89 f8             	mov    %rdi,%r8
    3c64:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    3c6b:	51                   	push   %rcx
    3c6c:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3c73:	b9 01 00 00 00       	mov    $0x1,%ecx
    3c78:	52                   	push   %rdx
    3c79:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    3c80:	00 00 
    3c82:	48 05 d0 07 00 00    	add    $0x7d0,%rax
    3c88:	48 89 c2             	mov    %rax,%rdx
    3c8b:	e8 00 00 00 00       	call   3c90 <result.constprop.0+0x40>
    3c90:	48 83 c4 18          	add    $0x18,%rsp
}
    3c94:	e9 00 00 00 00       	jmp    3c99 <result.constprop.0+0x49>
    3c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003ca0 <__pfx_ioat_dma_submit>:
    3ca0:	90                   	nop
    3ca1:	90                   	nop
    3ca2:	90                   	nop
    3ca3:	90                   	nop
    3ca4:	90                   	nop
    3ca5:	90                   	nop
    3ca6:	90                   	nop
    3ca7:	90                   	nop
    3ca8:	90                   	nop
    3ca9:	90                   	nop
    3caa:	90                   	nop
    3cab:	90                   	nop
    3cac:	90                   	nop
    3cad:	90                   	nop
    3cae:	90                   	nop
    3caf:	90                   	nop

0000000000003cb0 <ioat_dma_submit>:
{
    3cb0:	f3 0f 1e fa          	endbr64
    3cb4:	e8 00 00 00 00       	call   3cb9 <ioat_dma_submit+0x9>
    3cb9:	41 57                	push   %r15
    3cbb:	41 56                	push   %r14
    3cbd:	41 55                	push   %r13
    3cbf:	41 89 d5             	mov    %edx,%r13d
    3cc2:	41 54                	push   %r12
    3cc4:	49 89 f4             	mov    %rsi,%r12
    3cc7:	55                   	push   %rbp
    3cc8:	48 89 fd             	mov    %rdi,%rbp
    3ccb:	53                   	push   %rbx
    3ccc:	48 83 ec 08          	sub    $0x8,%rsp
	set_freezable();
    3cd0:	e8 00 00 00 00       	call   3cd5 <ioat_dma_submit+0x25>
    3cd5:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	chan = thread->chan;
    3cda:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 3ce1 <ioat_dma_submit+0x31>
	tx = dev->device_prep_dma_memcpy(chan, dst_addr, src_addr, size, flags);
    3ce1:	44 89 e9             	mov    %r13d,%ecx
    3ce4:	48 89 ea             	mov    %rbp,%rdx
    3ce7:	4c 89 e6             	mov    %r12,%rsi
    3cea:	41 b8 02 00 00 00    	mov    $0x2,%r8d
	dev = chan->device;
    3cf0:	4c 8b 33             	mov    (%rbx),%r14
	tx = dev->device_prep_dma_memcpy(chan, dst_addr, src_addr, size, flags);
    3cf3:	48 89 df             	mov    %rbx,%rdi
    3cf6:	49 8b 86 c8 00 00 00 	mov    0xc8(%r14),%rax
    3cfd:	e8 00 00 00 00       	call   3d02 <ioat_dma_submit+0x52>
    3d02:	48 89 c7             	mov    %rax,%rdi
	if (!tx) {
    3d05:	48 85 c0             	test   %rax,%rax
    3d08:	0f 84 91 01 00 00    	je     3e9f <ioat_dma_submit+0x1ef>
	cookie = tx->tx_submit(tx);
    3d0e:	48 8b 40 18          	mov    0x18(%rax),%rax
    3d12:	e8 00 00 00 00       	call   3d17 <ioat_dma_submit+0x67>
    3d17:	89 c6                	mov    %eax,%esi
	if (dma_submit_error(cookie)) {
    3d19:	85 c0                	test   %eax,%eax
    3d1b:	0f 88 5d 01 00 00    	js     3e7e <ioat_dma_submit+0x1ce>
	status = dma_sync_wait(chan, cookie);
    3d21:	48 89 df             	mov    %rbx,%rdi
    3d24:	e8 00 00 00 00       	call   3d29 <ioat_dma_submit+0x79>
    3d29:	41 89 c7             	mov    %eax,%r15d
 * If none of the two conditions above apply consider using
 * dmaengine_terminate_sync() instead.
 */
static inline int dmaengine_terminate_async(struct dma_chan *chan)
{
	if (chan->device->device_terminate_all)
    3d2c:	48 8b 03             	mov    (%rbx),%rax
    3d2f:	48 8b 80 48 01 00 00 	mov    0x148(%rax),%rax
    3d36:	48 85 c0             	test   %rax,%rax
    3d39:	74 10                	je     3d4b <ioat_dma_submit+0x9b>
		return chan->device->device_terminate_all(chan);
    3d3b:	48 89 df             	mov    %rbx,%rdi
    3d3e:	e8 00 00 00 00       	call   3d43 <ioat_dma_submit+0x93>
static inline int dmaengine_terminate_sync(struct dma_chan *chan)
{
	int ret;

	ret = dmaengine_terminate_async(chan);
	if (ret)
    3d43:	85 c0                	test   %eax,%eax
    3d45:	0f 84 a4 00 00 00    	je     3def <ioat_dma_submit+0x13f>
	ret = 0;
    3d4b:	45 31 c9             	xor    %r9d,%r9d
	if (status != DMA_COMPLETE &&
    3d4e:	45 85 ff             	test   %r15d,%r15d
    3d51:	0f 85 c4 00 00 00    	jne    3e1b <ioat_dma_submit+0x16b>
    3d57:	66 90                	xchg   %ax,%ax
	if (ret)
    3d59:	45 85 c9             	test   %r9d,%r9d
    3d5c:	75 41                	jne    3d9f <ioat_dma_submit+0xef>
}
    3d5e:	48 83 c4 08          	add    $0x8,%rsp
    3d62:	44 89 c8             	mov    %r9d,%eax
    3d65:	5b                   	pop    %rbx
    3d66:	5d                   	pop    %rbp
    3d67:	41 5c                	pop    %r12
    3d69:	41 5d                	pop    %r13
    3d6b:	41 5e                	pop    %r14
    3d6d:	41 5f                	pop    %r15
    3d6f:	e9 00 00 00 00       	jmp    3d74 <ioat_dma_submit+0xc4>
	pr_debug("DONE: 0x%lx -> 0x%lx, len: %d\n", src_off, dst_off, size);
    3d74:	45 89 e8             	mov    %r13d,%r8d
    3d77:	4c 89 e1             	mov    %r12,%rcx
    3d7a:	48 89 ea             	mov    %rbp,%rdx
    3d7d:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    3d84:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3d8b:	44 89 4c 24 04       	mov    %r9d,0x4(%rsp)
    3d90:	e8 00 00 00 00       	call   3d95 <ioat_dma_submit+0xe5>
    3d95:	44 8b 4c 24 04       	mov    0x4(%rsp),%r9d
	if (ret)
    3d9a:	45 85 c9             	test   %r9d,%r9d
    3d9d:	74 bf                	je     3d5e <ioat_dma_submit+0xae>
	if (chan->device->device_terminate_all)
    3d9f:	48 8b 03             	mov    (%rbx),%rax
    3da2:	48 8b 80 48 01 00 00 	mov    0x148(%rax),%rax
    3da9:	48 85 c0             	test   %rax,%rax
    3dac:	74 b0                	je     3d5e <ioat_dma_submit+0xae>
    3dae:	44 89 4c 24 04       	mov    %r9d,0x4(%rsp)
		return chan->device->device_terminate_all(chan);
    3db3:	48 89 df             	mov    %rbx,%rdi
    3db6:	e8 00 00 00 00       	call   3dbb <ioat_dma_submit+0x10b>
	if (ret)
    3dbb:	44 8b 4c 24 04       	mov    0x4(%rsp),%r9d
    3dc0:	85 c0                	test   %eax,%eax
    3dc2:	75 9a                	jne    3d5e <ioat_dma_submit+0xae>

DECLARE_STATIC_CALL(might_resched, __cond_resched);

static __always_inline void might_resched(void)
{
	static_call_mod(might_resched)();
    3dc4:	e8 00 00 00 00       	call   3dc9 <ioat_dma_submit+0x119>
	if (chan->device->device_synchronize)
    3dc9:	48 8b 03             	mov    (%rbx),%rax
    3dcc:	44 8b 4c 24 04       	mov    0x4(%rsp),%r9d
    3dd1:	48 8b 80 50 01 00 00 	mov    0x150(%rax),%rax
    3dd8:	48 85 c0             	test   %rax,%rax
    3ddb:	74 81                	je     3d5e <ioat_dma_submit+0xae>
		chan->device->device_synchronize(chan);
    3ddd:	48 89 df             	mov    %rbx,%rdi
    3de0:	e8 00 00 00 00       	call   3de5 <ioat_dma_submit+0x135>
    3de5:	44 8b 4c 24 04       	mov    0x4(%rsp),%r9d
	return ret;
    3dea:	e9 6f ff ff ff       	jmp    3d5e <ioat_dma_submit+0xae>
    3def:	e8 00 00 00 00       	call   3df4 <ioat_dma_submit+0x144>
	if (chan->device->device_synchronize)
    3df4:	48 8b 03             	mov    (%rbx),%rax
    3df7:	48 8b 80 50 01 00 00 	mov    0x150(%rax),%rax
    3dfe:	48 85 c0             	test   %rax,%rax
    3e01:	0f 84 44 ff ff ff    	je     3d4b <ioat_dma_submit+0x9b>
		chan->device->device_synchronize(chan);
    3e07:	48 89 df             	mov    %rbx,%rdi
    3e0a:	e8 00 00 00 00       	call   3e0f <ioat_dma_submit+0x15f>
	ret = 0;
    3e0f:	45 31 c9             	xor    %r9d,%r9d
	if (status != DMA_COMPLETE &&
    3e12:	45 85 ff             	test   %r15d,%r15d
    3e15:	0f 84 3c ff ff ff    	je     3d57 <ioat_dma_submit+0xa7>
}

static __always_inline bool constant_test_bit(long nr, const volatile unsigned long *addr)
{
	return ((1UL << (nr & (BITS_PER_LONG-1))) &
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    3e1b:	49 8b 46 48          	mov    0x48(%r14),%rax
	    !(dma_has_cap(DMA_COMPLETION_NO_ORDER, dev->cap_mask) && status == DMA_OUT_OF_ORDER)) {
    3e1f:	f6 c4 20             	test   $0x20,%ah
    3e22:	74 0a                	je     3e2e <ioat_dma_submit+0x17e>
    3e24:	41 83 ff 04          	cmp    $0x4,%r15d
    3e28:	0f 84 29 ff ff ff    	je     3d57 <ioat_dma_submit+0xa7>
		result(status == DMA_ERROR ? "completion error status" : "completion busy status",
    3e2e:	41 83 ff 03          	cmp    $0x3,%r15d
    3e32:	44 89 e9             	mov    %r13d,%ecx
    3e35:	4c 89 e2             	mov    %r12,%rdx
    3e38:	48 89 ee             	mov    %rbp,%rsi
    3e3b:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3e42:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
    3e49:	48 0f 44 f8          	cmove  %rax,%rdi
    3e4d:	e8 fe fd ff ff       	call   3c50 <result.constprop.0>
	ret = -ENOMEM;
    3e52:	41 b9 f4 ff ff ff    	mov    $0xfffffff4,%r9d
    3e58:	e9 fa fe ff ff       	jmp    3d57 <ioat_dma_submit+0xa7>
	pr_debug("START: 0x%lx -> 0x%lx, len: %d\n", src_off, dst_off, size);
    3e5d:	45 89 e8             	mov    %r13d,%r8d
    3e60:	4c 89 e1             	mov    %r12,%rcx
    3e63:	48 89 ea             	mov    %rbp,%rdx
    3e66:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    3e6d:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3e74:	e8 00 00 00 00       	call   3e79 <ioat_dma_submit+0x1c9>
    3e79:	e9 5c fe ff ff       	jmp    3cda <ioat_dma_submit+0x2a>
		result("submit error", 1, src_off, dst_off, size, ret);
    3e7e:	44 89 e9             	mov    %r13d,%ecx
    3e81:	4c 89 e2             	mov    %r12,%rdx
    3e84:	48 89 ee             	mov    %rbp,%rsi
    3e87:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3e8e:	e8 bd fd ff ff       	call   3c50 <result.constprop.0>
		msleep(100);
    3e93:	bf 64 00 00 00       	mov    $0x64,%edi
    3e98:	e8 00 00 00 00       	call   3e9d <ioat_dma_submit+0x1ed>
		goto err_out;
    3e9d:	eb b3                	jmp    3e52 <ioat_dma_submit+0x1a2>
		result("prep error", 1, src_off, dst_off, size, ret);
    3e9f:	44 89 e9             	mov    %r13d,%ecx
    3ea2:	4c 89 e2             	mov    %r12,%rdx
    3ea5:	48 89 ee             	mov    %rbp,%rsi
    3ea8:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3eaf:	e8 9c fd ff ff       	call   3c50 <result.constprop.0>
		msleep(100);
    3eb4:	bf 64 00 00 00       	mov    $0x64,%edi
    3eb9:	e8 00 00 00 00       	call   3ebe <ioat_dma_submit+0x20e>
		goto err_out;
    3ebe:	eb 92                	jmp    3e52 <ioat_dma_submit+0x1a2>

0000000000003ec0 <__pfx_ioat_dma_chan_set>:
    3ec0:	90                   	nop
    3ec1:	90                   	nop
    3ec2:	90                   	nop
    3ec3:	90                   	nop
    3ec4:	90                   	nop
    3ec5:	90                   	nop
    3ec6:	90                   	nop
    3ec7:	90                   	nop
    3ec8:	90                   	nop
    3ec9:	90                   	nop
    3eca:	90                   	nop
    3ecb:	90                   	nop
    3ecc:	90                   	nop
    3ecd:	90                   	nop
    3ece:	90                   	nop
    3ecf:	90                   	nop

0000000000003ed0 <ioat_dma_chan_set>:

	request_channels(info, DMA_MEMCPY);
}

int ioat_dma_chan_set(const char *val)
{
    3ed0:	f3 0f 1e fa          	endbr64
    3ed4:	e8 00 00 00 00       	call   3ed9 <ioat_dma_chan_set+0x9>
    3ed9:	41 54                	push   %r12
    3edb:	55                   	push   %rbp
    3edc:	53                   	push   %rbx
    3edd:	48 89 fb             	mov    %rdi,%rbx
	struct ioat_dma_info *info = &test_info;
	struct ioat_dma_chan *dtc;
	char chan_reset_val[CHANNEL_NAME_LEN];
	int ret = 0;

	mutex_lock(&info->lock);
    3ee0:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
{
    3ee7:	48 83 ec 28          	sub    $0x28,%rsp
    3eeb:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    3ef2:	00 00 
    3ef4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    3ef9:	31 c0                	xor    %eax,%eax
	char chan_reset_val[CHANNEL_NAME_LEN];
    3efb:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
    3f02:	00 
    3f03:	48 c7 44 24 0c 00 00 	movq   $0x0,0xc(%rsp)
    3f0a:	00 00 
    3f0c:	48 c7 44 24 14 00 00 	movq   $0x0,0x14(%rsp)
    3f13:	00 00 
	mutex_lock(&info->lock);
    3f15:	e8 00 00 00 00       	call   3f1a <ioat_dma_chan_set+0x4a>
		return __underlying_strlen(p);
    3f1a:	48 89 df             	mov    %rbx,%rdi
    3f1d:	e8 00 00 00 00       	call   3f22 <ioat_dma_chan_set+0x52>
	BUG_ON(strlen(val) >= CHANNEL_NAME_LEN);
    3f22:	48 83 f8 13          	cmp    $0x13,%rax
    3f26:	0f 87 5f 04 00 00    	ja     438b <ioat_dma_chan_set+0x4bb>
	/* If neither buffer size is known, immediately give up. */
	if (__builtin_constant_p(p_size) &&
	    __builtin_constant_p(q_size) &&
	    p_size == SIZE_MAX && q_size == SIZE_MAX)
		return __underlying_strcpy(p, q);
	size = strlen(q) + 1;
    3f2c:	48 83 c0 01          	add    $0x1,%rax
	if (__compiletime_lessthan(p_size, size))
		__write_overflow();
	/* Run-time check for dynamic size overflow. */
	if (p_size < size)
		fortify_panic(__func__);
	__underlying_memcpy(p, q, size);
    3f30:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    3f37:	48 89 da             	mov    %rbx,%rdx
    3f3a:	83 f8 08             	cmp    $0x8,%eax
    3f3d:	0f 83 23 03 00 00    	jae    4266 <ioat_dma_chan_set+0x396>
    3f43:	31 c9                	xor    %ecx,%ecx
    3f45:	a8 04                	test   $0x4,%al
    3f47:	0f 85 be 00 00 00    	jne    400b <ioat_dma_chan_set+0x13b>
    3f4d:	a8 02                	test   $0x2,%al
    3f4f:	0f 85 a0 00 00 00    	jne    3ff5 <ioat_dma_chan_set+0x125>
    3f55:	a8 01                	test   $0x1,%al
    3f57:	0f 85 8c 00 00 00    	jne    3fe9 <ioat_dma_chan_set+0x119>
	strcpy(test_channel, val);

	/* Reject channels that are already registered */
	list_for_each_entry(dtc, &info->channels, node) {
    3f5d:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 3f64 <ioat_dma_chan_set+0x94>
    3f64:	48 81 fb 00 00 00 00 	cmp    $0x0,%rbx
    3f6b:	75 15                	jne    3f82 <ioat_dma_chan_set+0xb2>
    3f6d:	e9 ac 00 00 00       	jmp    401e <ioat_dma_chan_set+0x14e>
    3f72:	48 8b 1b             	mov    (%rbx),%rbx
    3f75:	48 81 fb 00 00 00 00 	cmp    $0x0,%rbx
    3f7c:	0f 84 9c 00 00 00    	je     401e <ioat_dma_chan_set+0x14e>
		if (strcmp(dma_chan_name(dtc->chan), strim(test_channel)) == 0) {
    3f82:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3f89:	e8 00 00 00 00       	call   3f8e <ioat_dma_chan_set+0xbe>
    3f8e:	48 89 c6             	mov    %rax,%rsi
	return dev_name(&chan->dev->device);
    3f91:	48 8b 43 10          	mov    0x10(%rbx),%rax
    3f95:	48 8b 40 20          	mov    0x20(%rax),%rax
	if (dev->init_name)
    3f99:	48 8b 78 58          	mov    0x58(%rax),%rdi
    3f9d:	48 85 ff             	test   %rdi,%rdi
    3fa0:	75 04                	jne    3fa6 <ioat_dma_chan_set+0xd6>
    3fa2:	48 8b 78 08          	mov    0x8(%rax),%rdi
    3fa6:	e8 00 00 00 00       	call   3fab <ioat_dma_chan_set+0xdb>
    3fab:	85 c0                	test   %eax,%eax
    3fad:	75 c3                	jne    3f72 <ioat_dma_chan_set+0xa2>
			dtc = list_last_entry(&info->channels, struct ioat_dma_chan, node);
			strlcpy(chan_reset_val, dma_chan_name(dtc->chan), sizeof(chan_reset_val));
			ret = -EBUSY;
    3faf:	bb f0 ff ff ff       	mov    $0xfffffff0,%ebx

	return ret;

add_chan_err:
	info->last_error = ret;
	mutex_unlock(&info->lock);
    3fb4:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
	info->last_error = ret;
    3fbb:	89 1d 00 00 00 00    	mov    %ebx,0x0(%rip)        # 3fc1 <ioat_dma_chan_set+0xf1>
	mutex_unlock(&info->lock);
    3fc1:	e8 00 00 00 00       	call   3fc6 <ioat_dma_chan_set+0xf6>

	return ret;
}
    3fc6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    3fcb:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    3fd2:	00 00 
    3fd4:	0f 85 4b 04 00 00    	jne    4425 <ioat_dma_chan_set+0x555>
    3fda:	48 83 c4 28          	add    $0x28,%rsp
    3fde:	89 d8                	mov    %ebx,%eax
    3fe0:	5b                   	pop    %rbx
    3fe1:	5d                   	pop    %rbp
    3fe2:	41 5c                	pop    %r12
    3fe4:	e9 00 00 00 00       	jmp    3fe9 <ioat_dma_chan_set+0x119>
    3fe9:	0f b6 04 0a          	movzbl (%rdx,%rcx,1),%eax
    3fed:	88 04 0e             	mov    %al,(%rsi,%rcx,1)
    3ff0:	e9 68 ff ff ff       	jmp    3f5d <ioat_dma_chan_set+0x8d>
    3ff5:	0f b7 3c 0a          	movzwl (%rdx,%rcx,1),%edi
    3ff9:	66 89 3c 0e          	mov    %di,(%rsi,%rcx,1)
    3ffd:	48 83 c1 02          	add    $0x2,%rcx
    4001:	a8 01                	test   $0x1,%al
    4003:	0f 84 54 ff ff ff    	je     3f5d <ioat_dma_chan_set+0x8d>
    4009:	eb de                	jmp    3fe9 <ioat_dma_chan_set+0x119>
    400b:	8b 0a                	mov    (%rdx),%ecx
    400d:	89 0e                	mov    %ecx,(%rsi)
    400f:	b9 04 00 00 00       	mov    $0x4,%ecx
    4014:	a8 02                	test   $0x2,%al
    4016:	0f 84 39 ff ff ff    	je     3f55 <ioat_dma_chan_set+0x85>
    401c:	eb d7                	jmp    3ff5 <ioat_dma_chan_set+0x125>
	strlcpy(params->channel, strim(test_channel), sizeof(params->channel));
    401e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
	params->buf_size = test_buf_size;
    4025:	c7 05 00 00 00 00 00 	movl   $0x1000,0x0(%rip)        # 402f <ioat_dma_chan_set+0x15f>
    402c:	10 00 00 
	strlcpy(params->channel, strim(test_channel), sizeof(params->channel));
    402f:	e8 00 00 00 00       	call   4034 <ioat_dma_chan_set+0x164>
		return __underlying_strlen(p);
    4034:	48 89 c7             	mov    %rax,%rdi
    4037:	48 89 c3             	mov    %rax,%rbx
    403a:	e8 00 00 00 00       	call   403f <ioat_dma_chan_set+0x16f>
	len = (q_len >= size) ? size - 1 : q_len;
    403f:	ba 13 00 00 00       	mov    $0x13,%edx
    4044:	48 39 d0             	cmp    %rdx,%rax
    4047:	48 0f 47 c2          	cmova  %rdx,%rax
		__underlying_memcpy(p, q, len);
    404b:	83 f8 08             	cmp    $0x8,%eax
    404e:	0f 83 3c 02 00 00    	jae    4290 <ioat_dma_chan_set+0x3c0>
    4054:	a8 04                	test   $0x4,%al
    4056:	0f 85 47 03 00 00    	jne    43a3 <ioat_dma_chan_set+0x4d3>
    405c:	85 c0                	test   %eax,%eax
    405e:	74 11                	je     4071 <ioat_dma_chan_set+0x1a1>
    4060:	0f b6 13             	movzbl (%rbx),%edx
    4063:	88 15 00 00 00 00    	mov    %dl,0x0(%rip)        # 4069 <ioat_dma_chan_set+0x199>
    4069:	a8 02                	test   $0x2,%al
    406b:	0f 85 64 03 00 00    	jne    43d5 <ioat_dma_chan_set+0x505>
	strlcpy(params->device, strim(test_device), sizeof(params->device));
    4071:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
		p[len] = '\0';
    4078:	c6 80 00 00 00 00 00 	movb   $0x0,0x0(%rax)
    407f:	e8 00 00 00 00       	call   4084 <ioat_dma_chan_set+0x1b4>
		return __underlying_strlen(p);
    4084:	48 89 c7             	mov    %rax,%rdi
    4087:	48 89 c3             	mov    %rax,%rbx
    408a:	e8 00 00 00 00       	call   408f <ioat_dma_chan_set+0x1bf>
	len = (q_len >= size) ? size - 1 : q_len;
    408f:	ba 1f 00 00 00       	mov    $0x1f,%edx
    4094:	48 39 d0             	cmp    %rdx,%rax
    4097:	48 0f 47 c2          	cmova  %rdx,%rax
		__underlying_memcpy(p, q, len);
    409b:	83 f8 08             	cmp    $0x8,%eax
    409e:	0f 83 af 02 00 00    	jae    4353 <ioat_dma_chan_set+0x483>
    40a4:	a8 04                	test   $0x4,%al
    40a6:	0f 85 10 03 00 00    	jne    43bc <ioat_dma_chan_set+0x4ec>
    40ac:	85 c0                	test   %eax,%eax
    40ae:	74 11                	je     40c1 <ioat_dma_chan_set+0x1f1>
    40b0:	0f b6 13             	movzbl (%rbx),%edx
    40b3:	88 15 00 00 00 00    	mov    %dl,0x0(%rip)        # 40b9 <ioat_dma_chan_set+0x1e9>
    40b9:	a8 02                	test   $0x2,%al
    40bb:	0f 85 27 03 00 00    	jne    43e8 <ioat_dma_chan_set+0x518>
		p[len] = '\0';
    40c1:	c6 80 00 00 00 00 00 	movb   $0x0,0x0(%rax)
	params->max_channels = max_channels;
    40c8:	48 b8 00 00 00 00 b8 	movabs $0xbb800000000,%rax
    40cf:	0b 00 00 
    40d2:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 40d9 <ioat_dma_chan_set+0x209>
	params->transfer_size = transfer_size;
    40d9:	c7 05 00 00 00 00 00 	movl   $0x400,0x0(%rip)        # 40e3 <ioat_dma_chan_set+0x213>
    40e0:	04 00 00 
	params->polled = polled;
    40e3:	c6 05 00 00 00 00 01 	movb   $0x1,0x0(%rip)        # 40ea <ioat_dma_chan_set+0x21a>
static inline void bitmap_zero(unsigned long *dst, unsigned int nbits)
{
	unsigned int len = BITS_TO_LONGS(nbits) * sizeof(unsigned long);

	if (small_const_nbits(nbits))
		*dst = 0;
    40ea:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    40f1:	00 
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    40f2:	f0 80 0c 24 01       	lock orb $0x1,(%rsp)
		chan = dma_request_channel(mask, filter, params);
    40f7:	31 c9                	xor    %ecx,%ecx
    40f9:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    4100:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4107:	48 89 e7             	mov    %rsp,%rdi
    410a:	e8 00 00 00 00       	call   410f <ioat_dma_chan_set+0x23f>
    410f:	48 89 c5             	mov    %rax,%rbp
		if (chan) {
    4112:	48 85 c0             	test   %rax,%rax
    4115:	0f 84 d0 00 00 00    	je     41eb <ioat_dma_chan_set+0x31b>
		return kmalloc_trace(
    411b:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 4122 <ioat_dma_chan_set+0x252>
    4122:	ba 28 00 00 00       	mov    $0x28,%edx
    4127:	be c0 0c 00 00       	mov    $0xcc0,%esi
	struct dma_device *dma_dev = chan->device;
    412c:	4c 8b 20             	mov    (%rax),%r12
    412f:	e8 00 00 00 00       	call   4134 <ioat_dma_chan_set+0x264>
    4134:	48 89 c3             	mov    %rax,%rbx
	if (!dtc) {
    4137:	48 85 c0             	test   %rax,%rax
    413a:	0f 84 bb 02 00 00    	je     43fb <ioat_dma_chan_set+0x52b>
	dtc->chan = chan;
    4140:	48 89 68 10          	mov    %rbp,0x10(%rax)
	INIT_LIST_HEAD(&dtc->threads);
    4144:	48 8d 40 18          	lea    0x18(%rax),%rax
 * Initializes the list_head to point to itself.  If it is a list header,
 * the result is an empty list.
 */
static inline void INIT_LIST_HEAD(struct list_head *list)
{
	WRITE_ONCE(list->next, list);
    4148:	48 89 43 18          	mov    %rax,0x18(%rbx)
	WRITE_ONCE(list->prev, list);
    414c:	48 89 43 20          	mov    %rax,0x20(%rbx)
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    4150:	49 8b 44 24 48       	mov    0x48(%r12),%rax
	if (dma_has_cap(DMA_COMPLETION_NO_ORDER, dma_dev->cap_mask) && info->params.polled) {
    4155:	f6 c4 20             	test   $0x20,%ah
    4158:	74 0d                	je     4167 <ioat_dma_chan_set+0x297>
    415a:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0(%rip)        # 4161 <ioat_dma_chan_set+0x291>
    4161:	0f 85 b7 01 00 00    	jne    431e <ioat_dma_chan_set+0x44e>
    4167:	49 8b 44 24 48       	mov    0x48(%r12),%rax
	if (dma_has_cap(DMA_MEMCPY, dma_dev->cap_mask)) {
    416c:	a8 01                	test   $0x1,%al
    416e:	0f 85 79 01 00 00    	jne    42ed <ioat_dma_chan_set+0x41d>
    4174:	48 8b 45 20          	mov    0x20(%rbp),%rax
    4178:	48 8b 50 58          	mov    0x58(%rax),%rdx
    417c:	48 85 d2             	test   %rdx,%rdx
    417f:	75 04                	jne    4185 <ioat_dma_chan_set+0x2b5>
    4181:	48 8b 50 08          	mov    0x8(%rax),%rdx
	pr_info("Added %u threads using %s\n", thread_count, dma_chan_name(chan));
    4185:	31 f6                	xor    %esi,%esi
    4187:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    418e:	e8 00 00 00 00       	call   4193 <ioat_dma_chan_set+0x2c3>
 * Insert a new entry before the specified head.
 * This is useful for implementing queues.
 */
static inline void list_add_tail(struct list_head *new, struct list_head *head)
{
	__list_add(new, head->prev, head);
    4193:	48 8b 2d 00 00 00 00 	mov    0x0(%rip),%rbp        # 419a <ioat_dma_chan_set+0x2ca>
	if (!__list_add_valid(new, prev, next))
    419a:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    41a1:	48 89 df             	mov    %rbx,%rdi
    41a4:	48 89 ee             	mov    %rbp,%rsi
    41a7:	e8 00 00 00 00       	call   41ac <ioat_dma_chan_set+0x2dc>
    41ac:	84 c0                	test   %al,%al
    41ae:	74 16                	je     41c6 <ioat_dma_chan_set+0x2f6>
	next->prev = new;
    41b0:	48 89 1d 00 00 00 00 	mov    %rbx,0x0(%rip)        # 41b7 <ioat_dma_chan_set+0x2e7>
	new->next = next;
    41b7:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
	new->prev = prev;
    41be:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
	WRITE_ONCE(prev->next, new);
    41c2:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
	info->nr_channels++;
    41c6:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 41cc <ioat_dma_chan_set+0x2fc>
		if (params->max_channels && info->nr_channels >= params->max_channels)
    41cc:	8b 15 00 00 00 00    	mov    0x0(%rip),%edx        # 41d2 <ioat_dma_chan_set+0x302>
	info->nr_channels++;
    41d2:	83 c0 01             	add    $0x1,%eax
    41d5:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 41db <ioat_dma_chan_set+0x30b>
		if (params->max_channels && info->nr_channels >= params->max_channels)
    41db:	85 d2                	test   %edx,%edx
    41dd:	0f 84 14 ff ff ff    	je     40f7 <ioat_dma_chan_set+0x227>
    41e3:	39 d0                	cmp    %edx,%eax
    41e5:	0f 82 0c ff ff ff    	jb     40f7 <ioat_dma_chan_set+0x227>
 * list_empty - tests whether a list is empty
 * @head: the list to test.
 */
static inline int list_empty(const struct list_head *head)
{
	return READ_ONCE(head->next) == head;
    41eb:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 41f2 <ioat_dma_chan_set+0x322>
	if (!list_empty(&info->channels)) {
    41f2:	48 3d 00 00 00 00    	cmp    $0x0,%rax
    41f8:	0f 84 8f 01 00 00    	je     438d <ioat_dma_chan_set+0x4bd>
		dtc = list_last_entry(&info->channels, struct ioat_dma_chan, node);
    41fe:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 4205 <ioat_dma_chan_set+0x335>
		if ((strcmp(dma_chan_name(dtc->chan), strim(test_channel)) != 0) &&
    4205:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    420c:	e8 00 00 00 00       	call   4211 <ioat_dma_chan_set+0x341>
    4211:	48 89 c6             	mov    %rax,%rsi
    4214:	48 8b 43 10          	mov    0x10(%rbx),%rax
    4218:	48 8b 40 20          	mov    0x20(%rax),%rax
    421c:	48 8b 78 58          	mov    0x58(%rax),%rdi
    4220:	48 85 ff             	test   %rdi,%rdi
    4223:	75 04                	jne    4229 <ioat_dma_chan_set+0x359>
    4225:	48 8b 78 08          	mov    0x8(%rax),%rdi
    4229:	e8 00 00 00 00       	call   422e <ioat_dma_chan_set+0x35e>
    422e:	85 c0                	test   %eax,%eax
    4230:	0f 84 00 01 00 00    	je     4336 <ioat_dma_chan_set+0x466>
		    (strcmp("", strim(test_channel)) != 0)) {
    4236:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    423d:	e8 00 00 00 00       	call   4242 <ioat_dma_chan_set+0x372>
		if ((strcmp(dma_chan_name(dtc->chan), strim(test_channel)) != 0) &&
    4242:	80 38 00             	cmpb   $0x0,(%rax)
    4245:	0f 84 eb 00 00 00    	je     4336 <ioat_dma_chan_set+0x466>
			pr_err("ERROR on DMA engine %d\n", __LINE__);
    424b:	be eb 00 00 00       	mov    $0xeb,%esi
    4250:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
			ret = -EINVAL;
    4257:	bb ea ff ff ff       	mov    $0xffffffea,%ebx
			pr_err("ERROR on DMA engine %d\n", __LINE__);
    425c:	e8 00 00 00 00       	call   4261 <ioat_dma_chan_set+0x391>
			goto add_chan_err;
    4261:	e9 4e fd ff ff       	jmp    3fb4 <ioat_dma_chan_set+0xe4>
	__underlying_memcpy(p, q, size);
    4266:	89 c7                	mov    %eax,%edi
    4268:	31 d2                	xor    %edx,%edx
    426a:	83 e7 f8             	and    $0xfffffff8,%edi
    426d:	89 d1                	mov    %edx,%ecx
    426f:	83 c2 08             	add    $0x8,%edx
    4272:	48 8b 34 0b          	mov    (%rbx,%rcx,1),%rsi
    4276:	48 89 b1 00 00 00 00 	mov    %rsi,0x0(%rcx)
    427d:	39 fa                	cmp    %edi,%edx
    427f:	72 ec                	jb     426d <ioat_dma_chan_set+0x39d>
    4281:	48 8d b2 00 00 00 00 	lea    0x0(%rdx),%rsi
    4288:	48 01 da             	add    %rbx,%rdx
    428b:	e9 b3 fc ff ff       	jmp    3f43 <ioat_dma_chan_set+0x73>
		__underlying_memcpy(p, q, len);
    4290:	48 8b 13             	mov    (%rbx),%rdx
    4293:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    429a:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    429e:	48 89 15 00 00 00 00 	mov    %rdx,0x0(%rip)        # 42a5 <ioat_dma_chan_set+0x3d5>
    42a5:	89 c2                	mov    %eax,%edx
    42a7:	48 8d 8a 00 00 00 00 	lea    0x0(%rdx),%rcx
    42ae:	48 8b 54 13 f8       	mov    -0x8(%rbx,%rdx,1),%rdx
    42b3:	48 89 51 f0          	mov    %rdx,-0x10(%rcx)
    42b7:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    42be:	48 29 fa             	sub    %rdi,%rdx
    42c1:	48 29 d3             	sub    %rdx,%rbx
    42c4:	01 c2                	add    %eax,%edx
    42c6:	83 e2 f8             	and    $0xfffffff8,%edx
    42c9:	83 fa 08             	cmp    $0x8,%edx
    42cc:	0f 82 9f fd ff ff    	jb     4071 <ioat_dma_chan_set+0x1a1>
    42d2:	83 e2 f8             	and    $0xfffffff8,%edx
    42d5:	31 c9                	xor    %ecx,%ecx
    42d7:	89 ce                	mov    %ecx,%esi
    42d9:	83 c1 08             	add    $0x8,%ecx
    42dc:	4c 8b 04 33          	mov    (%rbx,%rsi,1),%r8
    42e0:	4c 89 04 37          	mov    %r8,(%rdi,%rsi,1)
    42e4:	39 d1                	cmp    %edx,%ecx
    42e6:	72 ef                	jb     42d7 <ioat_dma_chan_set+0x407>
    42e8:	e9 84 fd ff ff       	jmp    4071 <ioat_dma_chan_set+0x1a1>
		pr_info("ioat_dma_add_threads\n");
    42ed:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    42f4:	e8 00 00 00 00       	call   42f9 <ioat_dma_chan_set+0x429>
		dma_thread.chan = dtc->chan;
    42f9:	48 8b 43 10          	mov    0x10(%rbx),%rax
		dma_thread.info = info;
    42fd:	48 c7 05 00 00 00 00 	movq   $0x0,0x0(%rip)        # 4308 <ioat_dma_chan_set+0x438>
    4304:	00 00 00 00 
		dma_thread.type = DMA_MEMCPY;
    4308:	c7 05 00 00 00 00 00 	movl   $0x0,0x0(%rip)        # 4312 <ioat_dma_chan_set+0x442>
    430f:	00 00 00 
		dma_thread.chan = dtc->chan;
    4312:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 4319 <ioat_dma_chan_set+0x449>
		dma_thread.type = DMA_MEMCPY;
    4319:	e9 56 fe ff ff       	jmp    4174 <ioat_dma_chan_set+0x2a4>
		pr_warn("DMA_COMPLETION_NO_ORDER, polled disabled\n");
    431e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
		info->params.polled = false;
    4325:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # 432c <ioat_dma_chan_set+0x45c>
		pr_warn("DMA_COMPLETION_NO_ORDER, polled disabled\n");
    432c:	e8 00 00 00 00       	call   4331 <ioat_dma_chan_set+0x461>

#define dma_has_cap(tx, mask) __dma_has_cap((tx), &(mask))
static inline int
__dma_has_cap(enum dma_transaction_type tx_type, dma_cap_mask_t *srcp)
{
	return test_bit(tx_type, srcp->bits);
    4331:	e9 31 fe ff ff       	jmp    4167 <ioat_dma_chan_set+0x297>
	mutex_unlock(&info->lock);
    4336:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
	return ret;
    433d:	31 db                	xor    %ebx,%ebx
	info->last_error = ret;
    433f:	c7 05 00 00 00 00 00 	movl   $0x0,0x0(%rip)        # 4349 <ioat_dma_chan_set+0x479>
    4346:	00 00 00 
	mutex_unlock(&info->lock);
    4349:	e8 00 00 00 00       	call   434e <ioat_dma_chan_set+0x47e>
	return ret;
    434e:	e9 73 fc ff ff       	jmp    3fc6 <ioat_dma_chan_set+0xf6>
    4353:	89 c2                	mov    %eax,%edx
    4355:	8d 70 ff             	lea    -0x1(%rax),%esi
    4358:	48 8b 4c 13 f8       	mov    -0x8(%rbx,%rdx,1),%rcx
    435d:	48 89 8a 00 00 00 00 	mov    %rcx,0x0(%rdx)
    4364:	83 fe 08             	cmp    $0x8,%esi
    4367:	0f 82 54 fd ff ff    	jb     40c1 <ioat_dma_chan_set+0x1f1>
    436d:	83 e6 f8             	and    $0xfffffff8,%esi
    4370:	31 d2                	xor    %edx,%edx
    4372:	89 d1                	mov    %edx,%ecx
    4374:	83 c2 08             	add    $0x8,%edx
    4377:	48 8b 3c 0b          	mov    (%rbx,%rcx,1),%rdi
    437b:	48 89 b9 00 00 00 00 	mov    %rdi,0x0(%rcx)
    4382:	39 f2                	cmp    %esi,%edx
    4384:	72 ec                	jb     4372 <ioat_dma_chan_set+0x4a2>
    4386:	e9 36 fd ff ff       	jmp    40c1 <ioat_dma_chan_set+0x1f1>
	BUG_ON(strlen(val) >= CHANNEL_NAME_LEN);
    438b:	0f 0b                	ud2
		pr_err("ERROR on DMA engine %d\n", __LINE__);
    438d:	be f3 00 00 00       	mov    $0xf3,%esi
    4392:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4399:	e8 00 00 00 00       	call   439e <ioat_dma_chan_set+0x4ce>
		goto add_chan_err;
    439e:	e9 0c fc ff ff       	jmp    3faf <ioat_dma_chan_set+0xdf>
    43a3:	8b 13                	mov    (%rbx),%edx
    43a5:	89 15 00 00 00 00    	mov    %edx,0x0(%rip)        # 43ab <ioat_dma_chan_set+0x4db>
    43ab:	89 c2                	mov    %eax,%edx
    43ad:	8b 4c 13 fc          	mov    -0x4(%rbx,%rdx,1),%ecx
    43b1:	89 8a 00 00 00 00    	mov    %ecx,0x0(%rdx)
    43b7:	e9 b5 fc ff ff       	jmp    4071 <ioat_dma_chan_set+0x1a1>
    43bc:	8b 13                	mov    (%rbx),%edx
    43be:	89 15 00 00 00 00    	mov    %edx,0x0(%rip)        # 43c4 <ioat_dma_chan_set+0x4f4>
    43c4:	89 c2                	mov    %eax,%edx
    43c6:	8b 4c 13 fc          	mov    -0x4(%rbx,%rdx,1),%ecx
    43ca:	89 8a 00 00 00 00    	mov    %ecx,0x0(%rdx)
    43d0:	e9 ec fc ff ff       	jmp    40c1 <ioat_dma_chan_set+0x1f1>
    43d5:	89 c2                	mov    %eax,%edx
    43d7:	0f b7 4c 13 fe       	movzwl -0x2(%rbx,%rdx,1),%ecx
    43dc:	66 89 8a 00 00 00 00 	mov    %cx,0x0(%rdx)
    43e3:	e9 89 fc ff ff       	jmp    4071 <ioat_dma_chan_set+0x1a1>
    43e8:	89 c2                	mov    %eax,%edx
    43ea:	0f b7 4c 13 fe       	movzwl -0x2(%rbx,%rdx,1),%ecx
    43ef:	66 89 8a 00 00 00 00 	mov    %cx,0x0(%rdx)
    43f6:	e9 c6 fc ff ff       	jmp    40c1 <ioat_dma_chan_set+0x1f1>
	return dev_name(&chan->dev->device);
    43fb:	48 8b 45 20          	mov    0x20(%rbp),%rax
    43ff:	48 8b 70 58          	mov    0x58(%rax),%rsi
    4403:	48 85 f6             	test   %rsi,%rsi
    4406:	75 04                	jne    440c <ioat_dma_chan_set+0x53c>
    4408:	48 8b 70 08          	mov    0x8(%rax),%rsi
		pr_warn("No memory for %s\n", dma_chan_name(chan));
    440c:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4413:	e8 00 00 00 00       	call   4418 <ioat_dma_chan_set+0x548>
				dma_release_channel(chan);
    4418:	48 89 ef             	mov    %rbp,%rdi
    441b:	e8 00 00 00 00       	call   4420 <ioat_dma_chan_set+0x550>
				break; /* add_channel failed, punt */
    4420:	e9 c6 fd ff ff       	jmp    41eb <ioat_dma_chan_set+0x31b>
}
    4425:	e8 00 00 00 00       	call   442a <ioat_dma_chan_set+0x55a>
    442a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004430 <__pfx_buffer_init>:
    4430:	90                   	nop
    4431:	90                   	nop
    4432:	90                   	nop
    4433:	90                   	nop
    4434:	90                   	nop
    4435:	90                   	nop
    4436:	90                   	nop
    4437:	90                   	nop
    4438:	90                   	nop
    4439:	90                   	nop
    443a:	90                   	nop
    443b:	90                   	nop
    443c:	90                   	nop
    443d:	90                   	nop
    443e:	90                   	nop
    443f:	90                   	nop

0000000000004440 <buffer_init>:
{
	return cpu_clock(ssd->cpu_nr_dispatcher);
}

void buffer_init(struct buffer *buf, uint32_t size)
{
    4440:	f3 0f 1e fa          	endbr64
    4444:	e8 00 00 00 00       	call   4449 <buffer_init+0x9>
	spin_lock_init(&buf->lock);
    4449:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%rdi)
	buf->initial = size;
    4450:	89 37                	mov    %esi,(%rdi)
	buf->remaining = size;
    4452:	89 77 04             	mov    %esi,0x4(%rdi)
}
    4455:	e9 00 00 00 00       	jmp    445a <buffer_init+0x1a>
    445a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004460 <__pfx_buffer_allocate>:
    4460:	90                   	nop
    4461:	90                   	nop
    4462:	90                   	nop
    4463:	90                   	nop
    4464:	90                   	nop
    4465:	90                   	nop
    4466:	90                   	nop
    4467:	90                   	nop
    4468:	90                   	nop
    4469:	90                   	nop
    446a:	90                   	nop
    446b:	90                   	nop
    446c:	90                   	nop
    446d:	90                   	nop
    446e:	90                   	nop
    446f:	90                   	nop

0000000000004470 <buffer_allocate>:

uint32_t buffer_allocate(struct buffer *buf, uint32_t size)
{
    4470:	f3 0f 1e fa          	endbr64
    4474:	e8 00 00 00 00       	call   4479 <buffer_allocate+0x9>
    4479:	41 54                	push   %r12
    447b:	49 89 fc             	mov    %rdi,%r12
    447e:	55                   	push   %rbp
    447f:	89 f5                	mov    %esi,%ebp
    4481:	53                   	push   %rbx
	return raw_spin_trylock(&lock->rlock);
    4482:	48 8d 5f 08          	lea    0x8(%rdi),%rbx
	while (!spin_trylock(&buf->lock)) {
    4486:	eb 02                	jmp    448a <buffer_allocate+0x1a>
#ifndef __ASSEMBLY__

/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
static __always_inline void rep_nop(void)
{
	asm volatile("rep; nop" ::: "memory");
    4488:	f3 90                	pause
    448a:	48 89 df             	mov    %rbx,%rdi
    448d:	e8 00 00 00 00       	call   4492 <buffer_allocate+0x22>
    4492:	85 c0                	test   %eax,%eax
    4494:	74 f2                	je     4488 <buffer_allocate+0x18>
		cpu_relax();
	}

	if (buf->remaining < size) {
    4496:	41 8b 44 24 04       	mov    0x4(%r12),%eax
    449b:	39 e8                	cmp    %ebp,%eax
    449d:	72 1a                	jb     44b9 <buffer_allocate+0x49>
		spin_unlock(&buf->lock);
		return 0;
	}

	buf->remaining -= size;
    449f:	29 e8                	sub    %ebp,%eax
	raw_spin_unlock(&lock->rlock);
    44a1:	48 89 df             	mov    %rbx,%rdi
    44a4:	41 89 44 24 04       	mov    %eax,0x4(%r12)
    44a9:	e8 00 00 00 00       	call   44ae <buffer_allocate+0x3e>
	spin_unlock(&buf->lock);
	return size;
    44ae:	89 e8                	mov    %ebp,%eax
}
    44b0:	5b                   	pop    %rbx
    44b1:	5d                   	pop    %rbp
    44b2:	41 5c                	pop    %r12
    44b4:	e9 00 00 00 00       	jmp    44b9 <buffer_allocate+0x49>
    44b9:	48 89 df             	mov    %rbx,%rdi
    44bc:	e8 00 00 00 00       	call   44c1 <buffer_allocate+0x51>
		return 0;
    44c1:	31 c0                	xor    %eax,%eax
}
    44c3:	5b                   	pop    %rbx
    44c4:	5d                   	pop    %rbp
    44c5:	41 5c                	pop    %r12
    44c7:	e9 00 00 00 00       	jmp    44cc <buffer_allocate+0x5c>
    44cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000044d0 <__pfx_buffer_release>:
    44d0:	90                   	nop
    44d1:	90                   	nop
    44d2:	90                   	nop
    44d3:	90                   	nop
    44d4:	90                   	nop
    44d5:	90                   	nop
    44d6:	90                   	nop
    44d7:	90                   	nop
    44d8:	90                   	nop
    44d9:	90                   	nop
    44da:	90                   	nop
    44db:	90                   	nop
    44dc:	90                   	nop
    44dd:	90                   	nop
    44de:	90                   	nop
    44df:	90                   	nop

00000000000044e0 <buffer_release>:

bool buffer_release(struct buffer *buf, uint32_t size)
{
    44e0:	f3 0f 1e fa          	endbr64
    44e4:	e8 00 00 00 00       	call   44e9 <buffer_release+0x9>
    44e9:	41 54                	push   %r12
    44eb:	41 89 f4             	mov    %esi,%r12d
    44ee:	55                   	push   %rbp
    44ef:	48 89 fd             	mov    %rdi,%rbp
    44f2:	53                   	push   %rbx
	return raw_spin_trylock(&lock->rlock);
    44f3:	48 8d 5f 08          	lea    0x8(%rdi),%rbx
    44f7:	48 89 df             	mov    %rbx,%rdi
    44fa:	e8 00 00 00 00       	call   44ff <buffer_release+0x1f>
	while (!spin_trylock(&buf->lock))
    44ff:	85 c0                	test   %eax,%eax
    4501:	74 f4                	je     44f7 <buffer_release+0x17>
		;
	buf->remaining += size;
    4503:	44 01 65 04          	add    %r12d,0x4(%rbp)
	raw_spin_unlock(&lock->rlock);
    4507:	48 89 df             	mov    %rbx,%rdi
    450a:	e8 00 00 00 00       	call   450f <buffer_release+0x2f>
	spin_unlock(&buf->lock);

	return true;
}
    450f:	b8 01 00 00 00       	mov    $0x1,%eax
    4514:	5b                   	pop    %rbx
    4515:	5d                   	pop    %rbp
    4516:	41 5c                	pop    %r12
    4518:	e9 00 00 00 00       	jmp    451d <buffer_release+0x3d>
    451d:	0f 1f 00             	nopl   (%rax)

0000000000004520 <__pfx_buffer_refill>:
    4520:	90                   	nop
    4521:	90                   	nop
    4522:	90                   	nop
    4523:	90                   	nop
    4524:	90                   	nop
    4525:	90                   	nop
    4526:	90                   	nop
    4527:	90                   	nop
    4528:	90                   	nop
    4529:	90                   	nop
    452a:	90                   	nop
    452b:	90                   	nop
    452c:	90                   	nop
    452d:	90                   	nop
    452e:	90                   	nop
    452f:	90                   	nop

0000000000004530 <buffer_refill>:

void buffer_refill(struct buffer *buf)
{
    4530:	f3 0f 1e fa          	endbr64
    4534:	e8 00 00 00 00       	call   4539 <buffer_refill+0x9>
    4539:	55                   	push   %rbp
    453a:	48 89 fd             	mov    %rdi,%rbp
    453d:	53                   	push   %rbx
	return raw_spin_trylock(&lock->rlock);
    453e:	48 8d 5f 08          	lea    0x8(%rdi),%rbx
    4542:	48 89 df             	mov    %rbx,%rdi
    4545:	e8 00 00 00 00       	call   454a <buffer_refill+0x1a>
	while (!spin_trylock(&buf->lock))
    454a:	85 c0                	test   %eax,%eax
    454c:	74 f4                	je     4542 <buffer_refill+0x12>
		;
	buf->remaining = buf->initial;
    454e:	8b 45 00             	mov    0x0(%rbp),%eax
	raw_spin_unlock(&lock->rlock);
    4551:	48 89 df             	mov    %rbx,%rdi
    4554:	89 45 04             	mov    %eax,0x4(%rbp)
	spin_unlock(&buf->lock);
}
    4557:	5b                   	pop    %rbx
    4558:	5d                   	pop    %rbp
    4559:	e9 00 00 00 00       	jmp    455e <buffer_refill+0x2e>
    455e:	66 90                	xchg   %ax,%ax

0000000000004560 <__pfx_ssd_init_params>:
    4560:	90                   	nop
    4561:	90                   	nop
    4562:	90                   	nop
    4563:	90                   	nop
    4564:	90                   	nop
    4565:	90                   	nop
    4566:	90                   	nop
    4567:	90                   	nop
    4568:	90                   	nop
    4569:	90                   	nop
    456a:	90                   	nop
    456b:	90                   	nop
    456c:	90                   	nop
    456d:	90                   	nop
    456e:	90                   	nop
    456f:	90                   	nop

0000000000004570 <ssd_init_params>:
	//ftl_assert(is_power_of_2(spp->luns_per_ch));
	//ftl_assert(is_power_of_2(spp->nchs));
}

void ssd_init_params(struct ssdparams *spp, uint64_t capacity, uint32_t nparts)
{
    4570:	f3 0f 1e fa          	endbr64
    4574:	e8 00 00 00 00       	call   4579 <ssd_init_params+0x9>
	uint64_t blk_size, total_size;

	spp->secsz = 512;
    4579:	48 b8 00 02 00 00 08 	movabs $0x800000200,%rax
    4580:	00 00 00 
{
    4583:	48 89 f9             	mov    %rdi,%rcx
    4586:	89 d7                	mov    %edx,%edi
	spp->pls_per_lun = PLNS_PER_LUN;
	spp->luns_per_ch = LUNS_PER_NAND_CH;
	spp->cell_mode = CELL_MODE;

	/* partitioning SSD by dividing channel*/
	NVMEV_ASSERT((spp->nchs % nparts) == 0);
    4588:	31 d2                	xor    %edx,%edx
	spp->secsz = 512;
    458a:	48 89 01             	mov    %rax,(%rcx)
	spp->pls_per_lun = PLNS_PER_LUN;
    458d:	48 b8 01 00 00 00 10 	movabs $0x1000000001,%rax
    4594:	00 00 00 
    4597:	48 89 41 24          	mov    %rax,0x24(%rcx)
	NVMEV_ASSERT((spp->nchs % nparts) == 0);
    459b:	b8 08 00 00 00       	mov    $0x8,%eax
    45a0:	f7 f7                	div    %edi
	spp->pgsz = spp->secsz * spp->secs_per_pg;
    45a2:	c7 41 08 00 10 00 00 	movl   $0x1000,0x8(%rcx)
	spp->cell_mode = CELL_MODE;
    45a9:	c7 41 30 03 00 00 00 	movl   $0x3,0x30(%rcx)
	NVMEV_ASSERT((spp->nchs % nparts) == 0);
    45b0:	41 89 c0             	mov    %eax,%r8d
    45b3:	85 d2                	test   %edx,%edx
    45b5:	0f 85 e5 01 00 00    	jne    47a0 <ssd_init_params+0x230>
		blk_size = DIV_ROUND_UP(capacity, spp->blks_per_pl * spp->pls_per_lun *
							  spp->luns_per_ch * spp->nchs);
	} else {
		NVMEV_ASSERT(BLK_SIZE > 0);
		blk_size = BLK_SIZE;
		spp->blks_per_pl = DIV_ROUND_UP(capacity, blk_size * spp->pls_per_lun *
    45bb:	41 89 c1             	mov    %eax,%r9d
	spp->nchs /= nparts;
    45be:	89 41 2c             	mov    %eax,0x2c(%rcx)
	capacity /= nparts;
    45c1:	31 d2                	xor    %edx,%edx
    45c3:	48 89 f0             	mov    %rsi,%rax
    45c6:	48 f7 f7             	div    %rdi
	NVMEV_ASSERT((ONESHOT_PAGE_SIZE % FLASH_PAGE_SIZE) == 0);

	spp->pgs_per_oneshotpg = ONESHOT_PAGE_SIZE / (spp->pgsz);
	spp->oneshotpgs_per_blk = DIV_ROUND_UP(blk_size, ONESHOT_PAGE_SIZE);

	spp->pgs_per_flashpg = FLASH_PAGE_SIZE / (spp->pgsz);
    45c9:	c7 41 0c 10 00 00 00 	movl   $0x10,0xc(%rcx)
	spp->flashpgs_per_blk = (ONESHOT_PAGE_SIZE / FLASH_PAGE_SIZE) * spp->oneshotpgs_per_blk;

	spp->pgs_per_blk = spp->pgs_per_oneshotpg * spp->oneshotpgs_per_blk;

	spp->write_unit_size = WRITE_UNIT_SIZE;
    45d0:	c7 41 34 00 00 02 00 	movl   $0x20000,0x34(%rcx)
	spp->pg_4kb_rd_lat[CELL_TYPE_MSB] = NAND_4KB_READ_LATENCY_MSB;
	spp->pg_4kb_rd_lat[CELL_TYPE_CSB] = NAND_4KB_READ_LATENCY_CSB;
	spp->pg_rd_lat[CELL_TYPE_LSB] = NAND_READ_LATENCY_LSB;
	spp->pg_rd_lat[CELL_TYPE_MSB] = NAND_READ_LATENCY_MSB;
	spp->pg_rd_lat[CELL_TYPE_CSB] = NAND_READ_LATENCY_CSB;
	spp->pg_wr_lat = NAND_PROG_LATENCY;
    45d7:	48 c7 41 54 28 33 1d 	movq   $0x1d3328,0x54(%rcx)
    45de:	00 
	spp->blk_er_lat = NAND_ERASE_LATENCY;
	spp->max_ch_xfer_size = MAX_CH_XFER_SIZE;

	spp->fw_4kb_rd_lat = FW_4KB_READ_LATENCY;
	spp->fw_rd_lat = FW_READ_LATENCY;
    45df:	48 c7 41 64 96 7d 00 	movq   $0x7d96,0x64(%rcx)
    45e6:	00 
	spp->fw_ch_xfer_lat = FW_CH_XFER_LATENCY;
	spp->fw_wbuf_lat0 = FW_WBUF_LATENCY0;
	spp->fw_wbuf_lat1 = FW_WBUF_LATENCY1;

	spp->ch_bandwidth = NAND_CHANNEL_BANDWIDTH;
    45e7:	48 c7 41 78 20 03 00 	movq   $0x320,0x78(%rcx)
    45ee:	00 
	spp->pcie_bandwidth = PCIE_BANDWIDTH;
    45ef:	48 c7 81 80 00 00 00 	movq   $0xc80,0x80(%rcx)
    45f6:	80 0c 00 00 

	spp->write_buffer_size = WRITE_BUFFER_SIZE;
    45fa:	48 c7 81 20 01 00 00 	movq   $0x2000000,0x120(%rcx)
    4601:	00 00 00 02 
	spp->write_early_completion = WRITE_EARLY_COMPLETION;
    4605:	c6 41 38 00          	movb   $0x0,0x38(%rcx)

	/* calculated values */
	spp->secs_per_blk = spp->secs_per_pg * spp->pgs_per_blk;
    4609:	48 c7 81 88 00 00 00 	movq   $0x10000,0x88(%rcx)
    4610:	00 00 01 00 
	spp->oneshotpgs_per_blk = DIV_ROUND_UP(blk_size, ONESHOT_PAGE_SIZE);
    4614:	48 be 00 01 00 00 00 	movabs $0x200000000100,%rsi
    461b:	20 00 00 
		spp->blks_per_pl = DIV_ROUND_UP(capacity, blk_size * spp->pls_per_lun *
    461e:	4d 89 ca             	mov    %r9,%r10
    4621:	31 d2                	xor    %edx,%edx
	spp->flashpgs_per_blk = (ONESHOT_PAGE_SIZE / FLASH_PAGE_SIZE) * spp->oneshotpgs_per_blk;
    4623:	48 bf 00 02 00 00 20 	movabs $0x2000000200,%rdi
    462a:	00 00 00 
		spp->blks_per_pl = DIV_ROUND_UP(capacity, blk_size * spp->pls_per_lun *
    462d:	49 c1 e2 1d          	shl    $0x1d,%r10
	spp->oneshotpgs_per_blk = DIV_ROUND_UP(blk_size, ONESHOT_PAGE_SIZE);
    4631:	48 89 71 18          	mov    %rsi,0x18(%rcx)
	spp->pg_4kb_rd_lat[CELL_TYPE_CSB] = NAND_4KB_READ_LATENCY_CSB;
    4635:	48 be 8d 63 00 00 f6 	movabs $0x9ff60000638d,%rsi
    463c:	9f 00 00 
    463f:	48 89 71 44          	mov    %rsi,0x44(%rcx)
	spp->max_ch_xfer_size = MAX_CH_XFER_SIZE;
    4643:	48 be 00 00 01 00 96 	movabs $0x7d9600010000,%rsi
    464a:	7d 00 00 
    464d:	48 89 71 5c          	mov    %rsi,0x5c(%rcx)
	spp->flashpgs_per_blk = (ONESHOT_PAGE_SIZE / FLASH_PAGE_SIZE) * spp->oneshotpgs_per_blk;
    4651:	48 89 79 10          	mov    %rdi,0x10(%rcx)
	spp->pg_4kb_rd_lat[CELL_TYPE_LSB] = NAND_4KB_READ_LATENCY_LSB;
    4655:	48 bf 8d 63 00 00 8d 	movabs $0x638d0000638d,%rdi
    465c:	63 00 00 
    465f:	48 89 79 3c          	mov    %rdi,0x3c(%rcx)
	spp->pg_rd_lat[CELL_TYPE_MSB] = NAND_READ_LATENCY_MSB;
    4663:	48 bf f6 9f 00 00 f6 	movabs $0x9ff600009ff6,%rdi
    466a:	9f 00 00 
    466d:	48 89 79 4c          	mov    %rdi,0x4c(%rcx)
	spp->fw_wbuf_lat1 = FW_WBUF_LATENCY1;
    4671:	48 bf 00 00 00 00 9d 	movabs $0x19d00000000,%rdi
    4678:	01 00 00 
    467b:	48 89 79 6c          	mov    %rdi,0x6c(%rcx)

	spp->blks_per_lun = spp->blks_per_pl * spp->pls_per_lun;
	spp->blks_per_ch = spp->blks_per_lun * spp->luns_per_ch;
	spp->tt_blks = spp->blks_per_ch * spp->nchs;

	spp->pls_per_ch = spp->pls_per_lun * spp->luns_per_ch;
    467f:	48 c7 81 08 01 00 00 	movq   $0x10,0x108(%rcx)
    4686:	10 00 00 00 
		spp->blks_per_pl = DIV_ROUND_UP(capacity, blk_size * spp->pls_per_lun *
    468a:	49 8d 44 02 ff       	lea    -0x1(%r10,%rax,1),%rax
    468f:	49 f7 f2             	div    %r10
	spp->secs_per_pl = spp->secs_per_blk * spp->blks_per_pl;
    4692:	48 63 f0             	movslq %eax,%rsi
		spp->blks_per_pl = DIV_ROUND_UP(capacity, blk_size * spp->pls_per_lun *
    4695:	89 41 20             	mov    %eax,0x20(%rcx)
	spp->pgs_per_pl = spp->pgs_per_blk * spp->blks_per_pl;
    4698:	c1 e0 0d             	shl    $0xd,%eax
	spp->secs_per_pl = spp->secs_per_blk * spp->blks_per_pl;
    469b:	48 89 f2             	mov    %rsi,%rdx
	spp->blks_per_lun = spp->blks_per_pl * spp->pls_per_lun;
    469e:	48 89 b1 d0 00 00 00 	mov    %rsi,0xd0(%rcx)
	spp->secs_per_pl = spp->secs_per_blk * spp->blks_per_pl;
    46a5:	48 c1 e2 10          	shl    $0x10,%rdx
    46a9:	48 89 91 90 00 00 00 	mov    %rdx,0x90(%rcx)
	spp->secs_per_lun = spp->secs_per_pl * spp->pls_per_lun;
    46b0:	48 89 91 98 00 00 00 	mov    %rdx,0x98(%rcx)
	spp->secs_per_ch = spp->secs_per_lun * spp->luns_per_ch;
    46b7:	48 89 f2             	mov    %rsi,%rdx
    46ba:	48 c1 e2 14          	shl    $0x14,%rdx
    46be:	48 89 91 a0 00 00 00 	mov    %rdx,0xa0(%rcx)
	spp->tt_secs = spp->secs_per_ch * spp->nchs;
    46c5:	49 0f af d1          	imul   %r9,%rdx
    46c9:	48 89 91 a8 00 00 00 	mov    %rdx,0xa8(%rcx)
	spp->pgs_per_pl = spp->pgs_per_blk * spp->blks_per_pl;
    46d0:	48 63 d0             	movslq %eax,%rdx
	spp->blks_per_ch = spp->blks_per_lun * spp->luns_per_ch;
    46d3:	48 89 f0             	mov    %rsi,%rax
	spp->pgs_per_pl = spp->pgs_per_blk * spp->blks_per_pl;
    46d6:	48 89 91 b0 00 00 00 	mov    %rdx,0xb0(%rcx)
	spp->blks_per_ch = spp->blks_per_lun * spp->luns_per_ch;
    46dd:	48 c1 e0 04          	shl    $0x4,%rax
	spp->pgs_per_lun = spp->pgs_per_pl * spp->pls_per_lun;
    46e1:	48 89 91 b8 00 00 00 	mov    %rdx,0xb8(%rcx)
	spp->pgs_per_ch = spp->pgs_per_lun * spp->luns_per_ch;
    46e8:	48 c1 e2 04          	shl    $0x4,%rdx
    46ec:	48 89 91 c0 00 00 00 	mov    %rdx,0xc0(%rcx)
	spp->tt_pgs = spp->pgs_per_ch * spp->nchs;
    46f3:	49 0f af d1          	imul   %r9,%rdx
	spp->blks_per_ch = spp->blks_per_lun * spp->luns_per_ch;
    46f7:	48 89 81 d8 00 00 00 	mov    %rax,0xd8(%rcx)
	spp->tt_blks = spp->blks_per_ch * spp->nchs;
    46fe:	49 0f af c1          	imul   %r9,%rax
	spp->tt_pls = spp->pls_per_ch * spp->nchs;
    4702:	49 c1 e1 04          	shl    $0x4,%r9
    4706:	4c 89 89 10 01 00 00 	mov    %r9,0x110(%rcx)

	spp->tt_luns = spp->luns_per_ch * spp->nchs;
    470d:	45 89 c1             	mov    %r8d,%r9d
    4710:	41 c1 e1 04          	shl    $0x4,%r9d
	spp->tt_pgs = spp->pgs_per_ch * spp->nchs;
    4714:	48 89 91 c8 00 00 00 	mov    %rdx,0xc8(%rcx)
	spp->tt_luns = spp->luns_per_ch * spp->nchs;
    471b:	4d 63 c9             	movslq %r9d,%r9
	spp->tt_blks = spp->blks_per_ch * spp->nchs;
    471e:	48 89 81 e0 00 00 00 	mov    %rax,0xe0(%rcx)

	/* line is special, put it at the end */
	spp->blks_per_line = spp->tt_luns; /* TODO: to fix under multiplanes */
	spp->pgs_per_line = spp->blks_per_line * spp->pgs_per_blk;
    4725:	4c 89 c8             	mov    %r9,%rax
	spp->tt_luns = spp->luns_per_ch * spp->nchs;
    4728:	4c 89 89 18 01 00 00 	mov    %r9,0x118(%rcx)
	spp->pgs_per_line = spp->blks_per_line * spp->pgs_per_blk;
    472f:	48 c1 e0 0d          	shl    $0xd,%rax
	spp->blks_per_line = spp->tt_luns; /* TODO: to fix under multiplanes */
    4733:	4c 89 89 f8 00 00 00 	mov    %r9,0xf8(%rcx)
	spp->pgs_per_line = spp->blks_per_line * spp->pgs_per_blk;
    473a:	48 89 81 f0 00 00 00 	mov    %rax,0xf0(%rcx)
	spp->secs_per_line = spp->pgs_per_line * spp->secs_per_pg;
    4741:	4c 89 c8             	mov    %r9,%rax
    4744:	48 c1 e0 10          	shl    $0x10,%rax
	spp->tt_lines = spp->blks_per_lun;
    4748:	48 89 b1 00 01 00 00 	mov    %rsi,0x100(%rcx)
	spp->secs_per_line = spp->pgs_per_line * spp->secs_per_pg;
    474f:	48 89 81 e8 00 00 00 	mov    %rax,0xe8(%rcx)
	/* TODO: to fix under multiplanes */ // lun size is super-block(line) size

	check_params(spp);

	total_size = (unsigned long)spp->tt_luns * spp->blks_per_lun * spp->pgs_per_blk *
    4756:	4c 89 c8             	mov    %r9,%rax
    4759:	48 c1 e0 19          	shl    $0x19,%rax
    475d:	48 89 c2             	mov    %rax,%rdx
		     spp->secsz * spp->secs_per_pg;
	blk_size = spp->pgs_per_blk * spp->secsz * spp->secs_per_pg;
	NVMEV_INFO(
    4760:	48 89 c7             	mov    %rax,%rdi
    4763:	48 c1 e8 14          	shr    $0x14,%rax
	total_size = (unsigned long)spp->tt_luns * spp->blks_per_lun * spp->pgs_per_blk *
    4767:	48 0f af d6          	imul   %rsi,%rdx
	NVMEV_INFO(
    476b:	48 c1 ef 0a          	shr    $0xa,%rdi
    476f:	57                   	push   %rdi
    4770:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4777:	50                   	push   %rax
    4778:	68 00 80 00 00       	push   $0x8000
    477d:	48 89 d1             	mov    %rdx,%rcx
    4780:	48 c1 ea 1e          	shr    $0x1e,%rdx
    4784:	6a 20                	push   $0x20
    4786:	48 c1 e9 14          	shr    $0x14,%rcx
    478a:	56                   	push   %rsi
    478b:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4792:	e8 00 00 00 00       	call   4797 <ssd_init_params+0x227>
		"Total Capacity(GiB,MiB)=%llu,%llu chs=%u luns=%lu lines=%lu blk-size(MiB,KiB)=%u,%u line-size(MiB,KiB)=%lu,%lu",
		BYTE_TO_GB(total_size), BYTE_TO_MB(total_size), spp->nchs, spp->tt_luns,
		spp->tt_lines, BYTE_TO_MB(spp->pgs_per_blk * spp->pgsz),
		BYTE_TO_KB(spp->pgs_per_blk * spp->pgsz), BYTE_TO_MB(spp->pgs_per_line * spp->pgsz),
		BYTE_TO_KB(spp->pgs_per_line * spp->pgsz));
}
    4797:	48 83 c4 28          	add    $0x28,%rsp
    479b:	e9 00 00 00 00       	jmp    47a0 <ssd_init_params+0x230>
	NVMEV_ASSERT((spp->nchs % nparts) == 0);
    47a0:	0f 0b                	ud2
    47a2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    47a9:	00 00 00 00 
    47ad:	0f 1f 00             	nopl   (%rax)

00000000000047b0 <__pfx_ssd_init>:
    47b0:	90                   	nop
    47b1:	90                   	nop
    47b2:	90                   	nop
    47b3:	90                   	nop
    47b4:	90                   	nop
    47b5:	90                   	nop
    47b6:	90                   	nop
    47b7:	90                   	nop
    47b8:	90                   	nop
    47b9:	90                   	nop
    47ba:	90                   	nop
    47bb:	90                   	nop
    47bc:	90                   	nop
    47bd:	90                   	nop
    47be:	90                   	nop
    47bf:	90                   	nop

00000000000047c0 <ssd_init>:
{
	kfree(pcie->perf_model);
}

void ssd_init(struct ssd *ssd, struct ssdparams *spp, uint32_t cpu_nr_dispatcher)
{
    47c0:	f3 0f 1e fa          	endbr64
    47c4:	e8 00 00 00 00       	call   47c9 <ssd_init+0x9>
    47c9:	41 57                	push   %r15
	uint32_t i;
	/* copy spp */
	ssd->sp = *spp;
    47cb:	b9 25 00 00 00       	mov    $0x25,%ecx
{
    47d0:	41 56                	push   %r14
    47d2:	41 89 d6             	mov    %edx,%r14d
    47d5:	41 55                	push   %r13
    47d7:	49 89 fd             	mov    %rdi,%r13
    47da:	41 54                	push   %r12
    47dc:	55                   	push   %rbp
    47dd:	48 89 f5             	mov    %rsi,%rbp
    47e0:	53                   	push   %rbx
    47e1:	48 83 ec 28          	sub    $0x28,%rsp
	ssd->sp = *spp;
    47e5:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
	return __kmalloc(size, flags);
    47e8:	be c0 0c 00 00       	mov    $0xcc0,%esi

	/* initialize conv_ftl internal layout architecture */
	ssd->ch = kmalloc(sizeof(struct ssd_channel) * spp->nchs, GFP_KERNEL); // 40 * 8 = 320
    47ed:	48 63 7d 2c          	movslq 0x2c(%rbp),%rdi
    47f1:	48 c1 e7 05          	shl    $0x5,%rdi
    47f5:	e8 00 00 00 00       	call   47fa <ssd_init+0x3a>
    47fa:	49 89 85 28 01 00 00 	mov    %rax,0x128(%r13)
	for (i = 0; i < spp->nchs; i++) {
    4801:	44 8b 4d 2c          	mov    0x2c(%rbp),%r9d
    4805:	45 85 c9             	test   %r9d,%r9d
    4808:	0f 84 59 02 00 00    	je     4a67 <ssd_init+0x2a7>
    480e:	45 31 e4             	xor    %r12d,%r12d
    4811:	44 89 f3             	mov    %r14d,%ebx
		ssd_init_ch(&(ssd->ch[i]), spp);
    4814:	44 89 e2             	mov    %r12d,%edx
    4817:	be c0 0c 00 00       	mov    $0xcc0,%esi
    481c:	48 c1 e2 05          	shl    $0x5,%rdx
    4820:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
	ch->nluns = spp->luns_per_ch;
    4824:	48 63 45 28          	movslq 0x28(%rbp),%rax
    4828:	41 89 46 08          	mov    %eax,0x8(%r14)
	ch->lun = kmalloc(sizeof(struct nand_lun) * ch->nluns, GFP_KERNEL);
    482c:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    4830:	48 c1 e7 03          	shl    $0x3,%rdi
    4834:	e8 00 00 00 00       	call   4839 <ssd_init+0x79>
	for (i = 0; i < ch->nluns; i++) {
    4839:	45 8b 46 08          	mov    0x8(%r14),%r8d
	ch->lun = kmalloc(sizeof(struct nand_lun) * ch->nluns, GFP_KERNEL);
    483d:	49 89 06             	mov    %rax,(%r14)
	for (i = 0; i < ch->nluns; i++) {
    4840:	45 85 c0             	test   %r8d,%r8d
    4843:	0f 8e d3 01 00 00    	jle    4a1c <ssd_init+0x25c>
    4849:	44 89 64 24 10       	mov    %r12d,0x10(%rsp)
    484e:	45 31 ff             	xor    %r15d,%r15d
    4851:	4c 89 34 24          	mov    %r14,(%rsp)
    4855:	4d 89 ee             	mov    %r13,%r14
    4858:	45 89 fd             	mov    %r15d,%r13d
		ssd_init_nand_lun(&ch->lun[i], spp);
    485b:	49 63 cd             	movslq %r13d,%rcx
    485e:	be c0 0c 00 00       	mov    $0xcc0,%esi
    4863:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    4867:	4c 8d 3c c8          	lea    (%rax,%rcx,8),%r15
	lun->npls = spp->pls_per_lun;
    486b:	48 63 45 24          	movslq 0x24(%rbp),%rax
    486f:	41 89 47 08          	mov    %eax,0x8(%r15)
	lun->pl = kmalloc(sizeof(struct nand_plane) * lun->npls, GFP_KERNEL);
    4873:	48 8d 3c 40          	lea    (%rax,%rax,2),%rdi
    4877:	48 c1 e7 03          	shl    $0x3,%rdi
    487b:	e8 00 00 00 00       	call   4880 <ssd_init+0xc0>
	for (i = 0; i < lun->npls; i++) {
    4880:	41 8b 7f 08          	mov    0x8(%r15),%edi
	lun->pl = kmalloc(sizeof(struct nand_plane) * lun->npls, GFP_KERNEL);
    4884:	49 89 07             	mov    %rax,(%r15)
	for (i = 0; i < lun->npls; i++) {
    4887:	85 ff                	test   %edi,%edi
    4889:	0f 8e 5e 01 00 00    	jle    49ed <ssd_init+0x22d>
    488f:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
    4894:	45 31 e4             	xor    %r12d,%r12d
    4897:	89 5c 24 18          	mov    %ebx,0x18(%rsp)
    489b:	44 89 6c 24 14       	mov    %r13d,0x14(%rsp)
    48a0:	45 89 e5             	mov    %r12d,%r13d
		ssd_init_nand_plane(&lun->pl[i], spp);
    48a3:	49 63 d5             	movslq %r13d,%rdx
    48a6:	be c0 0c 00 00       	mov    $0xcc0,%esi
    48ab:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
    48af:	48 8d 1c d0          	lea    (%rax,%rdx,8),%rbx
	pl->nblks = spp->blks_per_pl;
    48b3:	48 63 45 20          	movslq 0x20(%rbp),%rax
    48b7:	89 43 10             	mov    %eax,0x10(%rbx)
	pl->blk = kmalloc(sizeof(struct nand_block) * pl->nblks, GFP_KERNEL);
    48ba:	48 c1 e0 05          	shl    $0x5,%rax
    48be:	48 89 c7             	mov    %rax,%rdi
    48c1:	e8 00 00 00 00       	call   48c6 <ssd_init+0x106>
	for (i = 0; i < pl->nblks; i++) {
    48c6:	8b 73 10             	mov    0x10(%rbx),%esi
	pl->blk = kmalloc(sizeof(struct nand_block) * pl->nblks, GFP_KERNEL);
    48c9:	48 89 03             	mov    %rax,(%rbx)
	for (i = 0; i < pl->nblks; i++) {
    48cc:	85 f6                	test   %esi,%esi
    48ce:	0f 8e f4 00 00 00    	jle    49c8 <ssd_init+0x208>
    48d4:	44 89 6c 24 1c       	mov    %r13d,0x1c(%rsp)
    48d9:	45 31 ff             	xor    %r15d,%r15d
    48dc:	45 89 fc             	mov    %r15d,%r12d
    48df:	4d 89 f7             	mov    %r14,%r15
		ssd_init_nand_blk(&pl->blk[i], spp);
    48e2:	49 63 d4             	movslq %r12d,%rdx
	blk->npgs = spp->pgs_per_blk;
    48e5:	48 63 7d 1c          	movslq 0x1c(%rbp),%rdi
    48e9:	be c0 0c 00 00       	mov    $0xcc0,%esi
		ssd_init_nand_blk(&pl->blk[i], spp);
    48ee:	48 c1 e2 05          	shl    $0x5,%rdx
    48f2:	4c 8d 2c 10          	lea    (%rax,%rdx,1),%r13
	blk->npgs = spp->pgs_per_blk;
    48f6:	41 89 7d 08          	mov    %edi,0x8(%r13)
	blk->pg = kmalloc(sizeof(struct nand_page) * blk->npgs, GFP_KERNEL);
    48fa:	48 c1 e7 04          	shl    $0x4,%rdi
    48fe:	e8 00 00 00 00       	call   4903 <ssd_init+0x143>
	for (i = 0; i < blk->npgs; i++) {
    4903:	41 8b 4d 08          	mov    0x8(%r13),%ecx
	blk->pg = kmalloc(sizeof(struct nand_page) * blk->npgs, GFP_KERNEL);
    4907:	49 89 45 00          	mov    %rax,0x0(%r13)
	for (i = 0; i < blk->npgs; i++) {
    490b:	85 c9                	test   %ecx,%ecx
    490d:	0f 8e 8b 00 00 00    	jle    499e <ssd_init+0x1de>
    4913:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    4918:	44 89 e6             	mov    %r12d,%esi
    491b:	45 31 f6             	xor    %r14d,%r14d
    491e:	4d 89 ec             	mov    %r13,%r12
    4921:	41 89 f5             	mov    %esi,%r13d
		ssd_init_nand_page(&blk->pg[i], spp);
    4924:	49 63 ce             	movslq %r14d,%rcx
    4927:	be c0 0c 00 00       	mov    $0xcc0,%esi
    492c:	48 c1 e1 04          	shl    $0x4,%rcx
    4930:	48 8d 1c 08          	lea    (%rax,%rcx,1),%rbx
    4934:	48 63 45 04          	movslq 0x4(%rbp),%rax
	pg->nsecs = spp->secs_per_pg;
    4938:	89 43 08             	mov    %eax,0x8(%rbx)
	pg->sec = kmalloc(sizeof(nand_sec_status_t) * pg->nsecs, GFP_KERNEL);
    493b:	48 8d 3c 85 00 00 00 	lea    0x0(,%rax,4),%rdi
    4942:	00 
    4943:	e8 00 00 00 00       	call   4948 <ssd_init+0x188>
	for (i = 0; i < pg->nsecs; i++) {
    4948:	8b 53 08             	mov    0x8(%rbx),%edx
	pg->sec = kmalloc(sizeof(nand_sec_status_t) * pg->nsecs, GFP_KERNEL);
    494b:	48 89 03             	mov    %rax,(%rbx)
	for (i = 0; i < pg->nsecs; i++) {
    494e:	85 d2                	test   %edx,%edx
    4950:	7e 26                	jle    4978 <ssd_init+0x1b8>
		pg->sec[i] = SEC_FREE;
    4952:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
	for (i = 0; i < pg->nsecs; i++) {
    4958:	83 7b 08 01          	cmpl   $0x1,0x8(%rbx)
    495c:	b8 01 00 00 00       	mov    $0x1,%eax
    4961:	7e 15                	jle    4978 <ssd_init+0x1b8>
		pg->sec[i] = SEC_FREE;
    4963:	48 8b 13             	mov    (%rbx),%rdx
    4966:	48 63 c8             	movslq %eax,%rcx
	for (i = 0; i < pg->nsecs; i++) {
    4969:	83 c0 01             	add    $0x1,%eax
		pg->sec[i] = SEC_FREE;
    496c:	c7 04 8a 00 00 00 00 	movl   $0x0,(%rdx,%rcx,4)
	for (i = 0; i < pg->nsecs; i++) {
    4973:	3b 43 08             	cmp    0x8(%rbx),%eax
    4976:	7c eb                	jl     4963 <ssd_init+0x1a3>
	pg->status = PG_FREE;
    4978:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%rbx)
	for (i = 0; i < blk->npgs; i++) {
    497f:	41 83 c6 01          	add    $0x1,%r14d
    4983:	45 3b 74 24 08       	cmp    0x8(%r12),%r14d
    4988:	7d 06                	jge    4990 <ssd_init+0x1d0>
		ssd_init_nand_page(&blk->pg[i], spp);
    498a:	49 8b 04 24          	mov    (%r12),%rax
    498e:	eb 94                	jmp    4924 <ssd_init+0x164>
    4990:	44 89 e8             	mov    %r13d,%eax
    4993:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    4998:	4d 89 e5             	mov    %r12,%r13
    499b:	41 89 c4             	mov    %eax,%r12d
	blk->ipc = 0;
    499e:	49 c7 45 0c 00 00 00 	movq   $0x0,0xc(%r13)
    49a5:	00 
	for (i = 0; i < pl->nblks; i++) {
    49a6:	41 83 c4 01          	add    $0x1,%r12d
	blk->erase_cnt = 0;
    49aa:	49 c7 45 14 00 00 00 	movq   $0x0,0x14(%r13)
    49b1:	00 
	for (i = 0; i < pl->nblks; i++) {
    49b2:	44 3b 63 10          	cmp    0x10(%rbx),%r12d
    49b6:	7d 08                	jge    49c0 <ssd_init+0x200>
		ssd_init_nand_blk(&pl->blk[i], spp);
    49b8:	48 8b 03             	mov    (%rbx),%rax
    49bb:	e9 22 ff ff ff       	jmp    48e2 <ssd_init+0x122>
    49c0:	44 8b 6c 24 1c       	mov    0x1c(%rsp),%r13d
    49c5:	4d 89 fe             	mov    %r15,%r14
	for (i = 0; i < lun->npls; i++) {
    49c8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    49cd:	41 83 c5 01          	add    $0x1,%r13d
    49d1:	44 3b 68 08          	cmp    0x8(%rax),%r13d
    49d5:	7d 08                	jge    49df <ssd_init+0x21f>
		ssd_init_nand_plane(&lun->pl[i], spp);
    49d7:	48 8b 00             	mov    (%rax),%rax
    49da:	e9 c4 fe ff ff       	jmp    48a3 <ssd_init+0xe3>
    49df:	4c 8b 7c 24 08       	mov    0x8(%rsp),%r15
    49e4:	44 8b 6c 24 14       	mov    0x14(%rsp),%r13d
    49e9:	8b 5c 24 18          	mov    0x18(%rsp),%ebx
	for (i = 0; i < ch->nluns; i++) {
    49ed:	48 8b 04 24          	mov    (%rsp),%rax
	lun->next_lun_avail_time = 0;
    49f1:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
    49f8:	00 
	for (i = 0; i < ch->nluns; i++) {
    49f9:	41 83 c5 01          	add    $0x1,%r13d
	lun->busy = false;
    49fd:	41 c6 47 18 00       	movb   $0x0,0x18(%r15)
	for (i = 0; i < ch->nluns; i++) {
    4a02:	44 3b 68 08          	cmp    0x8(%rax),%r13d
    4a06:	7d 08                	jge    4a10 <ssd_init+0x250>
		ssd_init_nand_lun(&ch->lun[i], spp);
    4a08:	48 8b 00             	mov    (%rax),%rax
    4a0b:	e9 4b fe ff ff       	jmp    485b <ssd_init+0x9b>
    4a10:	4d 89 f5             	mov    %r14,%r13
    4a13:	44 8b 64 24 10       	mov    0x10(%rsp),%r12d
    4a18:	4c 8b 34 24          	mov    (%rsp),%r14
			return kmalloc_large(size, flags);
    4a1c:	be c0 0c 00 00       	mov    $0xcc0,%esi
    4a21:	bf 20 80 01 00       	mov    $0x18020,%edi
	for (i = 0; i < spp->nchs; i++) {
    4a26:	41 83 c4 01          	add    $0x1,%r12d
    4a2a:	e8 00 00 00 00       	call   4a2f <ssd_init+0x26f>
	ch->perf_model = kmalloc(sizeof(struct channel_model), GFP_KERNEL);
    4a2f:	49 89 46 18          	mov    %rax,0x18(%r14)
	chmodel_init(ch->perf_model, spp->ch_bandwidth);
    4a33:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    4a37:	48 89 c7             	mov    %rax,%rdi
    4a3a:	e8 00 00 00 00       	call   4a3f <ssd_init+0x27f>
	ch->perf_model->xfer_lat += (spp->fw_ch_xfer_lat * UNIT_XFER_SIZE / KB(4));
    4a3f:	48 63 45 70          	movslq 0x70(%rbp),%rax
    4a43:	49 8b 56 18          	mov    0x18(%r14),%rdx
    4a47:	48 c1 e0 07          	shl    $0x7,%rax
    4a4b:	48 c1 e8 0c          	shr    $0xc,%rax
    4a4f:	01 42 18             	add    %eax,0x18(%rdx)
	for (i = 0; i < spp->nchs; i++) {
    4a52:	44 3b 65 2c          	cmp    0x2c(%rbp),%r12d
    4a56:	73 0c                	jae    4a64 <ssd_init+0x2a4>
		ssd_init_ch(&(ssd->ch[i]), spp);
    4a58:	49 8b 85 28 01 00 00 	mov    0x128(%r13),%rax
    4a5f:	e9 b0 fd ff ff       	jmp    4814 <ssd_init+0x54>
    4a64:	41 89 de             	mov    %ebx,%r14d
	}

	/* Set CPU number to use same cpuclock as io.c */
	ssd->cpu_nr_dispatcher = cpu_nr_dispatcher;
    4a67:	45 89 b5 40 01 00 00 	mov    %r14d,0x140(%r13)
		return kmalloc_trace(
    4a6e:	ba 08 00 00 00       	mov    $0x8,%edx
    4a73:	be c0 0c 00 00       	mov    $0xcc0,%esi
    4a78:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 4a7f <ssd_init+0x2bf>
    4a7f:	e8 00 00 00 00       	call   4a84 <ssd_init+0x2c4>
			return kmalloc_large(size, flags);
    4a84:	be c0 0c 00 00       	mov    $0xcc0,%esi
    4a89:	bf 20 80 01 00       	mov    $0x18020,%edi

	ssd->pcie = kmalloc(sizeof(struct ssd_pcie), GFP_KERNEL);
    4a8e:	49 89 85 30 01 00 00 	mov    %rax,0x130(%r13)
		return kmalloc_trace(
    4a95:	48 89 c3             	mov    %rax,%rbx
			return kmalloc_large(size, flags);
    4a98:	e8 00 00 00 00       	call   4a9d <ssd_init+0x2dd>
	chmodel_init(pcie->perf_model, spp->pcie_bandwidth);
    4a9d:	48 8b b5 80 00 00 00 	mov    0x80(%rbp),%rsi
	pcie->perf_model = kmalloc(sizeof(struct channel_model), GFP_KERNEL);
    4aa4:	48 89 03             	mov    %rax,(%rbx)
    4aa7:	48 89 c7             	mov    %rax,%rdi
	chmodel_init(pcie->perf_model, spp->pcie_bandwidth);
    4aaa:	e8 00 00 00 00       	call   4aaf <ssd_init+0x2ef>
		return kmalloc_trace(
    4aaf:	ba 0c 00 00 00       	mov    $0xc,%edx
    4ab4:	be c0 0c 00 00       	mov    $0xcc0,%esi
    4ab9:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 4ac0 <ssd_init+0x300>
    4ac0:	e8 00 00 00 00       	call   4ac5 <ssd_init+0x305>
	ssd_init_pcie(ssd->pcie, spp);

	ssd->write_buffer = kmalloc(sizeof(struct buffer), GFP_KERNEL);
    4ac5:	49 89 85 38 01 00 00 	mov    %rax,0x138(%r13)
	buf->initial = size;
    4acc:	8b 95 20 01 00 00    	mov    0x120(%rbp),%edx
	spin_lock_init(&buf->lock);
    4ad2:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
	buf->initial = size;
    4ad9:	48 89 d1             	mov    %rdx,%rcx
    4adc:	48 c1 e1 20          	shl    $0x20,%rcx
    4ae0:	48 09 ca             	or     %rcx,%rdx
    4ae3:	48 89 10             	mov    %rdx,(%rax)
	buffer_init(ssd->write_buffer, spp->write_buffer_size);

	return;
}
    4ae6:	48 83 c4 28          	add    $0x28,%rsp
    4aea:	5b                   	pop    %rbx
    4aeb:	5d                   	pop    %rbp
    4aec:	41 5c                	pop    %r12
    4aee:	41 5d                	pop    %r13
    4af0:	41 5e                	pop    %r14
    4af2:	41 5f                	pop    %r15
    4af4:	e9 00 00 00 00       	jmp    4af9 <ssd_init+0x339>
    4af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000004b00 <__pfx_ssd_remove>:
    4b00:	90                   	nop
    4b01:	90                   	nop
    4b02:	90                   	nop
    4b03:	90                   	nop
    4b04:	90                   	nop
    4b05:	90                   	nop
    4b06:	90                   	nop
    4b07:	90                   	nop
    4b08:	90                   	nop
    4b09:	90                   	nop
    4b0a:	90                   	nop
    4b0b:	90                   	nop
    4b0c:	90                   	nop
    4b0d:	90                   	nop
    4b0e:	90                   	nop
    4b0f:	90                   	nop

0000000000004b10 <ssd_remove>:

void ssd_remove(struct ssd *ssd)
{
    4b10:	f3 0f 1e fa          	endbr64
    4b14:	e8 00 00 00 00       	call   4b19 <ssd_remove+0x9>
    4b19:	41 57                	push   %r15
    4b1b:	41 56                	push   %r14
    4b1d:	41 55                	push   %r13
    4b1f:	41 54                	push   %r12
    4b21:	55                   	push   %rbp
    4b22:	53                   	push   %rbx
    4b23:	48 83 ec 18          	sub    $0x18,%rsp
    4b27:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
	uint32_t i;

	if (ssd->write_buffer)
    4b2c:	48 8b bf 38 01 00 00 	mov    0x138(%rdi),%rdi
    4b33:	48 85 ff             	test   %rdi,%rdi
    4b36:	74 05                	je     4b3d <ssd_remove+0x2d>
		kfree(ssd->write_buffer);
    4b38:	e8 00 00 00 00       	call   4b3d <ssd_remove+0x2d>
	if (ssd->pcie) {
    4b3d:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    4b42:	48 8b bb 30 01 00 00 	mov    0x130(%rbx),%rdi
    4b49:	48 85 ff             	test   %rdi,%rdi
    4b4c:	74 1c                	je     4b6a <ssd_remove+0x5a>
		if (ssd->pcie->perf_model)
    4b4e:	48 8b 07             	mov    (%rdi),%rax
    4b51:	48 85 c0             	test   %rax,%rax
    4b54:	74 0f                	je     4b65 <ssd_remove+0x55>
			kfree(ssd->pcie->perf_model);
    4b56:	48 89 c7             	mov    %rax,%rdi
    4b59:	e8 00 00 00 00       	call   4b5e <ssd_remove+0x4e>
		kfree(ssd->pcie);
    4b5e:	48 8b bb 30 01 00 00 	mov    0x130(%rbx),%rdi
    4b65:	e8 00 00 00 00       	call   4b6a <ssd_remove+0x5a>
	}

	for (i = 0; i < ssd->sp.nchs; i++) {
    4b6a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4b6f:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%rsp)
    4b76:	00 
    4b77:	8b 78 2c             	mov    0x2c(%rax),%edi
    4b7a:	85 ff                	test   %edi,%edi
    4b7c:	0f 84 5b 01 00 00    	je     4cdd <ssd_remove+0x1cd>
		ssd_remove_ch(&(ssd->ch[i]));
    4b82:	44 8b 74 24 14       	mov    0x14(%rsp),%r14d
	if (!ch) {
    4b87:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
		ssd_remove_ch(&(ssd->ch[i]));
    4b8c:	49 c1 e6 05          	shl    $0x5,%r14
	if (!ch) {
    4b90:	4c 03 b0 28 01 00 00 	add    0x128(%rax),%r14
    4b97:	4c 89 34 24          	mov    %r14,(%rsp)
    4b9b:	0f 84 be 01 00 00    	je     4d5f <ssd_remove+0x24f>
	if (ch->perf_model)
    4ba1:	48 8b 04 24          	mov    (%rsp),%rax
    4ba5:	48 8b 78 18          	mov    0x18(%rax),%rdi
    4ba9:	48 85 ff             	test   %rdi,%rdi
    4bac:	74 05                	je     4bb3 <ssd_remove+0xa3>
		kfree(ch->perf_model);
    4bae:	e8 00 00 00 00       	call   4bb3 <ssd_remove+0xa3>
	for (i = 0; i < ch->nluns; i++)
    4bb3:	48 8b 04 24          	mov    (%rsp),%rax
    4bb7:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    4bbe:	00 
    4bbf:	8b 70 08             	mov    0x8(%rax),%esi
    4bc2:	85 f6                	test   %esi,%esi
    4bc4:	0f 8e eb 00 00 00    	jle    4cb5 <ssd_remove+0x1a5>
		ssd_remove_nand_lun(&ch->lun[i]);
    4bca:	48 63 44 24 10       	movslq 0x10(%rsp),%rax
    4bcf:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    4bd3:	48 8b 04 24          	mov    (%rsp),%rax
    4bd7:	48 8b 00             	mov    (%rax),%rax
    4bda:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
	if (!lun) {
    4bde:	4d 85 ed             	test   %r13,%r13
    4be1:	0f 84 60 01 00 00    	je     4d47 <ssd_remove+0x237>
	for (i = 0; i < lun->npls; i++)
    4be7:	41 8b 4d 08          	mov    0x8(%r13),%ecx
    4beb:	45 31 e4             	xor    %r12d,%r12d
    4bee:	85 c9                	test   %ecx,%ecx
    4bf0:	0f 8e 9b 00 00 00    	jle    4c91 <ssd_remove+0x181>
		ssd_remove_nand_plane(&lun->pl[i]);
    4bf6:	49 63 c4             	movslq %r12d,%rax
    4bf9:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
    4bfd:	49 8b 45 00          	mov    0x0(%r13),%rax
    4c01:	48 8d 1c d0          	lea    (%rax,%rdx,8),%rbx
	if (!pl) {
    4c05:	48 85 db             	test   %rbx,%rbx
    4c08:	0f 84 21 01 00 00    	je     4d2f <ssd_remove+0x21f>
	for (i = 0; i < pl->nblks; i++)
    4c0e:	8b 53 10             	mov    0x10(%rbx),%edx
    4c11:	31 ed                	xor    %ebp,%ebp
    4c13:	85 d2                	test   %edx,%edx
    4c15:	7e 5f                	jle    4c76 <ssd_remove+0x166>
		ssd_remove_nand_blk(&pl->blk[i]);
    4c17:	48 63 d5             	movslq %ebp,%rdx
    4c1a:	48 c1 e2 05          	shl    $0x5,%rdx
	if (!blk) {
    4c1e:	48 03 13             	add    (%rbx),%rdx
    4c21:	49 89 d7             	mov    %rdx,%r15
    4c24:	0f 84 ed 00 00 00    	je     4d17 <ssd_remove+0x207>
	for (i = 0; i < blk->npgs; i++)
    4c2a:	8b 42 08             	mov    0x8(%rdx),%eax
	if (blk->pg)
    4c2d:	48 8b 3a             	mov    (%rdx),%rdi
	for (i = 0; i < blk->npgs; i++)
    4c30:	45 31 f6             	xor    %r14d,%r14d
    4c33:	85 c0                	test   %eax,%eax
    4c35:	7e 2d                	jle    4c64 <ssd_remove+0x154>
		ssd_remove_nand_page(&blk->pg[i]);
    4c37:	49 63 c6             	movslq %r14d,%rax
    4c3a:	48 c1 e0 04          	shl    $0x4,%rax
	if (!pg) {
    4c3e:	48 01 f8             	add    %rdi,%rax
    4c41:	0f 84 b5 00 00 00    	je     4cfc <ssd_remove+0x1ec>
	if (pg->sec)
    4c47:	48 8b 00             	mov    (%rax),%rax
    4c4a:	48 85 c0             	test   %rax,%rax
    4c4d:	74 0b                	je     4c5a <ssd_remove+0x14a>
		kfree(pg->sec);
    4c4f:	48 89 c7             	mov    %rax,%rdi
    4c52:	e8 00 00 00 00       	call   4c57 <ssd_remove+0x147>
	if (blk->pg)
    4c57:	49 8b 3f             	mov    (%r15),%rdi
	for (i = 0; i < blk->npgs; i++)
    4c5a:	41 83 c6 01          	add    $0x1,%r14d
    4c5e:	45 3b 77 08          	cmp    0x8(%r15),%r14d
    4c62:	7c d3                	jl     4c37 <ssd_remove+0x127>
	if (blk->pg)
    4c64:	48 85 ff             	test   %rdi,%rdi
    4c67:	74 05                	je     4c6e <ssd_remove+0x15e>
		kfree(blk->pg);
    4c69:	e8 00 00 00 00       	call   4c6e <ssd_remove+0x15e>
	for (i = 0; i < pl->nblks; i++)
    4c6e:	83 c5 01             	add    $0x1,%ebp
    4c71:	3b 6b 10             	cmp    0x10(%rbx),%ebp
    4c74:	7c a1                	jl     4c17 <ssd_remove+0x107>
	if (pl->blk)
    4c76:	48 8b 3b             	mov    (%rbx),%rdi
    4c79:	48 85 ff             	test   %rdi,%rdi
    4c7c:	74 05                	je     4c83 <ssd_remove+0x173>
		kfree(pl->blk);
    4c7e:	e8 00 00 00 00       	call   4c83 <ssd_remove+0x173>
	for (i = 0; i < lun->npls; i++)
    4c83:	41 83 c4 01          	add    $0x1,%r12d
    4c87:	45 3b 65 08          	cmp    0x8(%r13),%r12d
    4c8b:	0f 8c 65 ff ff ff    	jl     4bf6 <ssd_remove+0xe6>
	if (lun->pl)
    4c91:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    4c95:	48 85 ff             	test   %rdi,%rdi
    4c98:	74 05                	je     4c9f <ssd_remove+0x18f>
		kfree(lun->pl);
    4c9a:	e8 00 00 00 00       	call   4c9f <ssd_remove+0x18f>
	for (i = 0; i < ch->nluns; i++)
    4c9f:	48 8b 0c 24          	mov    (%rsp),%rcx
    4ca3:	83 44 24 10 01       	addl   $0x1,0x10(%rsp)
    4ca8:	8b 44 24 10          	mov    0x10(%rsp),%eax
    4cac:	3b 41 08             	cmp    0x8(%rcx),%eax
    4caf:	0f 8c 15 ff ff ff    	jl     4bca <ssd_remove+0xba>
	if (ch->lun)
    4cb5:	48 8b 04 24          	mov    (%rsp),%rax
    4cb9:	48 8b 38             	mov    (%rax),%rdi
    4cbc:	48 85 ff             	test   %rdi,%rdi
    4cbf:	74 05                	je     4cc6 <ssd_remove+0x1b6>
		kfree(ch->lun);
    4cc1:	e8 00 00 00 00       	call   4cc6 <ssd_remove+0x1b6>
	for (i = 0; i < ssd->sp.nchs; i++) {
    4cc6:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    4ccb:	83 44 24 14 01       	addl   $0x1,0x14(%rsp)
    4cd0:	8b 44 24 14          	mov    0x14(%rsp),%eax
    4cd4:	3b 41 2c             	cmp    0x2c(%rcx),%eax
    4cd7:	0f 82 a5 fe ff ff    	jb     4b82 <ssd_remove+0x72>
	}

	kfree(ssd->ch);
    4cdd:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4ce2:	48 8b b8 28 01 00 00 	mov    0x128(%rax),%rdi
}
    4ce9:	48 83 c4 18          	add    $0x18,%rsp
    4ced:	5b                   	pop    %rbx
    4cee:	5d                   	pop    %rbp
    4cef:	41 5c                	pop    %r12
    4cf1:	41 5d                	pop    %r13
    4cf3:	41 5e                	pop    %r14
    4cf5:	41 5f                	pop    %r15
	kfree(ssd->ch);
    4cf7:	e9 00 00 00 00       	jmp    4cfc <ssd_remove+0x1ec>
		NVMEV_ERROR("ssd_remove_nand_page(NULL)\n");
    4cfc:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4d03:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4d0a:	e8 00 00 00 00       	call   4d0f <ssd_remove+0x1ff>
	if (blk->pg)
    4d0f:	49 8b 3f             	mov    (%r15),%rdi
		return;
    4d12:	e9 43 ff ff ff       	jmp    4c5a <ssd_remove+0x14a>
		NVMEV_ERROR("ssd_remove_nand_blk(NULL)\n");
    4d17:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4d1e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4d25:	e8 00 00 00 00       	call   4d2a <ssd_remove+0x21a>
		return;
    4d2a:	e9 3f ff ff ff       	jmp    4c6e <ssd_remove+0x15e>
		NVMEV_ERROR("ssd_remove_nand_plane(NULL)\n");
    4d2f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4d36:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4d3d:	e8 00 00 00 00       	call   4d42 <ssd_remove+0x232>
		return;
    4d42:	e9 3c ff ff ff       	jmp    4c83 <ssd_remove+0x173>
		NVMEV_ERROR("ssd_remove_nand_lun(NULL)\n");
    4d47:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4d4e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4d55:	e8 00 00 00 00       	call   4d5a <ssd_remove+0x24a>
		return;
    4d5a:	e9 40 ff ff ff       	jmp    4c9f <ssd_remove+0x18f>
		NVMEV_ERROR("ssd_remove_ch(NULL)\n");
    4d5f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4d66:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4d6d:	e8 00 00 00 00       	call   4d72 <ssd_remove+0x262>
		return;
    4d72:	e9 4f ff ff ff       	jmp    4cc6 <ssd_remove+0x1b6>
    4d77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    4d7e:	00 00 

0000000000004d80 <__pfx_ssd_advance_pcie>:
    4d80:	90                   	nop
    4d81:	90                   	nop
    4d82:	90                   	nop
    4d83:	90                   	nop
    4d84:	90                   	nop
    4d85:	90                   	nop
    4d86:	90                   	nop
    4d87:	90                   	nop
    4d88:	90                   	nop
    4d89:	90                   	nop
    4d8a:	90                   	nop
    4d8b:	90                   	nop
    4d8c:	90                   	nop
    4d8d:	90                   	nop
    4d8e:	90                   	nop
    4d8f:	90                   	nop

0000000000004d90 <ssd_advance_pcie>:

uint64_t ssd_advance_pcie(struct ssd *ssd, uint64_t request_time, uint64_t length)
{
    4d90:	f3 0f 1e fa          	endbr64
    4d94:	e8 00 00 00 00       	call   4d99 <ssd_advance_pcie+0x9>
	struct channel_model *perf_model = ssd->pcie->perf_model;
    4d99:	48 8b 87 30 01 00 00 	mov    0x130(%rdi),%rax
	return chmodel_request(perf_model, request_time, length);
    4da0:	48 8b 38             	mov    (%rax),%rdi
    4da3:	e9 00 00 00 00       	jmp    4da8 <ssd_advance_pcie+0x18>
    4da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    4daf:	00 

0000000000004db0 <__pfx_ssd_advance_write_buffer>:
    4db0:	90                   	nop
    4db1:	90                   	nop
    4db2:	90                   	nop
    4db3:	90                   	nop
    4db4:	90                   	nop
    4db5:	90                   	nop
    4db6:	90                   	nop
    4db7:	90                   	nop
    4db8:	90                   	nop
    4db9:	90                   	nop
    4dba:	90                   	nop
    4dbb:	90                   	nop
    4dbc:	90                   	nop
    4dbd:	90                   	nop
    4dbe:	90                   	nop
    4dbf:	90                   	nop

0000000000004dc0 <ssd_advance_write_buffer>:
  X : transfer size (4KB unit)
  A : fw_wbuf_lat0
  B : fw_wbuf_lat1 + pcie dma transfer
*/
uint64_t ssd_advance_write_buffer(struct ssd *ssd, uint64_t request_time, uint64_t length)
{
    4dc0:	f3 0f 1e fa          	endbr64
    4dc4:	e8 00 00 00 00       	call   4dc9 <ssd_advance_write_buffer+0x9>
	uint64_t nsecs_latest = request_time;
	struct ssdparams *spp = &ssd->sp;

	nsecs_latest += spp->fw_wbuf_lat0;
    4dc9:	48 63 47 68          	movslq 0x68(%rdi),%rax
	nsecs_latest += spp->fw_wbuf_lat1 * DIV_ROUND_UP(length, KB(4));
    4dcd:	48 63 4f 6c          	movslq 0x6c(%rdi),%rcx
	nsecs_latest += spp->fw_wbuf_lat0;
    4dd1:	48 01 f0             	add    %rsi,%rax
	nsecs_latest += spp->fw_wbuf_lat1 * DIV_ROUND_UP(length, KB(4));
    4dd4:	48 8d b2 ff 0f 00 00 	lea    0xfff(%rdx),%rsi
    4ddb:	48 c1 ee 0c          	shr    $0xc,%rsi
    4ddf:	48 0f af f1          	imul   %rcx,%rsi
    4de3:	48 01 c6             	add    %rax,%rsi
	struct channel_model *perf_model = ssd->pcie->perf_model;
    4de6:	48 8b 87 30 01 00 00 	mov    0x130(%rdi),%rax
	return chmodel_request(perf_model, request_time, length);
    4ded:	48 8b 38             	mov    (%rax),%rdi
    4df0:	e9 00 00 00 00       	jmp    4df5 <ssd_advance_write_buffer+0x35>
    4df5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    4dfc:	00 00 00 00 

0000000000004e00 <__pfx_ssd_advance_nand>:
    4e00:	90                   	nop
    4e01:	90                   	nop
    4e02:	90                   	nop
    4e03:	90                   	nop
    4e04:	90                   	nop
    4e05:	90                   	nop
    4e06:	90                   	nop
    4e07:	90                   	nop
    4e08:	90                   	nop
    4e09:	90                   	nop
    4e0a:	90                   	nop
    4e0b:	90                   	nop
    4e0c:	90                   	nop
    4e0d:	90                   	nop
    4e0e:	90                   	nop
    4e0f:	90                   	nop

0000000000004e10 <ssd_advance_nand>:

	return nsecs_latest;
}

uint64_t ssd_advance_nand(struct ssd *ssd, struct nand_cmd *ncmd)
{
    4e10:	f3 0f 1e fa          	endbr64
    4e14:	e8 00 00 00 00       	call   4e19 <ssd_advance_nand+0x9>
    4e19:	41 57                	push   %r15
    4e1b:	48 89 f1             	mov    %rsi,%rcx
    4e1e:	49 89 ff             	mov    %rdi,%r15
    4e21:	41 56                	push   %r14
    4e23:	41 55                	push   %r13
    4e25:	41 54                	push   %r12
    4e27:	55                   	push   %rbp
    4e28:	53                   	push   %rbx
    4e29:	48 83 ec 10          	sub    $0x10,%rsp
	int c = ncmd->cmd;
	uint64_t cmd_stime = (ncmd->stime == 0) ? __get_ioclock(ssd) : ncmd->stime;
    4e2d:	48 8b 6e 10          	mov    0x10(%rsi),%rbp
	int c = ncmd->cmd;
    4e31:	8b 5e 04             	mov    0x4(%rsi),%ebx
	uint64_t cmd_stime = (ncmd->stime == 0) ? __get_ioclock(ssd) : ncmd->stime;
    4e34:	48 85 ed             	test   %rbp,%rbp
    4e37:	0f 84 b8 00 00 00    	je     4ef5 <ssd_advance_nand+0xe5>
	uint64_t chnl_stime, chnl_etime;
	uint64_t remaining, xfer_size, completed_time;
	struct ssdparams *spp;
	struct nand_lun *lun;
	struct ssd_channel *ch;
	struct ppa *ppa = ncmd->ppa;
    4e3d:	48 8b 41 20          	mov    0x20(%rcx),%rax
	uint32_t cell;
	NVMEV_DEBUG(
		"SSD: %p, Enter stime: %lld, ch %lu lun %lu blk %lu page %lu command %d ppa 0x%llx\n",
		ssd, ncmd->stime, ppa->g.ch, ppa->g.lun, ppa->g.blk, ppa->g.pg, c, ppa->ppa);

	if (ppa->ppa == UNMAPPED_PPA) {
    4e41:	48 83 38 ff          	cmpq   $0xffffffffffffffff,(%rax)
    4e45:	0f 84 ce 00 00 00    	je     4f19 <ssd_advance_nand+0x109>
	unsigned int cpu_nr_dispatcher;
};

static inline struct ssd_channel *get_ch(struct ssd *ssd, struct ppa *ppa)
{
	return &(ssd->ch[ppa->g.ch]);
    4e4b:	44 0f b6 40 06       	movzbl 0x6(%rax),%r8d
}

static inline struct nand_lun *get_lun(struct ssd *ssd, struct ppa *ppa)
{
	struct ssd_channel *ch = get_ch(ssd, ppa);
	return &(ch->lun[ppa->g.lun]);
    4e50:	0f b6 50 05          	movzbl 0x5(%rax),%edx
}

static inline uint32_t get_cell(struct ssd *ssd, struct ppa *ppa)
{
	struct ssdparams *spp = &ssd->sp;
	return (ppa->g.pg / spp->pgs_per_flashpg) % (spp->cell_mode + 1);
    4e54:	41 8b 7f 0c          	mov    0xc(%r15),%edi
    4e58:	0f b7 00             	movzwl (%rax),%eax
	return &(ssd->ch[ppa->g.ch]);
    4e5b:	49 c1 e0 05          	shl    $0x5,%r8
    4e5f:	4d 03 87 28 01 00 00 	add    0x128(%r15),%r8
	return &(ch->lun[ppa->g.lun]);
    4e66:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi

	spp = &ssd->sp;
	lun = get_lun(ssd, ppa);
	ch = get_ch(ssd, ppa);
	cell = get_cell(ssd, ppa);
	remaining = ncmd->xfer_size;
    4e6a:	4c 8b 71 08          	mov    0x8(%rcx),%r14
    4e6e:	49 8b 10             	mov    (%r8),%rdx
	return &(ssd->ch[ppa->g.ch]);
    4e71:	4d 89 c5             	mov    %r8,%r13
	return &(ch->lun[ppa->g.lun]);
    4e74:	48 8d 14 f2          	lea    (%rdx,%rsi,8),%rdx
	return (ppa->g.pg / spp->pgs_per_flashpg) % (spp->cell_mode + 1);
    4e78:	41 8b 77 30          	mov    0x30(%r15),%esi
	return &(ch->lun[ppa->g.lun]);
    4e7c:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)

	switch (c) {
    4e81:	83 fb 02             	cmp    $0x2,%ebx
    4e84:	0f 84 c7 00 00 00    	je     4f51 <ssd_advance_nand+0x141>
    4e8a:	7f 4e                	jg     4eda <ssd_advance_nand+0xca>
    4e8c:	85 db                	test   %ebx,%ebx
    4e8e:	0f 84 dd 00 00 00    	je     4f71 <ssd_advance_nand+0x161>
    4e94:	83 fb 01             	cmp    $0x1,%ebx
    4e97:	0f 85 98 00 00 00    	jne    4f35 <ssd_advance_nand+0x125>
		lun->next_lun_avail_time = chnl_etime;
		break;

	case NAND_WRITE:
		/* write: transfer data through channel first */
		chnl_stime = (lun->next_lun_avail_time < cmd_stime) ? cmd_stime :
    4e9d:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
								      lun->next_lun_avail_time;

		chnl_etime = chmodel_request(ch->perf_model, chnl_stime, ncmd->xfer_size);
    4ea2:	49 8b 78 18          	mov    0x18(%r8),%rdi
    4ea6:	4c 89 f2             	mov    %r14,%rdx
		chnl_stime = (lun->next_lun_avail_time < cmd_stime) ? cmd_stime :
    4ea9:	48 8b 73 10          	mov    0x10(%rbx),%rsi
    4ead:	48 39 f5             	cmp    %rsi,%rbp
    4eb0:	48 0f 43 f5          	cmovae %rbp,%rsi
		chnl_etime = chmodel_request(ch->perf_model, chnl_stime, ncmd->xfer_size);
    4eb4:	e8 00 00 00 00       	call   4eb9 <ssd_advance_nand+0xa9>

		/* write: then do NAND program */
		nand_stime = chnl_etime;
		nand_etime = nand_stime + spp->pg_wr_lat;
    4eb9:	49 63 6f 54          	movslq 0x54(%r15),%rbp
    4ebd:	48 01 c5             	add    %rax,%rbp
		lun->next_lun_avail_time = nand_etime;
    4ec0:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
		NVMEV_ERROR("Unsupported NAND command: 0x%x\n", c);
		return 0;
	}

	return completed_time;
}
    4ec4:	48 83 c4 10          	add    $0x10,%rsp
    4ec8:	48 89 e8             	mov    %rbp,%rax
    4ecb:	5b                   	pop    %rbx
    4ecc:	5d                   	pop    %rbp
    4ecd:	41 5c                	pop    %r12
    4ecf:	41 5d                	pop    %r13
    4ed1:	41 5e                	pop    %r14
    4ed3:	41 5f                	pop    %r15
    4ed5:	e9 00 00 00 00       	jmp    4eda <ssd_advance_nand+0xca>
	switch (c) {
    4eda:	83 fb 03             	cmp    $0x3,%ebx
    4edd:	75 56                	jne    4f35 <ssd_advance_nand+0x125>
		nand_stime = (lun->next_lun_avail_time < cmd_stime) ? cmd_stime :
    4edf:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    4ee4:	48 8b 46 10          	mov    0x10(%rsi),%rax
    4ee8:	48 39 c5             	cmp    %rax,%rbp
    4eeb:	48 0f 42 e8          	cmovb  %rax,%rbp
		lun->next_lun_avail_time = nand_stime;
    4eef:	48 89 6e 10          	mov    %rbp,0x10(%rsi)
		break;
    4ef3:	eb cf                	jmp    4ec4 <ssd_advance_nand+0xb4>
	return sched_clock_cpu(cpu);
    4ef5:	8b bf 40 01 00 00    	mov    0x140(%rdi),%edi
    4efb:	48 89 34 24          	mov    %rsi,(%rsp)
    4eff:	e8 00 00 00 00       	call   4f04 <ssd_advance_nand+0xf4>
    4f04:	48 8b 0c 24          	mov    (%rsp),%rcx
    4f08:	48 89 c5             	mov    %rax,%rbp
	struct ppa *ppa = ncmd->ppa;
    4f0b:	48 8b 41 20          	mov    0x20(%rcx),%rax
	if (ppa->ppa == UNMAPPED_PPA) {
    4f0f:	48 83 38 ff          	cmpq   $0xffffffffffffffff,(%rax)
    4f13:	0f 85 32 ff ff ff    	jne    4e4b <ssd_advance_nand+0x3b>
		NVMEV_ERROR("Error ppa 0x%llx\n", ppa->ppa);
    4f19:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    4f20:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4f27:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4f2e:	e8 00 00 00 00       	call   4f33 <ssd_advance_nand+0x123>
		return cmd_stime;
    4f33:	eb 8f                	jmp    4ec4 <ssd_advance_nand+0xb4>
		NVMEV_ERROR("Unsupported NAND command: 0x%x\n", c);
    4f35:	89 da                	mov    %ebx,%edx
    4f37:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    4f3e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
		return 0;
    4f45:	31 ed                	xor    %ebp,%ebp
		NVMEV_ERROR("Unsupported NAND command: 0x%x\n", c);
    4f47:	e8 00 00 00 00       	call   4f4c <ssd_advance_nand+0x13c>
		return 0;
    4f4c:	e9 73 ff ff ff       	jmp    4ec4 <ssd_advance_nand+0xb4>
		nand_stime = (lun->next_lun_avail_time < cmd_stime) ? cmd_stime :
    4f51:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    4f56:	48 8b 42 10          	mov    0x10(%rdx),%rax
    4f5a:	48 39 c5             	cmp    %rax,%rbp
    4f5d:	48 0f 43 c5          	cmovae %rbp,%rax
		nand_etime = nand_stime + spp->blk_er_lat;
    4f61:	49 63 6f 58          	movslq 0x58(%r15),%rbp
    4f65:	48 01 c5             	add    %rax,%rbp
		lun->next_lun_avail_time = nand_etime;
    4f68:	48 89 6a 10          	mov    %rbp,0x10(%rdx)
		break;
    4f6c:	e9 53 ff ff ff       	jmp    4ec4 <ssd_advance_nand+0xb4>
	return (ppa->g.pg / spp->pgs_per_flashpg) % (spp->cell_mode + 1);
    4f71:	99                   	cltd
    4f72:	83 c6 01             	add    $0x1,%esi
    4f75:	f7 ff                	idiv   %edi
    4f77:	99                   	cltd
    4f78:	f7 fe                	idiv   %esi
		nand_stime = (lun->next_lun_avail_time < cmd_stime) ? cmd_stime :
    4f7a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4f7f:	4c 8b 60 10          	mov    0x10(%rax),%r12
    4f83:	4c 39 e5             	cmp    %r12,%rbp
    4f86:	4c 0f 43 e5          	cmovae %rbp,%r12
			nand_etime = nand_stime + spp->pg_4kb_rd_lat[cell];
    4f8a:	89 d2                	mov    %edx,%edx
		if (ncmd->xfer_size == 4096) {
    4f8c:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    4f93:	74 71                	je     5006 <ssd_advance_nand+0x1f6>
			nand_etime = nand_stime + spp->pg_rd_lat[cell];
    4f95:	49 63 44 97 48       	movslq 0x48(%r15,%rdx,4),%rax
    4f9a:	49 01 c4             	add    %rax,%r12
		while (remaining) {
    4f9d:	4d 85 f6             	test   %r14,%r14
    4fa0:	75 07                	jne    4fa9 <ssd_advance_nand+0x199>
    4fa2:	eb 6c                	jmp    5010 <ssd_advance_nand+0x200>
    4fa4:	49 29 de             	sub    %rbx,%r14
    4fa7:	74 4f                	je     4ff8 <ssd_advance_nand+0x1e8>
			xfer_size = min(remaining, (uint64_t)spp->max_ch_xfer_size);
    4fa9:	49 63 5f 5c          	movslq 0x5c(%r15),%rbx
			chnl_etime = chmodel_request(ch->perf_model, chnl_stime, xfer_size);
    4fad:	49 8b 7d 18          	mov    0x18(%r13),%rdi
    4fb1:	4c 89 e6             	mov    %r12,%rsi
    4fb4:	48 89 0c 24          	mov    %rcx,(%rsp)
			xfer_size = min(remaining, (uint64_t)spp->max_ch_xfer_size);
    4fb8:	4c 39 f3             	cmp    %r14,%rbx
    4fbb:	49 0f 47 de          	cmova  %r14,%rbx
			chnl_etime = chmodel_request(ch->perf_model, chnl_stime, xfer_size);
    4fbf:	48 89 da             	mov    %rbx,%rdx
    4fc2:	e8 00 00 00 00       	call   4fc7 <ssd_advance_nand+0x1b7>
			if (ncmd->interleave_pci_dma) { /* overlap pci transfer with nand ch transfer*/
    4fc7:	48 8b 0c 24          	mov    (%rsp),%rcx
			chnl_etime = chmodel_request(ch->perf_model, chnl_stime, xfer_size);
    4fcb:	49 89 c4             	mov    %rax,%r12
    4fce:	48 89 c5             	mov    %rax,%rbp
			if (ncmd->interleave_pci_dma) { /* overlap pci transfer with nand ch transfer*/
    4fd1:	80 79 18 00          	cmpb   $0x0,0x18(%rcx)
    4fd5:	74 cd                	je     4fa4 <ssd_advance_nand+0x194>
	struct channel_model *perf_model = ssd->pcie->perf_model;
    4fd7:	49 8b 87 30 01 00 00 	mov    0x130(%r15),%rax
	return chmodel_request(perf_model, request_time, length);
    4fde:	48 89 da             	mov    %rbx,%rdx
    4fe1:	4c 89 e6             	mov    %r12,%rsi
    4fe4:	48 8b 38             	mov    (%rax),%rdi
    4fe7:	e8 00 00 00 00       	call   4fec <ssd_advance_nand+0x1dc>
    4fec:	48 8b 0c 24          	mov    (%rsp),%rcx
    4ff0:	48 89 c5             	mov    %rax,%rbp
		while (remaining) {
    4ff3:	49 29 de             	sub    %rbx,%r14
    4ff6:	75 b1                	jne    4fa9 <ssd_advance_nand+0x199>
		lun->next_lun_avail_time = chnl_etime;
    4ff8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4ffd:	4c 89 60 10          	mov    %r12,0x10(%rax)
		break;
    5001:	e9 be fe ff ff       	jmp    4ec4 <ssd_advance_nand+0xb4>
			nand_etime = nand_stime + spp->pg_4kb_rd_lat[cell];
    5006:	49 63 44 97 3c       	movslq 0x3c(%r15,%rdx,4),%rax
    500b:	49 01 c4             	add    %rax,%r12
		while (remaining) {
    500e:	eb 99                	jmp    4fa9 <ssd_advance_nand+0x199>
	uint64_t chnl_stime, chnl_etime;
    5010:	45 31 e4             	xor    %r12d,%r12d
	uint64_t remaining, xfer_size, completed_time;
    5013:	31 ed                	xor    %ebp,%ebp
    5015:	eb e1                	jmp    4ff8 <ssd_advance_nand+0x1e8>
    5017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    501e:	00 00 

0000000000005020 <__pfx_ssd_next_idle_time>:
    5020:	90                   	nop
    5021:	90                   	nop
    5022:	90                   	nop
    5023:	90                   	nop
    5024:	90                   	nop
    5025:	90                   	nop
    5026:	90                   	nop
    5027:	90                   	nop
    5028:	90                   	nop
    5029:	90                   	nop
    502a:	90                   	nop
    502b:	90                   	nop
    502c:	90                   	nop
    502d:	90                   	nop
    502e:	90                   	nop
    502f:	90                   	nop

0000000000005030 <ssd_next_idle_time>:

uint64_t ssd_next_idle_time(struct ssd *ssd)
{
    5030:	f3 0f 1e fa          	endbr64
    5034:	e8 00 00 00 00       	call   5039 <ssd_next_idle_time+0x9>
    5039:	53                   	push   %rbx
    503a:	48 89 fb             	mov    %rdi,%rbx
    503d:	8b bf 40 01 00 00    	mov    0x140(%rdi),%edi
    5043:	e8 00 00 00 00       	call   5048 <ssd_next_idle_time+0x18>
	struct ssdparams *spp = &ssd->sp;
	uint32_t i, j;
	uint64_t latest = __get_ioclock(ssd);

	for (i = 0; i < spp->nchs; i++) {
    5048:	8b 4b 2c             	mov    0x2c(%rbx),%ecx
    504b:	48 89 c2             	mov    %rax,%rdx
    504e:	85 c9                	test   %ecx,%ecx
    5050:	74 60                	je     50b2 <ssd_next_idle_time+0x82>
		struct ssd_channel *ch = &ssd->ch[i];

		for (j = 0; j < spp->luns_per_ch; j++) {
    5052:	8b 73 28             	mov    0x28(%rbx),%esi
    5055:	48 8b 83 28 01 00 00 	mov    0x128(%rbx),%rax
    505c:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
    5060:	49 c1 e0 05          	shl    $0x5,%r8
    5064:	8d 4e ff             	lea    -0x1(%rsi),%ecx
    5067:	48 8d 78 20          	lea    0x20(%rax),%rdi
    506b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    506f:	49 01 f8             	add    %rdi,%r8
    5072:	48 c1 e1 03          	shl    $0x3,%rcx
    5076:	85 f6                	test   %esi,%esi
    5078:	74 33                	je     50ad <ssd_next_idle_time+0x7d>
    507a:	4c 8d 49 38          	lea    0x38(%rcx),%r9
			struct nand_lun *lun = &ch->lun[j];
    507e:	48 8b 30             	mov    (%rax),%rsi
    5081:	48 8d 46 10          	lea    0x10(%rsi),%rax
    5085:	4c 01 ce             	add    %r9,%rsi
			latest = max(latest, lun->next_lun_avail_time);
    5088:	48 8b 08             	mov    (%rax),%rcx
    508b:	48 39 ca             	cmp    %rcx,%rdx
    508e:	48 0f 42 d1          	cmovb  %rcx,%rdx
		for (j = 0; j < spp->luns_per_ch; j++) {
    5092:	48 83 c0 28          	add    $0x28,%rax
    5096:	48 39 f0             	cmp    %rsi,%rax
    5099:	75 ed                	jne    5088 <ssd_next_idle_time+0x58>
	for (i = 0; i < spp->nchs; i++) {
    509b:	48 89 f8             	mov    %rdi,%rax
    509e:	4c 39 c7             	cmp    %r8,%rdi
    50a1:	74 0f                	je     50b2 <ssd_next_idle_time+0x82>
    50a3:	48 83 c7 20          	add    $0x20,%rdi
    50a7:	eb d5                	jmp    507e <ssd_next_idle_time+0x4e>
    50a9:	48 83 c7 20          	add    $0x20,%rdi
    50ad:	4c 39 c7             	cmp    %r8,%rdi
    50b0:	75 f7                	jne    50a9 <ssd_next_idle_time+0x79>
		}
	}

	return latest;
}
    50b2:	48 89 d0             	mov    %rdx,%rax
    50b5:	5b                   	pop    %rbx
    50b6:	e9 00 00 00 00       	jmp    50bb <ssd_next_idle_time+0x8b>
    50bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000050c0 <__pfx_adjust_ftl_latency>:
    50c0:	90                   	nop
    50c1:	90                   	nop
    50c2:	90                   	nop
    50c3:	90                   	nop
    50c4:	90                   	nop
    50c5:	90                   	nop
    50c6:	90                   	nop
    50c7:	90                   	nop
    50c8:	90                   	nop
    50c9:	90                   	nop
    50ca:	90                   	nop
    50cb:	90                   	nop
    50cc:	90                   	nop
    50cd:	90                   	nop
    50ce:	90                   	nop
    50cf:	90                   	nop

00000000000050d0 <adjust_ftl_latency>:

void adjust_ftl_latency(int target, int lat)
{
    50d0:	f3 0f 1e fa          	endbr64
    50d4:	e8 00 00 00 00       	call   50d9 <adjust_ftl_latency+0x9>
                NVMEV_ERROR("Unsupported NAND command\n");
        }
        NVMEV_INFO("After latency: %d %d %d\n", spp->pg_rd_lat, spp->pg_wr_lat, spp->blk_er_lat);
    }
#endif
}
    50d9:	e9 00 00 00 00       	jmp    50de <adjust_ftl_latency+0xe>
    50de:	66 90                	xchg   %ax,%ax

00000000000050e0 <__pfx_zns_proc_nvme_io_cmd>:
    50e0:	90                   	nop
    50e1:	90                   	nop
    50e2:	90                   	nop
    50e3:	90                   	nop
    50e4:	90                   	nop
    50e5:	90                   	nop
    50e6:	90                   	nop
    50e7:	90                   	nop
    50e8:	90                   	nop
    50e9:	90                   	nop
    50ea:	90                   	nop
    50eb:	90                   	nop
    50ec:	90                   	nop
    50ed:	90                   	nop
    50ee:	90                   	nop
    50ef:	90                   	nop

00000000000050f0 <zns_proc_nvme_io_cmd>:
	ret->nsecs_target = latest;
	return;
}

bool zns_proc_nvme_io_cmd(struct nvmev_ns *ns, struct nvmev_request *req, struct nvmev_result *ret)
{
    50f0:	f3 0f 1e fa          	endbr64
    50f4:	e8 00 00 00 00       	call   50f9 <zns_proc_nvme_io_cmd+0x9>
	struct nvme_command *cmd = req->cmd;
	NVMEV_ASSERT(ns->csi == NVME_CSI_ZNS);
    50f9:	83 7f 04 02          	cmpl   $0x2,0x4(%rdi)
    50fd:	0f 85 5d 01 00 00    	jne    5260 <zns_proc_nvme_io_cmd+0x170>
{
    5103:	41 56                	push   %r14
    5105:	41 55                	push   %r13
    5107:	41 54                	push   %r12
    5109:	55                   	push   %rbp
    510a:	53                   	push   %rbx
	/*still not support multi partitions ...*/
	NVMEV_ASSERT(ns->nr_parts == 1);
    510b:	83 7f 18 01          	cmpl   $0x1,0x18(%rdi)
    510f:	48 89 fb             	mov    %rdi,%rbx
    5112:	0f 85 4a 01 00 00    	jne    5262 <zns_proc_nvme_io_cmd+0x172>
	struct nvme_command *cmd = req->cmd;
    5118:	4c 8b 26             	mov    (%rsi),%r12

	switch (cmd->common.opcode) {
    511b:	48 89 d5             	mov    %rdx,%rbp
    511e:	45 0f b6 04 24       	movzbl (%r12),%r8d
    5123:	41 80 f8 79          	cmp    $0x79,%r8b
    5127:	0f 84 0f 01 00 00    	je     523c <zns_proc_nvme_io_cmd+0x14c>
    512d:	77 1d                	ja     514c <zns_proc_nvme_io_cmd+0x5c>
    512f:	41 80 f8 01          	cmp    $0x1,%r8b
    5133:	0f 84 1a 01 00 00    	je     5253 <zns_proc_nvme_io_cmd+0x163>
    5139:	41 80 f8 02          	cmp    $0x2,%r8b
    513d:	75 7b                	jne    51ba <zns_proc_nvme_io_cmd+0xca>
			   nvme_opcode_string(cmd->common.opcode), cmd->common.opcode);
		break;
	}

	return true;
}
    513f:	5b                   	pop    %rbx
    5140:	5d                   	pop    %rbp
    5141:	41 5c                	pop    %r12
    5143:	41 5d                	pop    %r13
    5145:	41 5e                	pop    %r14
		if (!zns_read(ns, req, ret))
    5147:	e9 00 00 00 00       	jmp    514c <zns_proc_nvme_io_cmd+0x5c>
	switch (cmd->common.opcode) {
    514c:	41 80 f8 7a          	cmp    $0x7a,%r8b
    5150:	0f 84 cf 00 00 00    	je     5225 <zns_proc_nvme_io_cmd+0x135>
    5156:	41 80 f8 7d          	cmp    $0x7d,%r8b
    515a:	75 18                	jne    5174 <zns_proc_nvme_io_cmd+0x84>
		NVMEV_INFO("Zone Append is not implemented yet!\n");
    515c:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    5163:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    516a:	e8 00 00 00 00       	call   516f <zns_proc_nvme_io_cmd+0x7f>
		NVMEV_ERROR("%s: unimplemented command: %s(%d)\n", __func__,
    516f:	45 0f b6 04 24       	movzbl (%r12),%r8d
    5174:	41 0f b6 c0          	movzbl %r8b,%eax
    5178:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    517f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    5186:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    518d:	48 8b 0c c5 00 00 00 	mov    0x0(,%rax,8),%rcx
    5194:	00 
    5195:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
    519c:	48 85 c9             	test   %rcx,%rcx
    519f:	48 0f 44 c8          	cmove  %rax,%rcx
    51a3:	e8 00 00 00 00       	call   51a8 <zns_proc_nvme_io_cmd+0xb8>
}
    51a8:	b8 01 00 00 00       	mov    $0x1,%eax
    51ad:	5b                   	pop    %rbx
    51ae:	5d                   	pop    %rbp
    51af:	41 5c                	pop    %r12
    51b1:	41 5d                	pop    %r13
    51b3:	41 5e                	pop    %r14
    51b5:	e9 00 00 00 00       	jmp    51ba <zns_proc_nvme_io_cmd+0xca>
	switch (cmd->common.opcode) {
    51ba:	45 84 c0             	test   %r8b,%r8b
    51bd:	75 b5                	jne    5174 <zns_proc_nvme_io_cmd+0x84>
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
    51bf:	4c 8b 67 20          	mov    0x20(%rdi),%r12
	return sched_clock_cpu(raw_smp_processor_id());
    51c3:	65 8b 3d 00 00 00 00 	mov    %gs:0x0(%rip),%edi        # 51ca <zns_proc_nvme_io_cmd+0xda>
    51ca:	e8 00 00 00 00       	call   51cf <zns_proc_nvme_io_cmd+0xdf>
    51cf:	49 89 c6             	mov    %rax,%r14
	for (i = 0; i < ns->nr_parts; i++) {
    51d2:	8b 43 18             	mov    0x18(%rbx),%eax
    51d5:	85 c0                	test   %eax,%eax
    51d7:	74 2f                	je     5208 <zns_proc_nvme_io_cmd+0x118>
    51d9:	45 31 ed             	xor    %r13d,%r13d
		latest = max(latest, ssd_next_idle_time(zns_ftl[i].ssd));
    51dc:	44 89 ea             	mov    %r13d,%edx
    51df:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    51e6:	00 
    51e7:	48 29 d0             	sub    %rdx,%rax
    51ea:	48 c1 e0 04          	shl    $0x4,%rax
    51ee:	49 8b 3c 04          	mov    (%r12,%rax,1),%rdi
    51f2:	e8 00 00 00 00       	call   51f7 <zns_proc_nvme_io_cmd+0x107>
    51f7:	49 39 c6             	cmp    %rax,%r14
    51fa:	4c 0f 42 f0          	cmovb  %rax,%r14
	for (i = 0; i < ns->nr_parts; i++) {
    51fe:	41 83 c5 01          	add    $0x1,%r13d
    5202:	44 3b 6b 18          	cmp    0x18(%rbx),%r13d
    5206:	72 d4                	jb     51dc <zns_proc_nvme_io_cmd+0xec>
	ret->status = NVME_SC_SUCCESS;
    5208:	c7 45 00 00 00 00 00 	movl   $0x0,0x0(%rbp)
}
    520f:	b8 01 00 00 00       	mov    $0x1,%eax
	ret->nsecs_target = latest;
    5214:	4c 89 75 08          	mov    %r14,0x8(%rbp)
}
    5218:	5b                   	pop    %rbx
    5219:	5d                   	pop    %rbp
    521a:	41 5c                	pop    %r12
    521c:	41 5d                	pop    %r13
    521e:	41 5e                	pop    %r14
    5220:	e9 00 00 00 00       	jmp    5225 <zns_proc_nvme_io_cmd+0x135>
		zns_zmgmt_recv(ns, req, ret);
    5225:	e8 00 00 00 00       	call   522a <zns_proc_nvme_io_cmd+0x13a>
}
    522a:	b8 01 00 00 00       	mov    $0x1,%eax
    522f:	5b                   	pop    %rbx
    5230:	5d                   	pop    %rbp
    5231:	41 5c                	pop    %r12
    5233:	41 5d                	pop    %r13
    5235:	41 5e                	pop    %r14
    5237:	e9 00 00 00 00       	jmp    523c <zns_proc_nvme_io_cmd+0x14c>
		zns_zmgmt_send(ns, req, ret);
    523c:	e8 00 00 00 00       	call   5241 <zns_proc_nvme_io_cmd+0x151>
}
    5241:	b8 01 00 00 00       	mov    $0x1,%eax
    5246:	5b                   	pop    %rbx
    5247:	5d                   	pop    %rbp
    5248:	41 5c                	pop    %r12
    524a:	41 5d                	pop    %r13
    524c:	41 5e                	pop    %r14
    524e:	e9 00 00 00 00       	jmp    5253 <zns_proc_nvme_io_cmd+0x163>
    5253:	5b                   	pop    %rbx
    5254:	5d                   	pop    %rbp
    5255:	41 5c                	pop    %r12
    5257:	41 5d                	pop    %r13
    5259:	41 5e                	pop    %r14
		if (!zns_write(ns, req, ret))
    525b:	e9 00 00 00 00       	jmp    5260 <zns_proc_nvme_io_cmd+0x170>
	NVMEV_ASSERT(ns->csi == NVME_CSI_ZNS);
    5260:	0f 0b                	ud2
	NVMEV_ASSERT(ns->nr_parts == 1);
    5262:	0f 0b                	ud2
    5264:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    526b:	00 00 00 00 
    526f:	90                   	nop

0000000000005270 <__pfx_zns_init_namespace>:
    5270:	90                   	nop
    5271:	90                   	nop
    5272:	90                   	nop
    5273:	90                   	nop
    5274:	90                   	nop
    5275:	90                   	nop
    5276:	90                   	nop
    5277:	90                   	nop
    5278:	90                   	nop
    5279:	90                   	nop
    527a:	90                   	nop
    527b:	90                   	nop
    527c:	90                   	nop
    527d:	90                   	nop
    527e:	90                   	nop
    527f:	90                   	nop

0000000000005280 <zns_init_namespace>:
{
    5280:	f3 0f 1e fa          	endbr64
    5284:	e8 00 00 00 00       	call   5289 <zns_init_namespace+0x9>
    5289:	41 57                	push   %r15
    528b:	41 56                	push   %r14
    528d:	41 55                	push   %r13
    528f:	41 54                	push   %r12
    5291:	49 89 d4             	mov    %rdx,%r12
    5294:	55                   	push   %rbp
    5295:	48 89 fd             	mov    %rdi,%rbp
    5298:	53                   	push   %rbx
    5299:	44 89 c3             	mov    %r8d,%ebx
    529c:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
    52a3:	89 74 24 0c          	mov    %esi,0xc(%rsp)
	struct ssdparams spp;
    52a7:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
{
    52ac:	48 89 ce             	mov    %rcx,%rsi
    52af:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
	struct ssdparams spp;
    52b4:	4c 89 ef             	mov    %r13,%rdi
{
    52b7:	48 89 0c 24          	mov    %rcx,(%rsp)
	struct ssdparams spp;
    52bb:	b9 25 00 00 00       	mov    $0x25,%ecx
{
    52c0:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    52c7:	00 00 
    52c9:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
    52d0:	00 
    52d1:	31 c0                	xor    %eax,%eax
	struct ssdparams spp;
    52d3:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	NVMEV_INFO("ZNS Storage: size=%llx, mapped_addr=%p\n", size, mapped_addr);
    52d6:	48 89 f1             	mov    %rsi,%rcx
    52d9:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    52e0:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    52e7:	e8 00 00 00 00       	call   52ec <zns_init_namespace+0x6c>
    52ec:	ba 48 01 00 00       	mov    $0x148,%edx
    52f1:	be c0 0c 00 00       	mov    $0xcc0,%esi
    52f6:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 52fd <zns_init_namespace+0x7d>
    52fd:	e8 00 00 00 00       	call   5302 <zns_init_namespace+0x82>
	ssd_init_params(&spp, size, nr_parts);
    5302:	4c 89 e6             	mov    %r12,%rsi
    5305:	ba 01 00 00 00       	mov    $0x1,%edx
    530a:	4c 89 ef             	mov    %r13,%rdi
    530d:	49 89 c6             	mov    %rax,%r14
    5310:	e8 00 00 00 00       	call   5315 <zns_init_namespace+0x95>
	ssd_init(ssd, &spp, cpu_nr_dispatcher);
    5315:	89 da                	mov    %ebx,%edx
    5317:	4c 89 ee             	mov    %r13,%rsi
    531a:	4c 89 f7             	mov    %r14,%rdi
    531d:	e8 00 00 00 00       	call   5322 <zns_init_namespace+0xa2>
    5322:	ba 70 00 00 00       	mov    $0x70,%edx
    5327:	be c0 0c 00 00       	mov    $0xcc0,%esi
    532c:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 5333 <zns_init_namespace+0xb3>
    5333:	e8 00 00 00 00       	call   5338 <zns_init_namespace+0xb8>
	zpp->nr_zones = capacity / ZONE_SIZE;
    5338:	4c 89 e6             	mov    %r12,%rsi
    533b:	49 c1 ec 19          	shr    $0x19,%r12
    533f:	49 89 c7             	mov    %rax,%r15
    5342:	4c 89 e0             	mov    %r12,%rax
    5345:	44 89 e2             	mov    %r12d,%edx
    5348:	48 c1 e0 20          	shl    $0x20,%rax
    534c:	48 09 c2             	or     %rax,%rdx
	NVMEV_ASSERT((capacity % zpp->zone_size) == 0);
    534f:	81 e6 ff ff ff 01    	and    $0x1ffffff,%esi
    5355:	0f 85 a9 01 00 00    	jne    5504 <zns_init_namespace+0x284>
    535b:	49 89 d1             	mov    %rdx,%r9
	NVMEV_ASSERT((zpp->zone_size % spp->pgsz) == 0);
    535e:	b8 00 00 00 02       	mov    $0x2000000,%eax
    5363:	31 d2                	xor    %edx,%edx
    5365:	f7 74 24 28          	divl   0x28(%rsp)
    5369:	85 d2                	test   %edx,%edx
    536b:	0f 85 95 01 00 00    	jne    5506 <zns_init_namespace+0x286>
	NVMEV_INFO("zone_size=%d(KB), # zones=%d # die/zone=%d \n", zpp->zone_size, zpp->nr_zones,
    5371:	ba 00 00 00 02       	mov    $0x2000000,%edx
    5376:	44 89 e1             	mov    %r12d,%ecx
    5379:	48 89 f3             	mov    %rsi,%rbx
    537c:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    5381:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    5387:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    538e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    5395:	45 89 e5             	mov    %r12d,%r13d
    5398:	e8 00 00 00 00       	call   539d <zns_init_namespace+0x11d>
	zns_ftl->zp = *zpp;
    539d:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
	zns_ftl->ssd = ssd;
    53a2:	4d 89 37             	mov    %r14,(%r15)
	zns_ftl->zp = *zpp;
    53a5:	48 b8 01 00 00 00 00 	movabs $0x200000000000001,%rax
    53ac:	00 00 02 
    53af:	49 89 47 14          	mov    %rax,0x14(%r15)
	zns_ftl->storage_base_addr = mapped_addr;
    53b3:	48 8b 04 24          	mov    (%rsp),%rax
	zns_ftl->zone_descs = kmalloc(sizeof(struct zone_descriptor) * nr_zones, GFP_KERNEL);
    53b7:	4d 89 ee             	mov    %r13,%r14
	return __kmalloc(size, flags);
    53ba:	be c0 0c 00 00       	mov    $0xcc0,%esi
	zns_ftl->zp = *zpp;
    53bf:	4d 89 4f 08          	mov    %r9,0x8(%r15)
	zns_ftl->zone_descs = kmalloc(sizeof(struct zone_descriptor) * nr_zones, GFP_KERNEL);
    53c3:	49 c1 e6 06          	shl    $0x6,%r14
	zns_ftl->zp = *zpp;
    53c7:	45 89 67 10          	mov    %r12d,0x10(%r15)
    53cb:	4c 89 f7             	mov    %r14,%rdi
    53ce:	49 c7 47 1c 00 00 00 	movq   $0x0,0x1c(%r15)
    53d5:	00 
    53d6:	49 c7 47 24 00 00 00 	movq   $0x0,0x24(%r15)
    53dd:	00 
    53de:	49 c7 47 2c 00 00 00 	movq   $0x0,0x2c(%r15)
    53e5:	00 
	zns_ftl->storage_base_addr = mapped_addr;
    53e6:	49 89 47 68          	mov    %rax,0x68(%r15)
    53ea:	e8 00 00 00 00       	call   53ef <zns_init_namespace+0x16f>
	zns_ftl->report_buffer = kmalloc(sizeof(struct zone_report) +
    53ef:	49 8d 7e 40          	lea    0x40(%r14),%rdi
    53f3:	be c0 0c 00 00       	mov    $0xcc0,%esi
	zns_ftl->zone_descs = kmalloc(sizeof(struct zone_descriptor) * nr_zones, GFP_KERNEL);
    53f8:	49 89 47 50          	mov    %rax,0x50(%r15)
    53fc:	e8 00 00 00 00       	call   5401 <zns_init_namespace+0x181>
	zns_ftl->zwra_buffer = kmalloc(sizeof(struct buffer) * nr_zones, GFP_KERNEL);
    5401:	4b 8d 7c 6d 00       	lea    0x0(%r13,%r13,2),%rdi
    5406:	be c0 0c 00 00       	mov    $0xcc0,%esi
	zns_ftl->report_buffer = kmalloc(sizeof(struct zone_report) +
    540b:	49 89 47 58          	mov    %rax,0x58(%r15)
	zns_ftl->zwra_buffer = kmalloc(sizeof(struct buffer) * nr_zones, GFP_KERNEL);
    540f:	48 c1 e7 02          	shl    $0x2,%rdi
    5413:	e8 00 00 00 00       	call   5418 <zns_init_namespace+0x198>
	zone_descs = zns_ftl->zone_descs;
    5418:	4d 8b 77 50          	mov    0x50(%r15),%r14
	memset(zone_descs, 0, sizeof(struct zone_descriptor) * zns_ftl->zp.nr_zones);
    541c:	41 8b 57 08          	mov    0x8(%r15),%edx
    5420:	31 f6                	xor    %esi,%esi
	zns_ftl->zwra_buffer = kmalloc(sizeof(struct buffer) * nr_zones, GFP_KERNEL);
    5422:	49 89 47 60          	mov    %rax,0x60(%r15)
	memset(zone_descs, 0, sizeof(struct zone_descriptor) * zns_ftl->zp.nr_zones);
    5426:	48 c1 e2 06          	shl    $0x6,%rdx
    542a:	4c 89 f7             	mov    %r14,%rdi
    542d:	e8 00 00 00 00       	call   5432 <zns_init_namespace+0x1b2>
	for (i = 0; i < nr_zones; i++) {
    5432:	45 85 e4             	test   %r12d,%r12d
    5435:	74 4a                	je     5481 <zns_init_namespace+0x201>
    5437:	49 c1 e5 10          	shl    $0x10,%r13
    543b:	45 31 e4             	xor    %r12d,%r12d
		zone_descs[i].type = ZONE_TYPE_SEQ_WRITE_REQUIRED;
    543e:	41 0f b7 06          	movzwl (%r14),%eax
		zone_descs[i].zslba = zslba;
    5442:	49 89 5e 10          	mov    %rbx,0x10(%r14)
		buffer_init(&(zns_ftl->zwra_buffer[i]), zrwa_buffer_size);
    5446:	31 f6                	xor    %esi,%esi
	for (i = 0; i < nr_zones; i++) {
    5448:	49 83 c6 40          	add    $0x40,%r14
		zone_descs[i].wp = zslba;
    544c:	49 89 5e d8          	mov    %rbx,-0x28(%r14)
		zslba += BYTE_TO_LBA(zone_size);
    5450:	48 81 c3 00 00 01 00 	add    $0x10000,%rbx
		zone_descs[i].type = ZONE_TYPE_SEQ_WRITE_REQUIRED;
    5457:	66 25 f0 0f          	and    $0xff0,%ax
		zone_descs[i].zone_capacity = BYTE_TO_LBA(zone_size);
    545b:	49 c7 46 c8 00 00 01 	movq   $0x10000,-0x38(%r14)
    5462:	00 
		zone_descs[i].type = ZONE_TYPE_SEQ_WRITE_REQUIRED;
    5463:	66 0d 02 10          	or     $0x1002,%ax
    5467:	66 41 89 46 c0       	mov    %ax,-0x40(%r14)
		buffer_init(&(zns_ftl->zwra_buffer[i]), zrwa_buffer_size);
    546c:	49 8b 7f 60          	mov    0x60(%r15),%rdi
    5470:	4c 01 e7             	add    %r12,%rdi
	for (i = 0; i < nr_zones; i++) {
    5473:	49 83 c4 0c          	add    $0xc,%r12
		buffer_init(&(zns_ftl->zwra_buffer[i]), zrwa_buffer_size);
    5477:	e8 00 00 00 00       	call   547c <zns_init_namespace+0x1fc>
	for (i = 0; i < nr_zones; i++) {
    547c:	4c 39 eb             	cmp    %r13,%rbx
    547f:	75 bd                	jne    543e <zns_init_namespace+0x1be>
	res_infos[ACTIVE_ZONE].total_cnt = zns_ftl->zp.nr_zones;
    5481:	41 8b 47 08          	mov    0x8(%r15),%eax
	res_infos[ACTIVE_ZONE].acquired_cnt = 0;
    5485:	41 c7 47 34 00 00 00 	movl   $0x0,0x34(%r15)
    548c:	00 
	res_infos[OPEN_ZONE].acquired_cnt = 0;
    548d:	41 c7 47 3c 00 00 00 	movl   $0x0,0x3c(%r15)
    5494:	00 
	res_infos[ACTIVE_ZONE].total_cnt = zns_ftl->zp.nr_zones;
    5495:	41 89 47 38          	mov    %eax,0x38(%r15)
	res_infos[OPEN_ZONE].total_cnt = zns_ftl->zp.nr_zones;
    5499:	41 89 47 40          	mov    %eax,0x40(%r15)
	res_infos[ZRWA_ZONE].total_cnt = zns_ftl->zp.nr_zones;
    549d:	41 89 47 48          	mov    %eax,0x48(%r15)
	ns->id = id;
    54a1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
	res_infos[ZRWA_ZONE].acquired_cnt = 0;
    54a5:	41 c7 47 44 00 00 00 	movl   $0x0,0x44(%r15)
    54ac:	00 
	ns->id = id;
    54ad:	89 45 00             	mov    %eax,0x0(%rbp)
	ns->size = size;
    54b0:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
	ns->csi = NVME_CSI_ZNS;
    54b5:	c7 45 04 02 00 00 00 	movl   $0x2,0x4(%rbp)
	ns->size = size;
    54bc:	48 89 45 08          	mov    %rax,0x8(%rbp)
	ns->mapped = mapped_addr;
    54c0:	48 8b 04 24          	mov    (%rsp),%rax
	ns->nr_parts = nr_parts;
    54c4:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%rbp)
	ns->ftls = (void *)zns_ftl;
    54cb:	4c 89 7d 20          	mov    %r15,0x20(%rbp)
	ns->mapped = mapped_addr;
    54cf:	48 89 45 10          	mov    %rax,0x10(%rbp)
	ns->proc_io_cmd = zns_proc_nvme_io_cmd;
    54d3:	48 c7 45 28 00 00 00 	movq   $0x0,0x28(%rbp)
    54da:	00 
}
    54db:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
    54e2:	00 
    54e3:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    54ea:	00 00 
    54ec:	75 1a                	jne    5508 <zns_init_namespace+0x288>
    54ee:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
    54f5:	5b                   	pop    %rbx
    54f6:	5d                   	pop    %rbp
    54f7:	41 5c                	pop    %r12
    54f9:	41 5d                	pop    %r13
    54fb:	41 5e                	pop    %r14
    54fd:	41 5f                	pop    %r15
    54ff:	e9 00 00 00 00       	jmp    5504 <zns_init_namespace+0x284>
	NVMEV_ASSERT((capacity % zpp->zone_size) == 0);
    5504:	0f 0b                	ud2
	NVMEV_ASSERT((zpp->zone_size % spp->pgsz) == 0);
    5506:	0f 0b                	ud2
}
    5508:	e8 00 00 00 00       	call   550d <zns_init_namespace+0x28d>
    550d:	0f 1f 00             	nopl   (%rax)

0000000000005510 <__pfx_zns_remove_namespace>:
    5510:	90                   	nop
    5511:	90                   	nop
    5512:	90                   	nop
    5513:	90                   	nop
    5514:	90                   	nop
    5515:	90                   	nop
    5516:	90                   	nop
    5517:	90                   	nop
    5518:	90                   	nop
    5519:	90                   	nop
    551a:	90                   	nop
    551b:	90                   	nop
    551c:	90                   	nop
    551d:	90                   	nop
    551e:	90                   	nop
    551f:	90                   	nop

0000000000005520 <zns_remove_namespace>:
{
    5520:	f3 0f 1e fa          	endbr64
    5524:	e8 00 00 00 00       	call   5529 <zns_remove_namespace+0x9>
    5529:	55                   	push   %rbp
    552a:	48 89 fd             	mov    %rdi,%rbp
    552d:	53                   	push   %rbx
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
    552e:	48 8b 5f 20          	mov    0x20(%rdi),%rbx
	ssd_remove(zns_ftl->ssd);
    5532:	48 8b 3b             	mov    (%rbx),%rdi
    5535:	e8 00 00 00 00       	call   553a <zns_remove_namespace+0x1a>
	if (zns_ftl->zwra_buffer)
    553a:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    553e:	48 85 ff             	test   %rdi,%rdi
    5541:	74 05                	je     5548 <zns_remove_namespace+0x28>
		kfree(zns_ftl->zwra_buffer);
    5543:	e8 00 00 00 00       	call   5548 <zns_remove_namespace+0x28>
	if (zns_ftl->report_buffer)
    5548:	48 8b 7b 58          	mov    0x58(%rbx),%rdi
    554c:	48 85 ff             	test   %rdi,%rdi
    554f:	74 05                	je     5556 <zns_remove_namespace+0x36>
		kfree(zns_ftl->report_buffer);
    5551:	e8 00 00 00 00       	call   5556 <zns_remove_namespace+0x36>
	if (zns_ftl->zone_descs)
    5556:	48 8b 7b 50          	mov    0x50(%rbx),%rdi
    555a:	48 85 ff             	test   %rdi,%rdi
    555d:	74 05                	je     5564 <zns_remove_namespace+0x44>
		kfree(zns_ftl->zone_descs);
    555f:	e8 00 00 00 00       	call   5564 <zns_remove_namespace+0x44>
	if (zns_ftl->ssd)
    5564:	48 8b 3b             	mov    (%rbx),%rdi
    5567:	48 85 ff             	test   %rdi,%rdi
    556a:	74 05                	je     5571 <zns_remove_namespace+0x51>
		kfree(zns_ftl->ssd);
    556c:	e8 00 00 00 00       	call   5571 <zns_remove_namespace+0x51>
	if (zns_ftl)
    5571:	48 85 db             	test   %rbx,%rbx
    5574:	74 08                	je     557e <zns_remove_namespace+0x5e>
		kfree(zns_ftl);
    5576:	48 89 df             	mov    %rbx,%rdi
    5579:	e8 00 00 00 00       	call   557e <zns_remove_namespace+0x5e>
	ns->ftls = NULL;
    557e:	48 c7 45 20 00 00 00 	movq   $0x0,0x20(%rbp)
    5585:	00 
}
    5586:	5b                   	pop    %rbx
    5587:	5d                   	pop    %rbp
    5588:	e9 00 00 00 00       	jmp    558d <zns_remove_namespace+0x6d>
    558d:	0f 1f 00             	nopl   (%rax)

0000000000005590 <__pfx___increase_write_ptr>:
    5590:	90                   	nop
    5591:	90                   	nop
    5592:	90                   	nop
    5593:	90                   	nop
    5594:	90                   	nop
    5595:	90                   	nop
    5596:	90                   	nop
    5597:	90                   	nop
    5598:	90                   	nop
    5599:	90                   	nop
    559a:	90                   	nop
    559b:	90                   	nop
    559c:	90                   	nop
    559d:	90                   	nop
    559e:	90                   	nop
    559f:	90                   	nop

00000000000055a0 <__increase_write_ptr>:
{
	return lba_to_zone(zns_ftl, slba) == lba_to_zone(zns_ftl, slba + nr_lba - 1);
}

static void __increase_write_ptr(struct zns_ftl *zns_ftl, uint32_t zid, uint32_t nr_lba)
{
    55a0:	e8 00 00 00 00       	call   55a5 <__increase_write_ptr+0x5>
    55a5:	89 f1                	mov    %esi,%ecx
	struct zone_descriptor *zone_descs = zns_ftl->zone_descs;
	uint64_t cur_write_ptr = zone_descs[zid].wp;
    55a7:	4c 8b 47 50          	mov    0x50(%rdi),%r8
	uint64_t zone_capacity = zone_descs[zid].zone_capacity;

	cur_write_ptr += nr_lba;
    55ab:	89 d2                	mov    %edx,%edx
{
    55ad:	48 89 c8             	mov    %rcx,%rax
	uint64_t cur_write_ptr = zone_descs[zid].wp;
    55b0:	48 c1 e1 06          	shl    $0x6,%rcx
    55b4:	49 01 c8             	add    %rcx,%r8
	cur_write_ptr += nr_lba;
    55b7:	49 03 50 18          	add    0x18(%r8),%rdx

	zone_descs[zid].wp = cur_write_ptr;
    55bb:	49 89 50 18          	mov    %rdx,0x18(%r8)
	return (lba) / (BYTE_TO_LBA(zns_ftl->zp.zone_size));
}

static inline uint64_t zone_to_slba(struct zns_ftl *zns_ftl, uint32_t zid)
{
	return (zid) * (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    55bf:	8b 77 18             	mov    0x18(%rdi),%esi
    55c2:	c1 ee 09             	shr    $0x9,%esi
    55c5:	0f af f0             	imul   %eax,%esi

	if (cur_write_ptr == (zone_to_slba(zns_ftl, zid) + zone_capacity)) {
    55c8:	49 03 70 08          	add    0x8(%r8),%rsi
    55cc:	48 39 d6             	cmp    %rdx,%rsi
    55cf:	74 21                	je     55f2 <__increase_write_ptr+0x52>

		if (zone_descs[zid].zrwav)
			ASSERT(0);

		change_zone_state(zns_ftl, zid, ZONE_STATE_FULL);
	} else if (cur_write_ptr > (zone_to_slba(zns_ftl, zid) + zone_capacity)) {
    55d1:	72 05                	jb     55d8 <__increase_write_ptr+0x38>
		NVMEV_ERROR("[%s] Write Boundary error!!\n", __FUNCTION__);
	}
}
    55d3:	e9 00 00 00 00       	jmp    55d8 <__increase_write_ptr+0x38>
		NVMEV_ERROR("[%s] Write Boundary error!!\n", __FUNCTION__);
    55d8:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    55df:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    55e6:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    55ed:	e9 00 00 00 00       	jmp    55f2 <__increase_write_ptr+0x52>
	zns_ftl->zone_descs[zid].state = state;
    55f2:	48 8b 57 50          	mov    0x50(%rdi),%rdx
	zns_ftl->res_infos[type].acquired_cnt--;
    55f6:	83 6f 3c 01          	subl   $0x1,0x3c(%rdi)
    55fa:	83 6f 34 01          	subl   $0x1,0x34(%rdi)
	zns_ftl->zone_descs[zid].state = state;
    55fe:	0f b6 44 0a 01       	movzbl 0x1(%rdx,%rcx,1),%eax
    5603:	83 e0 0f             	and    $0xf,%eax
    5606:	83 c8 e0             	or     $0xffffffe0,%eax
    5609:	88 44 0a 01          	mov    %al,0x1(%rdx,%rcx,1)
}
    560d:	e9 00 00 00 00       	jmp    5612 <__increase_write_ptr+0x72>
    5612:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    5619:	00 00 00 00 
    561d:	0f 1f 00             	nopl   (%rax)

0000000000005620 <__pfx_zns_write>:
    5620:	90                   	nop
    5621:	90                   	nop
    5622:	90                   	nop
    5623:	90                   	nop
    5624:	90                   	nop
    5625:	90                   	nop
    5626:	90                   	nop
    5627:	90                   	nop
    5628:	90                   	nop
    5629:	90                   	nop
    562a:	90                   	nop
    562b:	90                   	nop
    562c:	90                   	nop
    562d:	90                   	nop
    562e:	90                   	nop
    562f:	90                   	nop

0000000000005630 <zns_write>:

	return true;
}

bool zns_write(struct nvmev_ns *ns, struct nvmev_request *req, struct nvmev_result *ret)
{
    5630:	f3 0f 1e fa          	endbr64
    5634:	e8 00 00 00 00       	call   5639 <zns_write+0x9>
    5639:	41 57                	push   %r15
    563b:	41 56                	push   %r14
    563d:	41 55                	push   %r13
    563f:	41 54                	push   %r12
    5641:	55                   	push   %rbp
    5642:	53                   	push   %rbx
    5643:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
    564a:	48 8b 6f 20          	mov    0x20(%rdi),%rbp
{
    564e:	48 89 14 24          	mov    %rdx,(%rsp)
	struct zone_descriptor *zone_descs = zns_ftl->zone_descs;
    5652:	4c 8b 7d 50          	mov    0x50(%rbp),%r15
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5656:	44 8b 65 18          	mov    0x18(%rbp),%r12d
{
    565a:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    5661:	00 00 
    5663:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    566a:	00 
    566b:	31 c0                	xor    %eax,%eax
	struct nvme_rw_command *cmd = &(req->cmd->rw);
    566d:	48 8b 06             	mov    (%rsi),%rax
    5670:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
	return cmd->length + 1;
    5675:	0f b7 50 30          	movzwl 0x30(%rax),%edx

	uint64_t nr_lba = __nr_lbas_from_rw_cmd(cmd);
	uint64_t slpn = lba_to_lpn(zns_ftl, cmd->slba);
    5679:	48 8b 58 28          	mov    0x28(%rax),%rbx
	return (die) / zns_ftl->ssd->sp.nchs;
}

static inline uint64_t lba_to_lpn(struct zns_ftl *zns_ftl, uint64_t lba)
{
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    567d:	48 8b 45 00          	mov    0x0(%rbp),%rax
	return cmd->length + 1;
    5681:	44 8d 72 01          	lea    0x1(%rdx),%r14d
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5685:	8b 78 08             	mov    0x8(%rax),%edi
	uint32_t zid = lpn_to_zone(zns_ftl, slpn);

	NVMEV_DEBUG("%s slba 0x%llx nr_lba 0x%lx zone_id %d \n", __FUNCTION__, cmd->slba, nr_lba,
		    zid);

	if (buffer_allocate(zns_ftl->ssd->write_buffer, LBA_TO_BYTE(nr_lba)) < LBA_TO_BYTE(nr_lba))
    5688:	44 89 f6             	mov    %r14d,%esi
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    568b:	4c 63 68 04          	movslq 0x4(%rax),%r13
    568f:	c1 e6 09             	shl    $0x9,%esi
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5692:	89 7c 24 10          	mov    %edi,0x10(%rsp)
    5696:	48 8b b8 38 01 00 00 	mov    0x138(%rax),%rdi
    569d:	e8 00 00 00 00       	call   56a2 <zns_write+0x72>
	uint64_t nr_lba = __nr_lbas_from_rw_cmd(cmd);
    56a2:	49 63 d6             	movslq %r14d,%rdx
	if (buffer_allocate(zns_ftl->ssd->write_buffer, LBA_TO_BYTE(nr_lba)) < LBA_TO_BYTE(nr_lba))
    56a5:	89 c0                	mov    %eax,%eax
    56a7:	48 c1 e2 09          	shl    $0x9,%rdx
    56ab:	48 39 d0             	cmp    %rdx,%rax
    56ae:	0f 82 f6 01 00 00    	jb     58aa <zns_write+0x27a>
	struct nvme_rw_command *cmd = &(req->cmd->rw);
    56b4:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
	return (lba) / (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    56b9:	8b 4d 18             	mov    0x18(%rbp),%ecx
    56bc:	31 d2                	xor    %edx,%edx
	enum zone_state state = zone_descs[zid].state;
    56be:	4c 8b 55 50          	mov    0x50(%rbp),%r10
	struct ssdparams *spp = &zns_ftl->ssd->sp;
    56c2:	4c 8b 5d 00          	mov    0x0(%rbp),%r11
	struct nvme_rw_command *cmd = &(req->cmd->rw);
    56c6:	49 8b 01             	mov    (%r9),%rax
    56c9:	c1 e9 09             	shr    $0x9,%ecx
	return cmd->length + 1;
    56cc:	0f b7 78 30          	movzwl 0x30(%rax),%edi
	uint64_t slba = cmd->slba;
    56d0:	48 8b 70 28          	mov    0x28(%rax),%rsi
	struct nvme_rw_command *cmd = &(req->cmd->rw);
    56d4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
	return cmd->length + 1;
    56d9:	44 8d 77 01          	lea    0x1(%rdi),%r14d
    56dd:	48 89 f0             	mov    %rsi,%rax
    56e0:	89 cf                	mov    %ecx,%edi
    56e2:	48 f7 f7             	div    %rdi
	if ((LBA_TO_BYTE(nr_lba) % spp->write_unit_size) != 0) {
    56e5:	49 63 53 34          	movslq 0x34(%r11),%rdx
    56e9:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
	uint64_t nr_lba = __nr_lbas_from_rw_cmd(cmd);
    56ee:	4d 63 c6             	movslq %r14d,%r8
	if ((LBA_TO_BYTE(nr_lba) % spp->write_unit_size) != 0) {
    56f1:	31 d2                	xor    %edx,%edx
    56f3:	89 44 24 50          	mov    %eax,0x50(%rsp)
    56f7:	48 89 c1             	mov    %rax,%rcx
    56fa:	89 c0                	mov    %eax,%eax
    56fc:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
	enum zone_state state = zone_descs[zid].state;
    5701:	48 c1 e0 06          	shl    $0x6,%rax
    5705:	49 01 c2             	add    %rax,%r10
    5708:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    570d:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
    5712:	c0 e8 04             	shr    $0x4,%al
    5715:	88 44 24 28          	mov    %al,0x28(%rsp)
    5719:	0f b6 c0             	movzbl %al,%eax
    571c:	89 44 24 30          	mov    %eax,0x30(%rsp)
	uint64_t nsecs_start = req->nsecs_start;
    5720:	49 8b 41 10          	mov    0x10(%r9),%rax
    5724:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
	if ((LBA_TO_BYTE(nr_lba) % spp->write_unit_size) != 0) {
    5729:	4c 89 c0             	mov    %r8,%rax
    572c:	48 c1 e0 09          	shl    $0x9,%rax
    5730:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    5735:	48 f7 74 24 18       	divq   0x18(%rsp)
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    573a:	48 89 d8             	mov    %rbx,%rax
    573d:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    5742:	31 d2                	xor    %edx,%edx
    5744:	49 f7 f5             	div    %r13
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5747:	31 d2                	xor    %edx,%edx
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    5749:	48 89 c3             	mov    %rax,%rbx
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    574c:	44 89 e0             	mov    %r12d,%eax
    574f:	f7 74 24 10          	divl   0x10(%rsp)
    5753:	31 d2                	xor    %edx,%edx
    5755:	49 89 c4             	mov    %rax,%r12
    5758:	48 89 d8             	mov    %rbx,%rax
    575b:	49 f7 f4             	div    %r12
		return false;

	if (zone_descs[zid].zrwav == 0)
    575e:	89 c3                	mov    %eax,%ebx
    5760:	48 c1 e3 06          	shl    $0x6,%rbx
    5764:	41 f6 44 1f 02 08    	testb  $0x8,0x2(%r15,%rbx,1)
    576a:	0f 85 96 00 00 00    	jne    5806 <zns_write+0x1d6>
	if ((LBA_TO_BYTE(nr_lba) % spp->write_unit_size) != 0) {
    5770:	48 83 7c 24 18 00    	cmpq   $0x0,0x18(%rsp)
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    5776:	41 8b 5b 04          	mov    0x4(%r11),%ebx
	struct ppa ppa;
    577a:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    5781:	00 00 
	struct nand_cmd swr;
    5783:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    578a:	00 00 
    578c:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    5793:	00 00 
    5795:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
    579c:	00 00 
    579e:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    57a5:	00 00 
    57a7:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    57ae:	00 00 00 00 00 
	if ((LBA_TO_BYTE(nr_lba) % spp->write_unit_size) != 0) {
    57b3:	0f 85 90 04 00 00    	jne    5c49 <zns_write+0x619>
	uint64_t elpn = lba_to_lpn(zns_ftl, slba + nr_lba - 1);
    57b9:	4e 8d 6c 06 ff       	lea    -0x1(%rsi,%r8,1),%r13
	return (lba) / (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    57be:	31 d2                	xor    %edx,%edx
    57c0:	4c 89 e8             	mov    %r13,%rax
    57c3:	48 f7 f7             	div    %rdi
	if (__check_boundary_error(zns_ftl, slba, nr_lba) == false) {
    57c6:	39 c1                	cmp    %eax,%ecx
    57c8:	0f 84 0d 01 00 00    	je     58db <zns_write+0x2ab>
	uint64_t nsecs_latest = nsecs_start;
    57ce:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
		status = NVME_SC_ZNS_ERR_BOUNDARY;
    57d3:	b8 b8 01 00 00       	mov    $0x1b8,%eax
	ret->status = status;
    57d8:	48 8b 1c 24          	mov    (%rsp),%rbx
    57dc:	89 03                	mov    %eax,(%rbx)
	if ((cmd->control & NVME_RW_FUA) ||
    57de:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    57e3:	f6 40 33 40          	testb  $0x40,0x33(%rax)
    57e7:	75 0b                	jne    57f4 <zns_write+0x1c4>
		ret->nsecs_target = nsecs_xfer_completed;
    57e9:	41 80 7b 38 00       	cmpb   $0x0,0x38(%r11)
    57ee:	4c 0f 45 64 24 08    	cmovne 0x8(%rsp),%r12
    57f4:	48 8b 04 24          	mov    (%rsp),%rax
		return __zns_write(zns_ftl, req, ret);
    57f8:	bb 01 00 00 00       	mov    $0x1,%ebx
    57fd:	4c 89 60 08          	mov    %r12,0x8(%rax)
    5801:	e9 a6 00 00 00       	jmp    58ac <zns_write+0x27c>
	const uint32_t lbas_per_zrwa = zpp->lbas_per_zrwa;
    5806:	8b 5d 30             	mov    0x30(%rbp),%ebx
	const uint32_t lbas_per_zrwafg = zpp->lbas_per_zrwafg;
    5809:	8b 45 2c             	mov    0x2c(%rbp),%eax
	if ((LBA_TO_BYTE(nr_lba) % spp->write_unit_size) != 0) {
    580c:	48 83 7c 24 18 00    	cmpq   $0x0,0x18(%rsp)
	uint64_t prev_wp = zone_descs[zid].wp;
    5812:	4d 8b 7a 18          	mov    0x18(%r10),%r15
	struct ppa ppa;
    5816:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    581d:	00 00 
	const uint32_t lbas_per_zrwa = zpp->lbas_per_zrwa;
    581f:	89 5c 24 10          	mov    %ebx,0x10(%rsp)
	const uint32_t lbas_per_zrwafg = zpp->lbas_per_zrwafg;
    5823:	89 44 24 54          	mov    %eax,0x54(%rsp)
	struct nand_cmd swr;
    5827:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    582e:	00 00 
    5830:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    5837:	00 00 
    5839:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
    5840:	00 00 
    5842:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    5849:	00 00 
    584b:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    5852:	00 00 00 00 00 
	if ((LBA_TO_BYTE(nr_lba) % spp->write_unit_size) != 0) {
    5857:	0f 85 fb 03 00 00    	jne    5c58 <zns_write+0x628>
	uint64_t elba = cmd->slba + nr_lba - 1;
    585d:	4e 8d 34 06          	lea    (%rsi,%r8,1),%r14
    5861:	31 d2                	xor    %edx,%edx
    5863:	4d 8d 66 ff          	lea    -0x1(%r14),%r12
    5867:	4c 89 e0             	mov    %r12,%rax
    586a:	48 f7 f7             	div    %rdi
	if (__check_boundary_error(zns_ftl, slba, nr_lba) == false) {
    586d:	39 c1                	cmp    %eax,%ecx
    586f:	0f 84 9b 02 00 00    	je     5b10 <zns_write+0x4e0>
	uint64_t nsecs_latest = nsecs_start;
    5875:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
		status = NVME_SC_ZNS_ERR_BOUNDARY;
    587a:	b8 b8 01 00 00       	mov    $0x1b8,%eax
	ret->status = status;
    587f:	48 8b 1c 24          	mov    (%rsp),%rbx
    5883:	89 03                	mov    %eax,(%rbx)
	if ((cmd->control & NVME_RW_FUA) ||
    5885:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    588a:	f6 40 33 40          	testb  $0x40,0x33(%rax)
    588e:	75 0b                	jne    589b <zns_write+0x26b>
    5890:	41 80 7b 38 00       	cmpb   $0x0,0x38(%r11)
    5895:	4c 0f 45 6c 24 08    	cmovne 0x8(%rsp),%r13
		ret->nsecs_target = nsecs_xfer_completed;
    589b:	48 8b 04 24          	mov    (%rsp),%rax
	return true;
    589f:	bb 01 00 00 00       	mov    $0x1,%ebx
		ret->nsecs_target = nsecs_xfer_completed;
    58a4:	4c 89 68 08          	mov    %r13,0x8(%rax)
	else
		return __zns_write_zrwa(zns_ftl, req, ret);
    58a8:	eb 02                	jmp    58ac <zns_write+0x27c>
		return false;
    58aa:	31 db                	xor    %ebx,%ebx
}
    58ac:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    58b3:	00 
    58b4:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    58bb:	00 00 
    58bd:	0f 85 9e 06 00 00    	jne    5f61 <zns_write+0x931>
    58c3:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    58ca:	89 d8                	mov    %ebx,%eax
    58cc:	5b                   	pop    %rbx
    58cd:	5d                   	pop    %rbp
    58ce:	41 5c                	pop    %r12
    58d0:	41 5d                	pop    %r13
    58d2:	41 5e                	pop    %r14
    58d4:	41 5f                	pop    %r15
    58d6:	e9 00 00 00 00       	jmp    58db <zns_write+0x2ab>
	if (slba != zone_descs[zid].wp) {
    58db:	49 8b 42 18          	mov    0x18(%r10),%rax
    58df:	48 39 f0             	cmp    %rsi,%rax
    58e2:	0f 85 cf 03 00 00    	jne    5cb7 <zns_write+0x687>
	switch (state) {
    58e8:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    58ed:	3c 04                	cmp    $0x4,%al
    58ef:	0f 84 0d 04 00 00    	je     5d02 <zns_write+0x6d2>
    58f5:	0f 87 2c 03 00 00    	ja     5c27 <zns_write+0x5f7>
    58fb:	3c 01                	cmp    $0x1,%al
    58fd:	75 5c                	jne    595b <zns_write+0x32b>
		if (slba != zone_descs[zid].zslba) {
    58ff:	49 39 72 10          	cmp    %rsi,0x10(%r10)
    5903:	0f 85 40 03 00 00    	jne    5c49 <zns_write+0x619>
	return zns_ftl->res_infos[type].acquired_cnt == zns_ftl->res_infos[type].total_cnt;
    5909:	8b 45 34             	mov    0x34(%rbp),%eax
    590c:	8b 55 38             	mov    0x38(%rbp),%edx
		if (is_zone_resource_full(zns_ftl, ACTIVE_ZONE)) {
    590f:	39 d0                	cmp    %edx,%eax
    5911:	0f 84 2c 06 00 00    	je     5f43 <zns_write+0x913>
    5917:	44 8b 45 3c          	mov    0x3c(%rbp),%r8d
    591b:	8b 4d 40             	mov    0x40(%rbp),%ecx
		if (is_zone_resource_full(zns_ftl, OPEN_ZONE)) {
    591e:	41 39 c8             	cmp    %ecx,%r8d
    5921:	0f 84 2b 06 00 00    	je     5f52 <zns_write+0x922>
	if (is_zone_resource_avail(zns_ftl, type)) {
    5927:	39 d0                	cmp    %edx,%eax
    5929:	73 06                	jae    5931 <zns_write+0x301>
		zns_ftl->res_infos[type].acquired_cnt++;
    592b:	83 c0 01             	add    $0x1,%eax
    592e:	89 45 34             	mov    %eax,0x34(%rbp)
	uint64_t nsecs_latest = nsecs_start;
    5931:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
			status = NVME_SC_ZNS_NO_OPEN_ZONE;
    5936:	b8 be 01 00 00       	mov    $0x1be,%eax
	if (is_zone_resource_avail(zns_ftl, type)) {
    593b:	41 39 c8             	cmp    %ecx,%r8d
    593e:	0f 83 94 fe ff ff    	jae    57d8 <zns_write+0x1a8>
		zns_ftl->res_infos[type].acquired_cnt++;
    5944:	41 83 c0 01          	add    $0x1,%r8d
    5948:	44 89 45 3c          	mov    %r8d,0x3c(%rbp)
	zns_ftl->zone_descs[zid].state = state;
    594c:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
    5951:	83 e0 0f             	and    $0xf,%eax
    5954:	83 c8 20             	or     $0x20,%eax
    5957:	41 88 42 01          	mov    %al,0x1(%r10)
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    595b:	48 63 cb             	movslq %ebx,%rcx
    595e:	48 89 f0             	mov    %rsi,%rax
    5961:	31 d2                	xor    %edx,%edx
	__increase_write_ptr(zns_ftl, zid, nr_lba);
    5963:	8b 74 24 50          	mov    0x50(%rsp),%esi
    5967:	48 f7 f1             	div    %rcx
    596a:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
    596f:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    5974:	31 d2                	xor    %edx,%edx
    5976:	48 89 ef             	mov    %rbp,%rdi
    5979:	48 89 c3             	mov    %rax,%rbx
    597c:	4c 89 e8             	mov    %r13,%rax
    597f:	48 f7 f1             	div    %rcx
    5982:	44 89 f2             	mov    %r14d,%edx
    5985:	49 89 c7             	mov    %rax,%r15
    5988:	e8 13 fc ff ff       	call   55a0 <__increase_write_ptr>
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    598d:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    5991:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    5996:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    599b:	e8 00 00 00 00       	call   59a0 <zns_write+0x370>
	for (lpn = slpn; lpn <= elpn; lpn += pgs) {
    59a0:	49 39 df             	cmp    %rbx,%r15
    59a3:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    59a8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
	for (lpn = slpn; lpn <= elpn; lpn += pgs) {
    59ad:	0f 82 84 05 00 00    	jb     5f37 <zns_write+0x907>
    59b3:	4d 8d 6f 01          	lea    0x1(%r15),%r13
			swr.ppa = &ppa;
    59b7:	4d 89 f8             	mov    %r15,%r8
    59ba:	4c 8b 74 24 18       	mov    0x18(%rsp),%r14
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    59bf:	49 89 c4             	mov    %rax,%r12
			swr.ppa = &ppa;
    59c2:	4d 89 ef             	mov    %r13,%r15
    59c5:	4d 89 dd             	mov    %r11,%r13
    59c8:	eb 0c                	jmp    59d6 <zns_write+0x3a6>
	for (lpn = slpn; lpn <= elpn; lpn += pgs) {
    59ca:	4c 01 cb             	add    %r9,%rbx
    59cd:	49 39 d8             	cmp    %rbx,%r8
    59d0:	0f 82 22 03 00 00    	jb     5cf8 <zns_write+0x6c8>
	struct ssdparams *spp = &zns_ftl->ssd->sp;
    59d6:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    59da:	8b 45 18             	mov    0x18(%rbp),%eax
    59dd:	31 d2                	xor    %edx,%edx
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    59df:	44 8b 55 14          	mov    0x14(%rbp),%r10d
    59e3:	f7 77 08             	divl   0x8(%rdi)
    59e6:	31 d2                	xor    %edx,%edx
    59e8:	89 c1                	mov    %eax,%ecx
    59ea:	48 89 d8             	mov    %rbx,%rax
    59ed:	48 f7 f1             	div    %rcx
    59f0:	48 89 ce             	mov    %rcx,%rsi
	return (zid) * (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    59f3:	89 f2                	mov    %esi,%edx
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    59f5:	48 63 77 14          	movslq 0x14(%rdi),%rsi
    59f9:	0f af d0             	imul   %eax,%edx
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    59fc:	48 89 c1             	mov    %rax,%rcx
	uint64_t off = lpn - zone_to_slpn(zns_ftl, zone);
    59ff:	48 89 d8             	mov    %rbx,%rax
    5a02:	48 29 d0             	sub    %rdx,%rax
    5a05:	31 d2                	xor    %edx,%edx
    5a07:	48 f7 f6             	div    %rsi
    5a0a:	49 89 c1             	mov    %rax,%r9
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    5a0d:	89 c8                	mov    %ecx,%eax
    5a0f:	48 89 d6             	mov    %rdx,%rsi
    5a12:	31 d2                	xor    %edx,%edx
    5a14:	49 0f af c2          	imul   %r10,%rax
    5a18:	48 f7 b7 18 01 00 00 	divq   0x118(%rdi)
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    5a1f:	4c 89 c8             	mov    %r9,%rax
		pgs = min(elpn - lpn + 1, (uint64_t)(spp->pgs_per_oneshotpg - pg_off));
    5a22:	4d 89 f9             	mov    %r15,%r9
    5a25:	49 29 d9             	sub    %rbx,%r9
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    5a28:	48 89 d1             	mov    %rdx,%rcx
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    5a2b:	31 d2                	xor    %edx,%edx
    5a2d:	49 f7 f2             	div    %r10
    5a30:	8d 04 11             	lea    (%rcx,%rdx,1),%eax
    5a33:	31 d2                	xor    %edx,%edx
	return ppa;
    5a35:	0f b7 ce             	movzwl %si,%ecx
    5a38:	f7 77 2c             	divl   0x2c(%rdi)
    5a3b:	48 bf ff ff ff ff ff 	movabs $0xffff00ffffffffff,%rdi
    5a42:	00 ff ff 
    5a45:	48 21 f9             	and    %rdi,%rcx
    5a48:	0f b6 c0             	movzbl %al,%eax
    5a4b:	0f b6 d2             	movzbl %dl,%edx
    5a4e:	48 c1 e0 28          	shl    $0x28,%rax
    5a52:	48 c1 e2 30          	shl    $0x30,%rdx
    5a56:	48 09 c1             	or     %rax,%rcx
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5a59:	0f b7 c6             	movzwl %si,%eax
	return ppa;
    5a5c:	48 09 d1             	or     %rdx,%rcx
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5a5f:	99                   	cltd
		ppa = __lpn_to_ppa(zns_ftl, lpn);
    5a60:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5a65:	49 63 4d 14          	movslq 0x14(%r13),%rcx
    5a69:	f7 f9                	idiv   %ecx
		pgs = min(elpn - lpn + 1, (uint64_t)(spp->pgs_per_oneshotpg - pg_off));
    5a6b:	48 89 c8             	mov    %rcx,%rax
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5a6e:	48 63 d2             	movslq %edx,%rdx
		pgs = min(elpn - lpn + 1, (uint64_t)(spp->pgs_per_oneshotpg - pg_off));
    5a71:	48 29 d0             	sub    %rdx,%rax
    5a74:	49 39 c1             	cmp    %rax,%r9
    5a77:	4c 0f 47 c8          	cmova  %rax,%r9
		if ((pg_off + pgs) == spp->pgs_per_oneshotpg) {
    5a7b:	4c 01 ca             	add    %r9,%rdx
    5a7e:	48 39 d1             	cmp    %rdx,%rcx
    5a81:	0f 85 43 ff ff ff    	jne    59ca <zns_write+0x39a>
			swr.type = USER_IO;
    5a87:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
    5a8e:	00 00 00 
			nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    5a91:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
    5a96:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
			swr.type = USER_IO;
    5a9b:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
			swr.stime = nsecs_xfer_completed;
    5aa0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    5aa5:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    5aaa:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
			swr.xfer_size = spp->pgs_per_oneshotpg * spp->pgsz;
    5aaf:	41 8b 45 14          	mov    0x14(%r13),%eax
    5ab3:	41 0f af 45 08       	imul   0x8(%r13),%eax
			swr.interleave_pci_dma = false;
    5ab8:	c6 44 24 78 00       	movb   $0x0,0x78(%rsp)
			swr.xfer_size = spp->pgs_per_oneshotpg * spp->pgsz;
    5abd:	48 98                	cltq
    5abf:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
			swr.ppa = &ppa;
    5ac4:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
    5ac9:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
    5ad0:	00 
			nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    5ad1:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    5ad5:	e8 00 00 00 00       	call   5ada <zns_write+0x4aa>
						 spp->pgs_per_oneshotpg * spp->pgsz);
    5ada:	41 8b 4d 14          	mov    0x14(%r13),%ecx
			enqueue_writeback_io_req(req->sq_id, nsecs_completed,
    5ade:	41 8b 7e 08          	mov    0x8(%r14),%edi
			nsecs_latest = (nsecs_completed > nsecs_latest) ? nsecs_completed :
    5ae2:	49 39 c4             	cmp    %rax,%r12
			nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    5ae5:	48 89 c6             	mov    %rax,%rsi
			nsecs_latest = (nsecs_completed > nsecs_latest) ? nsecs_completed :
    5ae8:	4c 0f 42 e0          	cmovb  %rax,%r12
			enqueue_writeback_io_req(req->sq_id, nsecs_completed,
    5aec:	48 8b 45 00          	mov    0x0(%rbp),%rax
						 spp->pgs_per_oneshotpg * spp->pgsz);
    5af0:	41 0f af 4d 08       	imul   0x8(%r13),%ecx
			enqueue_writeback_io_req(req->sq_id, nsecs_completed,
    5af5:	48 8b 90 38 01 00 00 	mov    0x138(%rax),%rdx
    5afc:	e8 00 00 00 00       	call   5b01 <zns_write+0x4d1>
    5b01:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    5b06:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    5b0b:	e9 ba fe ff ff       	jmp    59ca <zns_write+0x39a>
	uint64_t zrwa_impl_end = prev_wp + (2 * lbas_per_zrwa) - 1;
    5b10:	8d 04 1b             	lea    (%rbx,%rbx,1),%eax
	if (slba < zone_descs[zid].wp || elba > zrwa_impl_end) {
    5b13:	49 8b 52 18          	mov    0x18(%r10),%rdx
	uint64_t zrwa_impl_end = prev_wp + (2 * lbas_per_zrwa) - 1;
    5b17:	49 8d 44 07 ff       	lea    -0x1(%r15,%rax,1),%rax
	if (slba < zone_descs[zid].wp || elba > zrwa_impl_end) {
    5b1c:	4c 39 e0             	cmp    %r12,%rax
    5b1f:	0f 92 c3             	setb   %bl
    5b22:	48 39 d6             	cmp    %rdx,%rsi
    5b25:	0f 92 c0             	setb   %al
    5b28:	08 c3                	or     %al,%bl
    5b2a:	0f 85 37 01 00 00    	jne    5c67 <zns_write+0x637>
	switch (state) {
    5b30:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    5b35:	3c 0e                	cmp    $0xe,%al
    5b37:	0f 84 6b 01 00 00    	je     5ca8 <zns_write+0x678>
    5b3d:	3c 0f                	cmp    $0xf,%al
    5b3f:	0f 84 c9 01 00 00    	je     5d0e <zns_write+0x6de>
    5b45:	3c 0d                	cmp    $0xd,%al
    5b47:	0f 84 d0 01 00 00    	je     5d1d <zns_write+0x6ed>
    5b4d:	3c 01                	cmp    $0x1,%al
    5b4f:	74 04                	je     5b55 <zns_write+0x525>
    5b51:	3c 04                	cmp    $0x4,%al
    5b53:	75 77                	jne    5bcc <zns_write+0x59c>
	return zns_ftl->res_infos[type].acquired_cnt < zns_ftl->res_infos[type].total_cnt;
    5b55:	8b 55 3c             	mov    0x3c(%rbp),%edx
	uint64_t nsecs_latest = nsecs_start;
    5b58:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
			status = NVME_SC_ZNS_NO_OPEN_ZONE;
    5b5d:	b8 be 01 00 00       	mov    $0x1be,%eax
	if (is_zone_resource_avail(zns_ftl, type)) {
    5b62:	3b 55 40             	cmp    0x40(%rbp),%edx
    5b65:	0f 83 14 fd ff ff    	jae    587f <zns_write+0x24f>
		zns_ftl->res_infos[type].acquired_cnt++;
    5b6b:	83 c2 01             	add    $0x1,%edx
		if (!buffer_allocate(&zns_ftl->zwra_buffer[zid], zpp->zrwa_size))
    5b6e:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    5b73:	8b 75 24             	mov    0x24(%rbp),%esi
    5b76:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
    5b7b:	89 55 3c             	mov    %edx,0x3c(%rbp)
    5b7e:	48 8b 55 60          	mov    0x60(%rbp),%rdx
    5b82:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    5b86:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
    5b8b:	48 8d 3c 82          	lea    (%rdx,%rax,4),%rdi
    5b8f:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
    5b94:	e8 00 00 00 00       	call   5b99 <zns_write+0x569>
    5b99:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
    5b9e:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    5ba3:	85 c0                	test   %eax,%eax
    5ba5:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    5baa:	0f 84 b6 03 00 00    	je     5f66 <zns_write+0x936>
	zns_ftl->zone_descs[zid].state = state;
    5bb0:	48 8b 55 50          	mov    0x50(%rbp),%rdx
    5bb4:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
    5bb9:	0f b6 44 32 01       	movzbl 0x1(%rdx,%rsi,1),%eax
    5bbe:	88 44 24 18          	mov    %al,0x18(%rsp)
    5bc2:	83 e0 0f             	and    $0xf,%eax
    5bc5:	83 c8 20             	or     $0x20,%eax
    5bc8:	88 44 32 01          	mov    %al,0x1(%rdx,%rsi,1)
	uint64_t zrwa_impl_start = prev_wp + lbas_per_zrwa;
    5bcc:	8b 44 24 10          	mov    0x10(%rsp),%eax
    5bd0:	4c 01 f8             	add    %r15,%rax
	if (elba >= zrwa_impl_start) {
    5bd3:	49 39 c4             	cmp    %rax,%r12
    5bd6:	0f 82 50 01 00 00    	jb     5d2c <zns_write+0x6fc>
		nr_lbas_flush = DIV_ROUND_UP((elba - zrwa_impl_start + 1), lbas_per_zrwafg) *
    5bdc:	8b 4c 24 54          	mov    0x54(%rsp),%ecx
    5be0:	31 d2                	xor    %edx,%edx
    5be2:	4d 8d 2c 0c          	lea    (%r12,%rcx,1),%r13
    5be6:	49 29 c5             	sub    %rax,%r13
    5be9:	4c 89 e8             	mov    %r13,%rax
    5bec:	48 f7 f1             	div    %rcx
    5bef:	49 29 d5             	sub    %rdx,%r13
	if (nr_lbas_flush > 0) {
    5bf2:	4d 85 ed             	test   %r13,%r13
    5bf5:	0f 85 51 01 00 00    	jne    5d4c <zns_write+0x71c>
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    5bfb:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    5bff:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    5c04:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
    5c09:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    5c0e:	e8 00 00 00 00       	call   5c13 <zns_write+0x5e3>
    5c13:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
    5c18:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    5c1d:	49 89 c5             	mov    %rax,%r13
	uint32_t status = NVME_SC_SUCCESS;
    5c20:	31 c0                	xor    %eax,%eax
    5c22:	e9 58 fc ff ff       	jmp    587f <zns_write+0x24f>
	switch (state) {
    5c27:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    5c2c:	83 c0 03             	add    $0x3,%eax
    5c2f:	83 e0 0f             	and    $0xf,%eax
    5c32:	3c 02                	cmp    $0x2,%al
    5c34:	0f 87 21 fd ff ff    	ja     595b <zns_write+0x32b>
    5c3a:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    5c3f:	b8 bb 01 00 00       	mov    $0x1bb,%eax
    5c44:	e9 8f fb ff ff       	jmp    57d8 <zns_write+0x1a8>
	uint64_t nsecs_latest = nsecs_start;
    5c49:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
		status = NVME_SC_ZNS_INVALID_WRITE;
    5c4e:	b8 bc 01 00 00       	mov    $0x1bc,%eax
    5c53:	e9 80 fb ff ff       	jmp    57d8 <zns_write+0x1a8>
	uint64_t nsecs_latest = nsecs_start;
    5c58:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
		status = NVME_SC_ZNS_INVALID_WRITE;
    5c5d:	b8 bc 01 00 00       	mov    $0x1bc,%eax
    5c62:	e9 18 fc ff ff       	jmp    587f <zns_write+0x24f>
		NVMEV_ERROR("%s slba 0x%llx nr_lba 0x%llx zone_id %d wp 0x%llx state %d\n",
    5c67:	8b 44 24 30          	mov    0x30(%rsp),%eax
    5c6b:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
    5c70:	41 89 c9             	mov    %ecx,%r9d
    5c73:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    5c7a:	48 89 f1             	mov    %rsi,%rcx
    5c7d:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    5c84:	50                   	push   %rax
    5c85:	52                   	push   %rdx
    5c86:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    5c8d:	e8 00 00 00 00       	call   5c92 <zns_write+0x662>
		goto out;
    5c92:	58                   	pop    %rax
		status = NVME_SC_ZNS_INVALID_WRITE;
    5c93:	b8 bc 01 00 00       	mov    $0x1bc,%eax
		goto out;
    5c98:	5a                   	pop    %rdx
	uint64_t nsecs_latest = nsecs_start;
    5c99:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
		goto out;
    5c9e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
    5ca3:	e9 d7 fb ff ff       	jmp    587f <zns_write+0x24f>
	uint64_t nsecs_latest = nsecs_start;
    5ca8:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
		status = NVME_SC_ZNS_ERR_FULL;
    5cad:	b8 b9 01 00 00       	mov    $0x1b9,%eax
    5cb2:	e9 c8 fb ff ff       	jmp    587f <zns_write+0x24f>
		NVMEV_ERROR("%s WP error slba 0x%llx nr_lba 0x%llx zone_id %d wp %llx state %d\n",
    5cb7:	8b 7c 24 30          	mov    0x30(%rsp),%edi
    5cbb:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
    5cc0:	41 89 c9             	mov    %ecx,%r9d
    5cc3:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    5cca:	48 89 f1             	mov    %rsi,%rcx
    5ccd:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    5cd4:	57                   	push   %rdi
    5cd5:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    5cdc:	50                   	push   %rax
    5cdd:	e8 00 00 00 00       	call   5ce2 <zns_write+0x6b2>
		status = NVME_SC_ZNS_INVALID_WRITE;
    5ce2:	b8 bc 01 00 00       	mov    $0x1bc,%eax
		goto out;
    5ce7:	59                   	pop    %rcx
    5ce8:	5e                   	pop    %rsi
	uint64_t nsecs_latest = nsecs_start;
    5ce9:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
		goto out;
    5cee:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
    5cf3:	e9 e0 fa ff ff       	jmp    57d8 <zns_write+0x1a8>
	uint32_t status = NVME_SC_SUCCESS;
    5cf8:	4d 89 eb             	mov    %r13,%r11
    5cfb:	31 c0                	xor    %eax,%eax
out:
    5cfd:	e9 d6 fa ff ff       	jmp    57d8 <zns_write+0x1a8>
	return zns_ftl->res_infos[type].acquired_cnt == zns_ftl->res_infos[type].total_cnt;
    5d02:	44 8b 45 3c          	mov    0x3c(%rbp),%r8d
    5d06:	8b 4d 40             	mov    0x40(%rbp),%ecx
    5d09:	e9 23 fc ff ff       	jmp    5931 <zns_write+0x301>
	uint64_t nsecs_latest = nsecs_start;
    5d0e:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
		status = NVME_SC_ZNS_ERR_OFFLINE;
    5d13:	b8 bb 01 00 00       	mov    $0x1bb,%eax
    5d18:	e9 62 fb ff ff       	jmp    587f <zns_write+0x24f>
	switch (state) {
    5d1d:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
    5d22:	b8 ba 01 00 00       	mov    $0x1ba,%eax
    5d27:	e9 53 fb ff ff       	jmp    587f <zns_write+0x24f>
	return (zid) * (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    5d2c:	8b 55 18             	mov    0x18(%rbp),%edx
	return zone_to_slba(zns_ftl, zid + 1) - 1;
    5d2f:	8d 41 01             	lea    0x1(%rcx),%eax
	return (zid) * (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    5d32:	c1 ea 09             	shr    $0x9,%edx
    5d35:	0f af d0             	imul   %eax,%edx
	} else if (elba == zone_to_elba(zns_ftl, zid)) {
    5d38:	49 39 d6             	cmp    %rdx,%r14
    5d3b:	0f 85 ba fe ff ff    	jne    5bfb <zns_write+0x5cb>
		nr_lbas_flush = elba - prev_wp + 1;
    5d41:	4d 29 fe             	sub    %r15,%r14
    5d44:	4d 89 f5             	mov    %r14,%r13
    5d47:	e9 a6 fe ff ff       	jmp    5bf2 <zns_write+0x5c2>
		if (!buffer_allocate(&zns_ftl->zwra_buffer[zid], LBA_TO_BYTE(nr_lbas_flush)))
    5d4c:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    5d51:	44 89 ee             	mov    %r13d,%esi
    5d54:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
    5d59:	c1 e6 09             	shl    $0x9,%esi
    5d5c:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
    5d61:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    5d65:	44 89 6c 24 10       	mov    %r13d,0x10(%rsp)
    5d6a:	48 c1 e0 02          	shl    $0x2,%rax
    5d6e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    5d73:	48 03 45 60          	add    0x60(%rbp),%rax
    5d77:	48 89 c7             	mov    %rax,%rdi
    5d7a:	e8 00 00 00 00       	call   5d7f <zns_write+0x74f>
    5d7f:	85 c0                	test   %eax,%eax
    5d81:	0f 84 25 fb ff ff    	je     58ac <zns_write+0x27c>
		__increase_write_ptr(zns_ftl, zid, nr_lbas_flush);
    5d87:	8b 54 24 10          	mov    0x10(%rsp),%edx
    5d8b:	8b 74 24 50          	mov    0x50(%rsp),%esi
    5d8f:	48 89 ef             	mov    %rbp,%rdi
    5d92:	e8 09 f8 ff ff       	call   55a0 <__increase_write_ptr>
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    5d97:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    5d9b:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    5da0:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    5da5:	e8 00 00 00 00       	call   5daa <zns_write+0x77a>
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    5daa:	48 8b 75 00          	mov    0x0(%rbp),%rsi
    5dae:	31 d2                	xor    %edx,%edx
	remaining = nr_lbas_flush / spp->secs_per_pg;
    5db0:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    5db5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    5dba:	48 89 c7             	mov    %rax,%rdi
    5dbd:	4c 89 f8             	mov    %r15,%rax
    5dc0:	48 63 4e 04          	movslq 0x4(%rsi),%rcx
    5dc4:	48 f7 f1             	div    %rcx
	remaining = nr_lbas_flush / spp->secs_per_pg;
    5dc7:	49 63 4b 04          	movslq 0x4(%r11),%rcx
    5dcb:	31 d2                	xor    %edx,%edx
    5dcd:	49 89 c4             	mov    %rax,%r12
    5dd0:	4c 89 e8             	mov    %r13,%rax
    5dd3:	48 f7 f1             	div    %rcx
	while (remaining > 0) {
    5dd6:	49 39 cd             	cmp    %rcx,%r13
    5dd9:	0f 82 89 01 00 00    	jb     5f68 <zns_write+0x938>
			swr.ppa = &ppa;
    5ddf:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    5de4:	48 89 eb             	mov    %rbp,%rbx
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    5de7:	49 89 fd             	mov    %rdi,%r13
			swr.ppa = &ppa;
    5dea:	4d 89 de             	mov    %r11,%r14
	return ppa;
    5ded:	49 bf ff ff ff ff ff 	movabs $0xffff00ffffffffff,%r15
    5df4:	00 ff ff 
			swr.ppa = &ppa;
    5df7:	48 89 c5             	mov    %rax,%rbp
    5dfa:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    5dff:	eb 0f                	jmp    5e10 <zns_write+0x7e0>
		lpn += pgs;
    5e01:	4d 01 cc             	add    %r9,%r12
	while (remaining > 0) {
    5e04:	4c 29 cd             	sub    %r9,%rbp
    5e07:	0f 84 20 01 00 00    	je     5f2d <zns_write+0x8fd>
	struct ssdparams *spp = &zns_ftl->ssd->sp;
    5e0d:	48 8b 33             	mov    (%rbx),%rsi
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5e10:	8b 43 18             	mov    0x18(%rbx),%eax
    5e13:	31 d2                	xor    %edx,%edx
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    5e15:	44 8b 53 14          	mov    0x14(%rbx),%r10d
    5e19:	f7 76 08             	divl   0x8(%rsi)
    5e1c:	31 d2                	xor    %edx,%edx
    5e1e:	89 c1                	mov    %eax,%ecx
    5e20:	4c 89 e0             	mov    %r12,%rax
    5e23:	48 f7 f1             	div    %rcx
    5e26:	48 89 cf             	mov    %rcx,%rdi
	return (zid) * (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5e29:	89 fa                	mov    %edi,%edx
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    5e2b:	48 63 7e 14          	movslq 0x14(%rsi),%rdi
    5e2f:	0f af d0             	imul   %eax,%edx
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5e32:	48 89 c1             	mov    %rax,%rcx
	uint64_t off = lpn - zone_to_slpn(zns_ftl, zone);
    5e35:	4c 89 e0             	mov    %r12,%rax
    5e38:	48 29 d0             	sub    %rdx,%rax
    5e3b:	31 d2                	xor    %edx,%edx
    5e3d:	48 f7 f7             	div    %rdi
    5e40:	49 89 c1             	mov    %rax,%r9
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    5e43:	89 c8                	mov    %ecx,%eax
    5e45:	48 89 d7             	mov    %rdx,%rdi
    5e48:	31 d2                	xor    %edx,%edx
    5e4a:	49 0f af c2          	imul   %r10,%rax
    5e4e:	48 f7 b6 18 01 00 00 	divq   0x118(%rsi)
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    5e55:	4c 89 c8             	mov    %r9,%rax
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    5e58:	48 89 d1             	mov    %rdx,%rcx
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    5e5b:	31 d2                	xor    %edx,%edx
    5e5d:	49 f7 f2             	div    %r10
    5e60:	8d 04 11             	lea    (%rcx,%rdx,1),%eax
    5e63:	31 d2                	xor    %edx,%edx
	return ppa;
    5e65:	0f b7 cf             	movzwl %di,%ecx
    5e68:	f7 76 2c             	divl   0x2c(%rsi)
    5e6b:	4c 21 f9             	and    %r15,%rcx
    5e6e:	0f b6 c0             	movzbl %al,%eax
    5e71:	0f b6 d2             	movzbl %dl,%edx
    5e74:	48 c1 e0 28          	shl    $0x28,%rax
    5e78:	48 c1 e2 30          	shl    $0x30,%rdx
    5e7c:	48 09 c1             	or     %rax,%rcx
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5e7f:	0f b7 c7             	movzwl %di,%eax
	return ppa;
    5e82:	48 09 d1             	or     %rdx,%rcx
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5e85:	99                   	cltd
		ppa = __lpn_to_ppa(zns_ftl, lpn);
    5e86:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5e8b:	49 63 4e 14          	movslq 0x14(%r14),%rcx
    5e8f:	f7 f9                	idiv   %ecx
		pgs = min(remaining, (uint64_t)(spp->pgs_per_oneshotpg - pg_off));
    5e91:	49 89 c9             	mov    %rcx,%r9
		pg_off = ppa.g.pg % spp->pgs_per_oneshotpg;
    5e94:	48 63 d2             	movslq %edx,%rdx
		pgs = min(remaining, (uint64_t)(spp->pgs_per_oneshotpg - pg_off));
    5e97:	49 29 d1             	sub    %rdx,%r9
    5e9a:	49 39 e9             	cmp    %rbp,%r9
    5e9d:	4c 0f 47 cd          	cmova  %rbp,%r9
		if ((pg_off + pgs) == spp->pgs_per_oneshotpg) {
    5ea1:	4c 01 ca             	add    %r9,%rdx
    5ea4:	48 39 d1             	cmp    %rdx,%rcx
    5ea7:	0f 85 54 ff ff ff    	jne    5e01 <zns_write+0x7d1>
			swr.type = USER_IO;
    5ead:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
    5eb4:	00 00 00 
			nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    5eb7:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
    5ebc:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
			swr.type = USER_IO;
    5ec1:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
			swr.stime = nsecs_xfer_completed;
    5ec6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    5ecb:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
			swr.xfer_size = spp->pgs_per_oneshotpg * spp->pgsz;
    5ed0:	41 8b 46 14          	mov    0x14(%r14),%eax
    5ed4:	41 0f af 46 08       	imul   0x8(%r14),%eax
			swr.interleave_pci_dma = false;
    5ed9:	c6 44 24 78 00       	movb   $0x0,0x78(%rsp)
			swr.xfer_size = spp->pgs_per_oneshotpg * spp->pgsz;
    5ede:	48 98                	cltq
    5ee0:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
			swr.ppa = &ppa;
    5ee5:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
    5eea:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
    5ef1:	00 
			nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    5ef2:	48 8b 3b             	mov    (%rbx),%rdi
    5ef5:	e8 00 00 00 00       	call   5efa <zns_write+0x8ca>
						 spp->pgs_per_oneshotpg * spp->pgsz);
    5efa:	41 8b 4e 14          	mov    0x14(%r14),%ecx
			enqueue_writeback_io_req(req->sq_id, nsecs_completed,
    5efe:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
			nsecs_latest = (nsecs_completed > nsecs_latest) ? nsecs_completed :
    5f03:	49 39 c5             	cmp    %rax,%r13
			nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    5f06:	48 89 c6             	mov    %rax,%rsi
			nsecs_latest = (nsecs_completed > nsecs_latest) ? nsecs_completed :
    5f09:	4c 0f 42 e8          	cmovb  %rax,%r13
			enqueue_writeback_io_req(req->sq_id, nsecs_completed,
    5f0d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
						 spp->pgs_per_oneshotpg * spp->pgsz);
    5f12:	41 0f af 4e 08       	imul   0x8(%r14),%ecx
			enqueue_writeback_io_req(req->sq_id, nsecs_completed,
    5f17:	48 03 53 60          	add    0x60(%rbx),%rdx
    5f1b:	8b 78 08             	mov    0x8(%rax),%edi
    5f1e:	e8 00 00 00 00       	call   5f23 <zns_write+0x8f3>
    5f23:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    5f28:	e9 d4 fe ff ff       	jmp    5e01 <zns_write+0x7d1>
	uint32_t status = NVME_SC_SUCCESS;
    5f2d:	4d 89 f3             	mov    %r14,%r11
    5f30:	31 c0                	xor    %eax,%eax
    5f32:	e9 48 f9 ff ff       	jmp    587f <zns_write+0x24f>
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    5f37:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
	uint32_t status = NVME_SC_SUCCESS;
    5f3c:	31 c0                	xor    %eax,%eax
    5f3e:	e9 95 f8 ff ff       	jmp    57d8 <zns_write+0x1a8>
	uint64_t nsecs_latest = nsecs_start;
    5f43:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
			status = NVME_SC_ZNS_NO_ACTIVE_ZONE;
    5f48:	b8 bd 01 00 00       	mov    $0x1bd,%eax
    5f4d:	e9 86 f8 ff ff       	jmp    57d8 <zns_write+0x1a8>
	uint64_t nsecs_latest = nsecs_start;
    5f52:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
			status = NVME_SC_ZNS_NO_OPEN_ZONE;
    5f57:	b8 be 01 00 00       	mov    $0x1be,%eax
    5f5c:	e9 77 f8 ff ff       	jmp    57d8 <zns_write+0x1a8>
}
    5f61:	e8 00 00 00 00       	call   5f66 <zns_write+0x936>
			NVMEV_ASSERT(0);
    5f66:	0f 0b                	ud2
	nsecs_latest = ssd_advance_write_buffer(zns_ftl->ssd, nsecs_latest, LBA_TO_BYTE(nr_lba));
    5f68:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
	uint32_t status = NVME_SC_SUCCESS;
    5f6d:	31 c0                	xor    %eax,%eax
    5f6f:	e9 0b f9 ff ff       	jmp    587f <zns_write+0x24f>
    5f74:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    5f7b:	00 00 00 00 
    5f7f:	90                   	nop

0000000000005f80 <__pfx_zns_read>:
    5f80:	90                   	nop
    5f81:	90                   	nop
    5f82:	90                   	nop
    5f83:	90                   	nop
    5f84:	90                   	nop
    5f85:	90                   	nop
    5f86:	90                   	nop
    5f87:	90                   	nop
    5f88:	90                   	nop
    5f89:	90                   	nop
    5f8a:	90                   	nop
    5f8b:	90                   	nop
    5f8c:	90                   	nop
    5f8d:	90                   	nop
    5f8e:	90                   	nop
    5f8f:	90                   	nop

0000000000005f90 <zns_read>:

bool zns_read(struct nvmev_ns *ns, struct nvmev_request *req, struct nvmev_result *ret)
{
    5f90:	f3 0f 1e fa          	endbr64
    5f94:	e8 00 00 00 00       	call   5f99 <zns_read+0x9>
    5f99:	41 57                	push   %r15
    5f9b:	49 89 d0             	mov    %rdx,%r8
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    5f9e:	31 d2                	xor    %edx,%edx
    5fa0:	41 56                	push   %r14
    5fa2:	49 89 f6             	mov    %rsi,%r14
    5fa5:	41 55                	push   %r13
    5fa7:	41 54                	push   %r12
    5fa9:	55                   	push   %rbp
    5faa:	53                   	push   %rbx
    5fab:	48 83 ec 58          	sub    $0x58,%rsp
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
    5faf:	48 8b 77 20          	mov    0x20(%rdi),%rsi
{
    5fb3:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    5fba:	00 00 
    5fbc:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    5fc1:	31 c0                	xor    %eax,%eax
	struct ssdparams *spp = &zns_ftl->ssd->sp;
	struct zone_descriptor *zone_descs = zns_ftl->zone_descs;
	struct nvme_rw_command *cmd = &(req->cmd->rw);
    5fc3:	49 8b 06             	mov    (%r14),%rax
	uint64_t lpn;

	// get zone from start_lba
	uint32_t zid = lpn_to_zone(zns_ftl, slpn);
	uint32_t status = NVME_SC_SUCCESS;
	uint64_t nsecs_start = req->nsecs_start;
    5fc6:	4d 8b 76 10          	mov    0x10(%r14),%r14
	struct ssdparams *spp = &zns_ftl->ssd->sp;
    5fca:	48 8b 1e             	mov    (%rsi),%rbx
	uint64_t slba = cmd->slba;
    5fcd:	48 8b 48 28          	mov    0x28(%rax),%rcx
	return cmd->length + 1;
    5fd1:	0f b7 78 30          	movzwl 0x30(%rax),%edi
    5fd5:	4c 63 53 04          	movslq 0x4(%rbx),%r10
	uint64_t nsecs_completed = nsecs_start, nsecs_latest = 0;
	uint64_t pgs = 0, pg_off;
	struct ppa ppa;
    5fd9:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
    5fe0:	00 00 
    5fe2:	48 89 c8             	mov    %rcx,%rax
	uint64_t elpn = lba_to_lpn(zns_ftl, slba + nr_lba - 1);
    5fe5:	48 8d 2c 39          	lea    (%rcx,%rdi,1),%rbp
	uint64_t nr_lba = __nr_lbas_from_rw_cmd(cmd);
    5fe9:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
    5fed:	49 f7 f2             	div    %r10
    5ff0:	31 d2                	xor    %edx,%edx
    5ff2:	49 89 c7             	mov    %rax,%r15
    5ff5:	49 89 c5             	mov    %rax,%r13
    5ff8:	48 89 e8             	mov    %rbp,%rax
    5ffb:	49 f7 f2             	div    %r10
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    5ffe:	31 d2                	xor    %edx,%edx
	return lba / zns_ftl->ssd->sp.secs_per_pg;
    6000:	48 89 c7             	mov    %rax,%rdi
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    6003:	8b 46 18             	mov    0x18(%rsi),%eax
    6006:	89 04 24             	mov    %eax,(%rsp)
    6009:	f7 73 08             	divl   0x8(%rbx)
	struct nand_cmd swr;
    600c:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    6013:	00 00 
    6015:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    601c:	00 00 
    601e:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    6025:	00 00 
    6027:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    602e:	00 00 
    6030:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    6037:	00 00 
    6039:	31 d2                	xor    %edx,%edx
    603b:	49 89 c3             	mov    %rax,%r11
    603e:	4c 89 f8             	mov    %r15,%rax
    6041:	49 f7 f3             	div    %r11
	NVMEV_ZNS_DEBUG(
		"%s slba 0x%llx nr_lba 0x%lx zone_id %d state %d wp 0x%llx last lba 0x%llx\n",
		__FUNCTION__, slba, nr_lba, zid, zone_descs[zid].state, zone_descs[zid].wp,
		(slba + nr_lba - 1));

	if (zone_descs[zid].state == ZONE_STATE_OFFLINE) {
    6044:	41 bb bb 01 00 00    	mov    $0x1bb,%r11d
    604a:	89 c2                	mov    %eax,%edx
    604c:	48 c1 e2 06          	shl    $0x6,%rdx
    6050:	48 03 56 50          	add    0x50(%rsi),%rdx
    6054:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
    6058:	83 e0 f0             	and    $0xfffffff0,%eax
    605b:	3c f0                	cmp    $0xf0,%al
    605d:	74 2d                	je     608c <zns_read+0xfc>
	return (lba) / (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    605f:	44 8b 5e 18          	mov    0x18(%rsi),%r11d
    6063:	48 89 c8             	mov    %rcx,%rax
    6066:	31 d2                	xor    %edx,%edx
    6068:	41 c1 eb 09          	shr    $0x9,%r11d
    606c:	49 f7 f3             	div    %r11
    606f:	31 d2                	xor    %edx,%edx
    6071:	48 89 c1             	mov    %rax,%rcx
    6074:	48 89 e8             	mov    %rbp,%rax
    6077:	49 f7 f3             	div    %r11
	uint32_t status = NVME_SC_SUCCESS;
    607a:	ba b8 01 00 00       	mov    $0x1b8,%edx
    607f:	39 c1                	cmp    %eax,%ecx
    6081:	b8 00 00 00 00       	mov    $0x0,%eax
    6086:	0f 45 c2             	cmovne %edx,%eax
    6089:	41 89 c3             	mov    %eax,%r11d
		status = NVME_SC_ZNS_ERR_BOUNDARY;
	}

	// get delay from nand model
	nsecs_latest = nsecs_start;
	if (LBA_TO_BYTE(nr_lba) <= KB(4))
    608c:	49 83 f9 08          	cmp    $0x8,%r9
    6090:	0f 87 6c 01 00 00    	ja     6202 <zns_read+0x272>
		nsecs_latest += spp->fw_4kb_rd_lat;
    6096:	48 63 43 60          	movslq 0x60(%rbx),%rax
    609a:	49 01 c6             	add    %rax,%r14
	else
		nsecs_latest += spp->fw_rd_lat;

	swr.type = USER_IO;
    609d:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    60a4:	00 00 
	swr.cmd = NAND_READ;
	swr.stime = nsecs_latest;
    60a6:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
	swr.interleave_pci_dma = false;
    60ab:	c6 44 24 40 00       	movb   $0x0,0x40(%rsp)

	for (lpn = slpn; lpn <= elpn; lpn += pgs) {
    60b0:	4c 39 ff             	cmp    %r15,%rdi
    60b3:	0f 82 55 01 00 00    	jb     620e <zns_read+0x27e>
	return ppa;
    60b9:	44 89 5c 24 08       	mov    %r11d,0x8(%rsp)
    60be:	4c 89 e8             	mov    %r13,%rax
    60c1:	4c 8d 67 01          	lea    0x1(%rdi),%r12
    60c5:	4d 89 f5             	mov    %r14,%r13
    60c8:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    60cd:	49 89 f7             	mov    %rsi,%r15
    60d0:	49 89 c6             	mov    %rax,%r14
    60d3:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    60d8:	48 89 3c 24          	mov    %rdi,(%rsp)
	struct ssdparams *spp = &zns_ftl->ssd->sp;
    60dc:	49 8b 37             	mov    (%r15),%rsi
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    60df:	41 8b 47 18          	mov    0x18(%r15),%eax
    60e3:	31 d2                	xor    %edx,%edx
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    60e5:	45 8b 5f 14          	mov    0x14(%r15),%r11d
    60e9:	f7 76 08             	divl   0x8(%rsi)
    60ec:	31 d2                	xor    %edx,%edx
    60ee:	89 c1                	mov    %eax,%ecx
    60f0:	4c 89 f0             	mov    %r14,%rax
    60f3:	48 f7 f1             	div    %rcx
    60f6:	48 89 cf             	mov    %rcx,%rdi
    60f9:	31 d2                	xor    %edx,%edx
	return (zid) * (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    60fb:	0f af f8             	imul   %eax,%edi
	return (lpn) / (zns_ftl->zp.zone_size / zns_ftl->ssd->sp.pgsz);
    60fe:	48 89 c1             	mov    %rax,%rcx
	uint64_t off = lpn - zone_to_slpn(zns_ftl, zone);
    6101:	4c 89 f0             	mov    %r14,%rax
    6104:	48 29 f8             	sub    %rdi,%rax
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    6107:	48 63 7e 14          	movslq 0x14(%rsi),%rdi
    610b:	48 f7 f7             	div    %rdi
    610e:	49 89 c2             	mov    %rax,%r10
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    6111:	89 c8                	mov    %ecx,%eax
    6113:	48 89 d7             	mov    %rdx,%rdi
    6116:	31 d2                	xor    %edx,%edx
    6118:	49 0f af c3          	imul   %r11,%rax
    611c:	48 f7 b6 18 01 00 00 	divq   0x118(%rsi)
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    6123:	4c 89 d0             	mov    %r10,%rax
	uint32_t sdie = (zone * zpp->dies_per_zone) % spp->tt_luns;
    6126:	48 89 d1             	mov    %rdx,%rcx
	uint32_t die = sdie + ((off / spp->pgs_per_oneshotpg) % zpp->dies_per_zone);
    6129:	31 d2                	xor    %edx,%edx
    612b:	49 f7 f3             	div    %r11
    612e:	8d 04 11             	lea    (%rcx,%rdx,1),%eax
    6131:	31 d2                	xor    %edx,%edx
	return ppa;
    6133:	0f b7 cf             	movzwl %di,%ecx
    6136:	f7 76 2c             	divl   0x2c(%rsi)
    6139:	48 be ff ff ff ff ff 	movabs $0xffff00ffffffffff,%rsi
    6140:	00 ff ff 
    6143:	48 21 f1             	and    %rsi,%rcx
		ppa = __lpn_to_ppa(zns_ftl, lpn);
		pg_off = ppa.g.pg % spp->pgs_per_flashpg;
		pgs = min(elpn - lpn + 1, (uint64_t)(spp->pgs_per_flashpg - pg_off));
		swr.xfer_size = pgs * spp->pgsz;
		swr.ppa = &ppa;
		nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    6146:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
	return ppa;
    614b:	0f b6 c0             	movzbl %al,%eax
    614e:	0f b6 d2             	movzbl %dl,%edx
    6151:	48 c1 e0 28          	shl    $0x28,%rax
    6155:	48 c1 e2 30          	shl    $0x30,%rdx
    6159:	48 09 c1             	or     %rax,%rcx
		pg_off = ppa.g.pg % spp->pgs_per_flashpg;
    615c:	0f b7 c7             	movzwl %di,%eax
	return ppa;
    615f:	48 09 d1             	or     %rdx,%rcx
		pg_off = ppa.g.pg % spp->pgs_per_flashpg;
    6162:	99                   	cltd
		ppa = __lpn_to_ppa(zns_ftl, lpn);
    6163:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
		pg_off = ppa.g.pg % spp->pgs_per_flashpg;
    6168:	48 63 4b 0c          	movslq 0xc(%rbx),%rcx
    616c:	f7 f9                	idiv   %ecx
    616e:	48 63 c2             	movslq %edx,%rax
		pgs = min(elpn - lpn + 1, (uint64_t)(spp->pgs_per_flashpg - pg_off));
    6171:	48 29 c1             	sub    %rax,%rcx
    6174:	4c 89 e0             	mov    %r12,%rax
    6177:	4c 29 f0             	sub    %r14,%rax
    617a:	48 39 c1             	cmp    %rax,%rcx
    617d:	48 0f 46 c1          	cmovbe %rcx,%rax
    6181:	48 89 c5             	mov    %rax,%rbp
		swr.xfer_size = pgs * spp->pgsz;
    6184:	48 63 43 08          	movslq 0x8(%rbx),%rax
    6188:	48 0f af c5          	imul   %rbp,%rax
    618c:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
		swr.ppa = &ppa;
    6191:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    6196:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
		nsecs_completed = ssd_advance_nand(zns_ftl->ssd, &swr);
    619b:	49 8b 3f             	mov    (%r15),%rdi
    619e:	e8 00 00 00 00       	call   61a3 <zns_read+0x213>
		nsecs_latest = (nsecs_completed > nsecs_latest) ? nsecs_completed : nsecs_latest;
    61a3:	49 39 c5             	cmp    %rax,%r13
    61a6:	4c 0f 42 e8          	cmovb  %rax,%r13
	for (lpn = slpn; lpn <= elpn; lpn += pgs) {
    61aa:	49 01 ee             	add    %rbp,%r14
    61ad:	4c 39 34 24          	cmp    %r14,(%rsp)
    61b1:	0f 83 25 ff ff ff    	jae    60dc <zns_read+0x14c>
	}

	if (swr.interleave_pci_dma == false) {
    61b7:	80 7c 24 40 00       	cmpb   $0x0,0x40(%rsp)
    61bc:	44 8b 5c 24 08       	mov    0x8(%rsp),%r11d
    61c1:	4d 89 ee             	mov    %r13,%r14
    61c4:	4c 89 fe             	mov    %r15,%rsi
    61c7:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    61cc:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    61d1:	74 3b                	je     620e <zns_read+0x27e>
		nsecs_completed = ssd_advance_pcie(zns_ftl->ssd, nsecs_latest, nr_lba * spp->secsz);
		nsecs_latest = (nsecs_completed > nsecs_latest) ? nsecs_completed : nsecs_latest;
	}

	ret->status = status;
    61d3:	45 89 18             	mov    %r11d,(%r8)
	ret->nsecs_target = nsecs_latest;
    61d6:	4d 89 70 08          	mov    %r14,0x8(%r8)
	return true;
}
    61da:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
    61df:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    61e6:	00 00 
    61e8:	75 51                	jne    623b <zns_read+0x2ab>
    61ea:	48 83 c4 58          	add    $0x58,%rsp
    61ee:	b8 01 00 00 00       	mov    $0x1,%eax
    61f3:	5b                   	pop    %rbx
    61f4:	5d                   	pop    %rbp
    61f5:	41 5c                	pop    %r12
    61f7:	41 5d                	pop    %r13
    61f9:	41 5e                	pop    %r14
    61fb:	41 5f                	pop    %r15
    61fd:	e9 00 00 00 00       	jmp    6202 <zns_read+0x272>
		nsecs_latest += spp->fw_rd_lat;
    6202:	48 63 43 64          	movslq 0x64(%rbx),%rax
    6206:	49 01 c6             	add    %rax,%r14
    6209:	e9 8f fe ff ff       	jmp    609d <zns_read+0x10d>
		nsecs_completed = ssd_advance_pcie(zns_ftl->ssd, nsecs_latest, nr_lba * spp->secsz);
    620e:	48 63 13             	movslq (%rbx),%rdx
    6211:	48 8b 3e             	mov    (%rsi),%rdi
    6214:	4c 89 f6             	mov    %r14,%rsi
    6217:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    621c:	44 89 1c 24          	mov    %r11d,(%rsp)
    6220:	49 0f af d1          	imul   %r9,%rdx
    6224:	e8 00 00 00 00       	call   6229 <zns_read+0x299>
		nsecs_latest = (nsecs_completed > nsecs_latest) ? nsecs_completed : nsecs_latest;
    6229:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    622e:	44 8b 1c 24          	mov    (%rsp),%r11d
    6232:	49 39 c6             	cmp    %rax,%r14
    6235:	4c 0f 42 f0          	cmovb  %rax,%r14
    6239:	eb 98                	jmp    61d3 <zns_read+0x243>
}
    623b:	e8 00 00 00 00       	call   6240 <__pfx___zmgmt_send>

0000000000006240 <__pfx___zmgmt_send>:
    6240:	90                   	nop
    6241:	90                   	nop
    6242:	90                   	nop
    6243:	90                   	nop
    6244:	90                   	nop
    6245:	90                   	nop
    6246:	90                   	nop
    6247:	90                   	nop
    6248:	90                   	nop
    6249:	90                   	nop
    624a:	90                   	nop
    624b:	90                   	nop
    624c:	90                   	nop
    624d:	90                   	nop
    624e:	90                   	nop
    624f:	90                   	nop

0000000000006250 <__zmgmt_send>:
	return status;
}

static uint32_t __zmgmt_send(struct zns_ftl *zns_ftl, uint64_t slba, uint32_t action,
			     uint32_t option)
{
    6250:	e8 00 00 00 00       	call   6255 <__zmgmt_send+0x5>
    6255:	41 55                	push   %r13
    6257:	41 89 c9             	mov    %ecx,%r9d
    625a:	41 54                	push   %r12
    625c:	55                   	push   %rbp
    625d:	53                   	push   %rbx
    625e:	48 89 fb             	mov    %rdi,%rbx
    6261:	48 89 f7             	mov    %rsi,%rdi
    6264:	89 d6                	mov    %edx,%esi
	return (lba) / (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    6266:	8b 4b 18             	mov    0x18(%rbx),%ecx
    6269:	48 89 f8             	mov    %rdi,%rax
    626c:	31 d2                	xor    %edx,%edx
    626e:	c1 e9 09             	shr    $0x9,%ecx
    6271:	41 89 c8             	mov    %ecx,%r8d
    6274:	49 f7 f0             	div    %r8
    6277:	89 c5                	mov    %eax,%ebp
	uint32_t status;
	uint64_t zid = lba_to_zone(zns_ftl, slba);

	switch (action) {
    6279:	83 fe 04             	cmp    $0x4,%esi
    627c:	0f 84 fc 01 00 00    	je     647e <__zmgmt_send+0x22e>
    6282:	77 58                	ja     62dc <__zmgmt_send+0x8c>
    6284:	83 fe 02             	cmp    $0x2,%esi
    6287:	0f 84 81 01 00 00    	je     640e <__zmgmt_send+0x1be>
    628d:	83 fe 03             	cmp    $0x3,%esi
    6290:	0f 85 1b 01 00 00    	jne    63b1 <__zmgmt_send+0x161>
	enum zone_state cur_state = zone_descs[zid].state;
    6296:	48 8b 53 50          	mov    0x50(%rbx),%rdx
    629a:	48 c1 e5 06          	shl    $0x6,%rbp
    629e:	48 01 ea             	add    %rbp,%rdx
    62a1:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
    62a5:	c0 e8 04             	shr    $0x4,%al
	switch (cur_state) {
    62a8:	3c 03                	cmp    $0x3,%al
    62aa:	74 23                	je     62cf <__zmgmt_send+0x7f>
    62ac:	0f 87 42 01 00 00    	ja     63f4 <__zmgmt_send+0x1a4>
    62b2:	3c 01                	cmp    $0x1,%al
    62b4:	0f 84 c0 02 00 00    	je     657a <__zmgmt_send+0x32a>
    62ba:	3c 02                	cmp    $0x2,%al
    62bc:	0f 85 22 01 00 00    	jne    63e4 <__zmgmt_send+0x194>
	zns_ftl->zone_descs[zid].state = state;
    62c2:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
    62c6:	83 e0 0f             	and    $0xf,%eax
    62c9:	83 c8 30             	or     $0x30,%eax
    62cc:	88 42 01             	mov    %al,0x1(%rdx)
	uint32_t status = NVME_SC_SUCCESS;
    62cf:	31 c0                	xor    %eax,%eax
		status = __zmgmt_send_flush_explicit_zrwa(zns_ftl, slba);
		break;
	}

	return status;
}
    62d1:	5b                   	pop    %rbx
    62d2:	5d                   	pop    %rbp
    62d3:	41 5c                	pop    %r12
    62d5:	41 5d                	pop    %r13
    62d7:	e9 00 00 00 00       	jmp    62dc <__zmgmt_send+0x8c>
	switch (action) {
    62dc:	83 fe 05             	cmp    $0x5,%esi
    62df:	0f 84 3e 02 00 00    	je     6523 <__zmgmt_send+0x2d3>
    62e5:	83 fe 11             	cmp    $0x11,%esi
    62e8:	75 e5                	jne    62cf <__zmgmt_send+0x7f>
	uint64_t wp = zone_descs[zid].wp;
    62ea:	48 8b 73 50          	mov    0x50(%rbx),%rsi
    62ee:	49 89 c0             	mov    %rax,%r8
    62f1:	48 c1 e5 06          	shl    $0x6,%rbp
	uint64_t zrwa_end = min(zrwa_start + lbas_per_zrwa - 1,
    62f5:	8b 43 30             	mov    0x30(%rbx),%eax
	return (zid) * (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    62f8:	41 0f af c8          	imul   %r8d,%ecx
	uint64_t wp = zone_descs[zid].wp;
    62fc:	48 01 ee             	add    %rbp,%rsi
    62ff:	4c 8b 4e 18          	mov    0x18(%rsi),%r9
	uint64_t zone_capacity = zone_descs[zid].zone_capacity;
    6303:	4c 8b 56 08          	mov    0x8(%rsi),%r10
	uint64_t zrwa_end = min(zrwa_start + lbas_per_zrwa - 1,
    6307:	49 8d 44 01 ff       	lea    -0x1(%r9,%rax,1),%rax
    630c:	49 8d 54 0a ff       	lea    -0x1(%r10,%rcx,1),%rdx
    6311:	48 39 d0             	cmp    %rdx,%rax
    6314:	48 0f 46 d0          	cmovbe %rax,%rdx
		return NVME_SC_ZNS_INVALID_ZONE_OPERATION;
    6318:	b8 b6 01 00 00       	mov    $0x1b6,%eax
	if (zone_descs[zid].zrwav == 0)
    631d:	f6 46 02 08          	testb  $0x8,0x2(%rsi)
    6321:	74 ae                	je     62d1 <__zmgmt_send+0x81>
	if (!(slba >= zrwa_start && slba <= zrwa_end))
    6323:	4c 39 cf             	cmp    %r9,%rdi
    6326:	0f 82 a9 02 00 00    	jb     65d5 <__zmgmt_send+0x385>
    632c:	48 39 fa             	cmp    %rdi,%rdx
    632f:	0f 82 a0 02 00 00    	jb     65d5 <__zmgmt_send+0x385>
    6335:	48 83 c7 01          	add    $0x1,%rdi
	if ((nr_lbas_flush % lbas_per_zrwafg) != 0)
    6339:	8b 4b 2c             	mov    0x2c(%rbx),%ecx
    633c:	31 d2                	xor    %edx,%edx
	uint64_t nr_lbas_flush = slba - wp + 1;
    633e:	48 89 f8             	mov    %rdi,%rax
    6341:	4c 29 c8             	sub    %r9,%rax
	if ((nr_lbas_flush % lbas_per_zrwafg) != 0)
    6344:	48 f7 f1             	div    %rcx
		return NVME_SC_INVALID_FIELD;
    6347:	b8 02 00 00 00       	mov    $0x2,%eax
	if ((nr_lbas_flush % lbas_per_zrwafg) != 0)
    634c:	48 85 d2             	test   %rdx,%rdx
    634f:	75 80                	jne    62d1 <__zmgmt_send+0x81>
	enum zone_state cur_state = zone_descs[zid].state;
    6351:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
		return NVME_SC_ZNS_INVALID_ZONE_OPERATION;
    6355:	b8 b6 01 00 00       	mov    $0x1b6,%eax
	enum zone_state cur_state = zone_descs[zid].state;
    635a:	c0 ea 04             	shr    $0x4,%dl
    635d:	0f b6 d2             	movzbl %dl,%edx
	switch (cur_state) {
    6360:	8d 4a fe             	lea    -0x2(%rdx),%ecx
    6363:	83 f9 02             	cmp    $0x2,%ecx
    6366:	0f 87 65 ff ff ff    	ja     62d1 <__zmgmt_send+0x81>
		zone_descs[zid].wp = slba + 1;
    636c:	48 89 7e 18          	mov    %rdi,0x18(%rsi)
    6370:	8b 43 18             	mov    0x18(%rbx),%eax
    6373:	c1 e8 09             	shr    $0x9,%eax
    6376:	41 0f af c0          	imul   %r8d,%eax
		if (zone_descs[zid].wp == (zone_to_slba(zns_ftl, zid) + zone_capacity)) {
    637a:	4c 01 d0             	add    %r10,%rax
    637d:	48 39 c7             	cmp    %rax,%rdi
    6380:	0f 85 49 ff ff ff    	jne    62cf <__zmgmt_send+0x7f>
			if (cur_state != ZONE_STATE_CLOSED)
    6386:	83 fa 04             	cmp    $0x4,%edx
    6389:	74 04                	je     638f <__zmgmt_send+0x13f>
	zns_ftl->res_infos[type].acquired_cnt--;
    638b:	83 6b 3c 01          	subl   $0x1,0x3c(%rbx)
	zns_ftl->zone_descs[zid].state = state;
    638f:	48 8b 53 50          	mov    0x50(%rbx),%rdx
	zns_ftl->res_infos[type].acquired_cnt--;
    6393:	83 6b 34 01          	subl   $0x1,0x34(%rbx)
    6397:	83 6b 44 01          	subl   $0x1,0x44(%rbx)
	zns_ftl->zone_descs[zid].state = state;
    639b:	0f b6 44 2a 01       	movzbl 0x1(%rdx,%rbp,1),%eax
    63a0:	83 e0 0f             	and    $0xf,%eax
    63a3:	83 c8 e0             	or     $0xffffffe0,%eax
    63a6:	88 44 2a 01          	mov    %al,0x1(%rdx,%rbp,1)
	uint32_t status = NVME_SC_SUCCESS;
    63aa:	31 c0                	xor    %eax,%eax
    63ac:	e9 20 ff ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	switch (action) {
    63b1:	83 fe 01             	cmp    $0x1,%esi
    63b4:	0f 85 15 ff ff ff    	jne    62cf <__zmgmt_send+0x7f>
	enum zone_state cur_state = zone_descs[zid].state;
    63ba:	48 c1 e5 06          	shl    $0x6,%rbp
    63be:	48 03 6b 50          	add    0x50(%rbx),%rbp
    63c2:	0f b6 45 01          	movzbl 0x1(%rbp),%eax
    63c6:	89 c2                	mov    %eax,%edx
    63c8:	c0 ea 04             	shr    $0x4,%dl
	switch (cur_state) {
    63cb:	3c 3f                	cmp    $0x3f,%al
    63cd:	76 0c                	jbe    63db <__zmgmt_send+0x18b>
    63cf:	80 fa 04             	cmp    $0x4,%dl
    63d2:	75 10                	jne    63e4 <__zmgmt_send+0x194>
	uint32_t status = NVME_SC_SUCCESS;
    63d4:	31 c0                	xor    %eax,%eax
    63d6:	e9 f6 fe ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	switch (cur_state) {
    63db:	80 fa 01             	cmp    $0x1,%dl
    63de:	0f 87 75 01 00 00    	ja     6559 <__zmgmt_send+0x309>
}
    63e4:	5b                   	pop    %rbx
	switch (cur_state) {
    63e5:	b8 bf 01 00 00       	mov    $0x1bf,%eax
}
    63ea:	5d                   	pop    %rbp
    63eb:	41 5c                	pop    %r12
    63ed:	41 5d                	pop    %r13
    63ef:	e9 00 00 00 00       	jmp    63f4 <__zmgmt_send+0x1a4>
	switch (cur_state) {
    63f4:	3c 04                	cmp    $0x4,%al
    63f6:	75 ec                	jne    63e4 <__zmgmt_send+0x194>
    63f8:	8b 43 3c             	mov    0x3c(%rbx),%eax
	if (is_zone_resource_avail(zns_ftl, type)) {
    63fb:	3b 43 40             	cmp    0x40(%rbx),%eax
    63fe:	0f 82 43 01 00 00    	jb     6547 <__zmgmt_send+0x2f7>
			return NVME_SC_ZNS_NO_OPEN_ZONE;
    6404:	b8 be 01 00 00       	mov    $0x1be,%eax
    6409:	e9 c3 fe ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	enum zone_state cur_state = zone_descs[zid].state;
    640e:	48 c1 e5 06          	shl    $0x6,%rbp
    6412:	48 03 6b 50          	add    0x50(%rbx),%rbp
    6416:	0f b6 55 01          	movzbl 0x1(%rbp),%edx
	bool is_zrwa_zone = zone_descs[zid].zrwav;
    641a:	0f b6 4d 02          	movzbl 0x2(%rbp),%ecx
	enum zone_state cur_state = zone_descs[zid].state;
    641e:	89 d0                	mov    %edx,%eax
	bool is_zrwa_zone = zone_descs[zid].zrwav;
    6420:	c0 e9 03             	shr    $0x3,%cl
	enum zone_state cur_state = zone_descs[zid].state;
    6423:	c0 e8 04             	shr    $0x4,%al
	bool is_zrwa_zone = zone_descs[zid].zrwav;
    6426:	83 e1 01             	and    $0x1,%ecx
	switch (cur_state) {
    6429:	3c 04                	cmp    $0x4,%al
    642b:	74 22                	je     644f <__zmgmt_send+0x1ff>
    642d:	77 40                	ja     646f <__zmgmt_send+0x21f>
    642f:	3c 01                	cmp    $0x1,%al
    6431:	0f 84 8e 01 00 00    	je     65c5 <__zmgmt_send+0x375>
    6437:	8d 50 0e             	lea    0xe(%rax),%edx
    643a:	b8 bf 01 00 00       	mov    $0x1bf,%eax
    643f:	83 e2 0f             	and    $0xf,%edx
    6442:	80 fa 01             	cmp    $0x1,%dl
    6445:	0f 87 86 fe ff ff    	ja     62d1 <__zmgmt_send+0x81>
	zns_ftl->res_infos[type].acquired_cnt--;
    644b:	83 6b 3c 01          	subl   $0x1,0x3c(%rbx)
    644f:	83 6b 34 01          	subl   $0x1,0x34(%rbx)
		if (is_zrwa_zone)
    6453:	84 c9                	test   %cl,%cl
    6455:	74 04                	je     645b <__zmgmt_send+0x20b>
    6457:	83 6b 44 01          	subl   $0x1,0x44(%rbx)
	zns_ftl->zone_descs[zid].state = state;
    645b:	0f b6 45 01          	movzbl 0x1(%rbp),%eax
    645f:	83 e0 0f             	and    $0xf,%eax
    6462:	83 c8 e0             	or     $0xffffffe0,%eax
    6465:	88 45 01             	mov    %al,0x1(%rbp)
	uint32_t status = NVME_SC_SUCCESS;
    6468:	31 c0                	xor    %eax,%eax
    646a:	e9 62 fe ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	switch (cur_state) {
    646f:	3c 0e                	cmp    $0xe,%al
    6471:	0f 85 6d ff ff ff    	jne    63e4 <__zmgmt_send+0x194>
	uint32_t status = NVME_SC_SUCCESS;
    6477:	31 c0                	xor    %eax,%eax
    6479:	e9 53 fe ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	enum zone_state cur_state = zone_descs[zid].state;
    647e:	48 8b 73 50          	mov    0x50(%rbx),%rsi
    6482:	49 89 ed             	mov    %rbp,%r13
    6485:	49 c1 e5 06          	shl    $0x6,%r13
    6489:	4c 01 ee             	add    %r13,%rsi
    648c:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
	bool is_zrwa_zone = zone_descs[zid].zrwav;
    6490:	0f b6 4e 02          	movzbl 0x2(%rsi),%ecx
	enum zone_state cur_state = zone_descs[zid].state;
    6494:	c0 e8 04             	shr    $0x4,%al
	bool is_zrwa_zone = zone_descs[zid].zrwav;
    6497:	c0 e9 03             	shr    $0x3,%cl
    649a:	83 e1 01             	and    $0x1,%ecx
	switch (cur_state) {
    649d:	3c 04                	cmp    $0x4,%al
    649f:	74 1e                	je     64bf <__zmgmt_send+0x26f>
    64a1:	77 77                	ja     651a <__zmgmt_send+0x2ca>
    64a3:	3c 01                	cmp    $0x1,%al
    64a5:	74 24                	je     64cb <__zmgmt_send+0x27b>
    64a7:	8d 50 0e             	lea    0xe(%rax),%edx
    64aa:	b8 bf 01 00 00       	mov    $0x1bf,%eax
    64af:	83 e2 0f             	and    $0xf,%edx
    64b2:	80 fa 01             	cmp    $0x1,%dl
    64b5:	0f 87 16 fe ff ff    	ja     62d1 <__zmgmt_send+0x81>
	zns_ftl->res_infos[type].acquired_cnt--;
    64bb:	83 6b 3c 01          	subl   $0x1,0x3c(%rbx)
    64bf:	83 6b 34 01          	subl   $0x1,0x34(%rbx)
		if (is_zrwa_zone)
    64c3:	84 c9                	test   %cl,%cl
    64c5:	74 04                	je     64cb <__zmgmt_send+0x27b>
    64c7:	83 6b 44 01          	subl   $0x1,0x44(%rbx)
	zns_ftl->zone_descs[zid].state = state;
    64cb:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
	return (void *)((char *)zns_ftl->storage_base_addr + zid * zns_ftl->zp.zone_size);
    64cf:	48 89 ef             	mov    %rbp,%rdi
	zns_ftl->zone_descs[zid].state = state;
    64d2:	83 e0 0f             	and    $0xf,%eax
    64d5:	83 c8 10             	or     $0x10,%eax
    64d8:	88 46 01             	mov    %al,0x1(%rsi)
	return (void *)((char *)zns_ftl->storage_base_addr + zid * zns_ftl->zp.zone_size);
    64db:	8b 53 18             	mov    0x18(%rbx),%edx
	memset(zone_start_addr, 0, zone_size);
    64de:	31 f6                	xor    %esi,%esi
	struct zone_descriptor *zone_descs = zns_ftl->zone_descs;
    64e0:	4c 8b 63 50          	mov    0x50(%rbx),%r12
    64e4:	48 0f af fa          	imul   %rdx,%rdi
    64e8:	48 03 7b 68          	add    0x68(%rbx),%rdi
	memset(zone_start_addr, 0, zone_size);
    64ec:	e8 00 00 00 00       	call   64f1 <__zmgmt_send+0x2a1>
	zone_descs[zid].wp = zone_descs[zid].zslba;
    64f1:	4b 8d 04 2c          	lea    (%r12,%r13,1),%rax
    64f5:	48 8b 50 10          	mov    0x10(%rax),%rdx
	zone_descs[zid].zrwav = 0;
    64f9:	80 60 02 f7          	andb   $0xf7,0x2(%rax)
	zone_descs[zid].wp = zone_descs[zid].zslba;
    64fd:	48 89 50 18          	mov    %rdx,0x18(%rax)
	buffer_refill(&zns_ftl->zwra_buffer[zid]);
    6501:	48 8b 43 60          	mov    0x60(%rbx),%rax
    6505:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    650a:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
    650e:	e8 00 00 00 00       	call   6513 <__zmgmt_send+0x2c3>
	uint32_t status = NVME_SC_SUCCESS;
    6513:	31 c0                	xor    %eax,%eax
    6515:	e9 b7 fd ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	switch (cur_state) {
    651a:	3c 0e                	cmp    $0xe,%al
    651c:	74 ad                	je     64cb <__zmgmt_send+0x27b>
    651e:	e9 c1 fe ff ff       	jmp    63e4 <__zmgmt_send+0x194>
	enum zone_state cur_state = zns_ftl->zone_descs[zid].state;
    6523:	48 c1 e5 06          	shl    $0x6,%rbp
    6527:	48 03 6b 50          	add    0x50(%rbx),%rbp
    652b:	0f b6 55 01          	movzbl 0x1(%rbp),%edx
    652f:	89 d0                	mov    %edx,%eax
    6531:	c0 e8 04             	shr    $0x4,%al
	switch (cur_state) {
    6534:	3c 0d                	cmp    $0xd,%al
    6536:	74 35                	je     656d <__zmgmt_send+0x31d>
    6538:	3c 0f                	cmp    $0xf,%al
    653a:	0f 85 a4 fe ff ff    	jne    63e4 <__zmgmt_send+0x194>
	uint32_t status = NVME_SC_SUCCESS;
    6540:	31 c0                	xor    %eax,%eax
    6542:	e9 8a fd ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	zns_ftl->zone_descs[zid].state = state;
    6547:	48 8b 53 50          	mov    0x50(%rbx),%rdx
		zns_ftl->res_infos[type].acquired_cnt++;
    654b:	83 c0 01             	add    $0x1,%eax
    654e:	89 43 3c             	mov    %eax,0x3c(%rbx)
	zns_ftl->zone_descs[zid].state = state;
    6551:	48 01 ea             	add    %rbp,%rdx
    6554:	e9 69 fd ff ff       	jmp    62c2 <__zmgmt_send+0x72>
    6559:	83 e0 0f             	and    $0xf,%eax
    655c:	83 c8 40             	or     $0x40,%eax
    655f:	88 45 01             	mov    %al,0x1(%rbp)
    6562:	31 c0                	xor    %eax,%eax
	zns_ftl->res_infos[type].acquired_cnt--;
    6564:	83 6b 3c 01          	subl   $0x1,0x3c(%rbx)
    6568:	e9 64 fd ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	zns_ftl->zone_descs[zid].state = state;
    656d:	83 ca f0             	or     $0xfffffff0,%edx
    6570:	31 c0                	xor    %eax,%eax
    6572:	88 55 01             	mov    %dl,0x1(%rbp)
    6575:	e9 57 fd ff ff       	jmp    62d1 <__zmgmt_send+0x81>
	return zns_ftl->res_infos[type].acquired_cnt == zns_ftl->res_infos[type].total_cnt;
    657a:	8b 4b 34             	mov    0x34(%rbx),%ecx
    657d:	8b 73 38             	mov    0x38(%rbx),%esi
		if (is_zone_resource_full(zns_ftl, ACTIVE_ZONE))
    6580:	39 f1                	cmp    %esi,%ecx
    6582:	74 5b                	je     65df <__zmgmt_send+0x38f>
		if (is_zone_resource_full(zns_ftl, OPEN_ZONE))
    6584:	8b 43 3c             	mov    0x3c(%rbx),%eax
    6587:	3b 43 40             	cmp    0x40(%rbx),%eax
    658a:	0f 84 74 fe ff ff    	je     6404 <__zmgmt_send+0x1b4>
		if (zrwa) {
    6590:	45 85 c9             	test   %r9d,%r9d
    6593:	74 1d                	je     65b2 <__zmgmt_send+0x362>
    6595:	8b 43 44             	mov    0x44(%rbx),%eax
			if (is_zone_resource_full(zns_ftl, ZRWA_ZONE))
    6598:	3b 43 48             	cmp    0x48(%rbx),%eax
    659b:	74 4c                	je     65e9 <__zmgmt_send+0x399>
	if (is_zone_resource_avail(zns_ftl, type)) {
    659d:	73 06                	jae    65a5 <__zmgmt_send+0x355>
		zns_ftl->res_infos[type].acquired_cnt++;
    659f:	83 c0 01             	add    $0x1,%eax
    65a2:	89 43 44             	mov    %eax,0x44(%rbx)
			zone_descs[zid].zrwav = 1;
    65a5:	80 4a 02 08          	orb    $0x8,0x2(%rdx)
	return zns_ftl->res_infos[type].acquired_cnt < zns_ftl->res_infos[type].total_cnt;
    65a9:	8b 4b 34             	mov    0x34(%rbx),%ecx
    65ac:	8b 73 38             	mov    0x38(%rbx),%esi
    65af:	8b 43 3c             	mov    0x3c(%rbx),%eax
	if (is_zone_resource_avail(zns_ftl, type)) {
    65b2:	39 f1                	cmp    %esi,%ecx
    65b4:	0f 83 41 fe ff ff    	jae    63fb <__zmgmt_send+0x1ab>
		zns_ftl->res_infos[type].acquired_cnt++;
    65ba:	83 c1 01             	add    $0x1,%ecx
    65bd:	89 4b 34             	mov    %ecx,0x34(%rbx)
		return true;
    65c0:	e9 36 fe ff ff       	jmp    63fb <__zmgmt_send+0x1ab>
	zns_ftl->zone_descs[zid].state = state;
    65c5:	83 e2 0f             	and    $0xf,%edx
	uint32_t status = NVME_SC_SUCCESS;
    65c8:	31 c0                	xor    %eax,%eax
    65ca:	83 ca e0             	or     $0xffffffe0,%edx
    65cd:	88 55 01             	mov    %dl,0x1(%rbp)
    65d0:	e9 fc fc ff ff       	jmp    62d1 <__zmgmt_send+0x81>
		return NVME_SC_ZNS_INVALID_ZONE_OPERATION;
    65d5:	b8 b6 01 00 00       	mov    $0x1b6,%eax
    65da:	e9 f2 fc ff ff       	jmp    62d1 <__zmgmt_send+0x81>
			return NVME_SC_ZNS_NO_ACTIVE_ZONE;
    65df:	b8 bd 01 00 00       	mov    $0x1bd,%eax
    65e4:	e9 e8 fc ff ff       	jmp    62d1 <__zmgmt_send+0x81>
				return NVME_SC_ZNS_ZRWA_RSRC_UNAVAIL;
    65e9:	b8 b7 01 00 00       	mov    $0x1b7,%eax
    65ee:	e9 de fc ff ff       	jmp    62d1 <__zmgmt_send+0x81>
    65f3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    65fa:	00 00 00 00 
    65fe:	66 90                	xchg   %ax,%ax

0000000000006600 <__pfx_zns_zmgmt_send>:
    6600:	90                   	nop
    6601:	90                   	nop
    6602:	90                   	nop
    6603:	90                   	nop
    6604:	90                   	nop
    6605:	90                   	nop
    6606:	90                   	nop
    6607:	90                   	nop
    6608:	90                   	nop
    6609:	90                   	nop
    660a:	90                   	nop
    660b:	90                   	nop
    660c:	90                   	nop
    660d:	90                   	nop
    660e:	90                   	nop
    660f:	90                   	nop

0000000000006610 <zns_zmgmt_send>:

void zns_zmgmt_send(struct nvmev_ns *ns, struct nvmev_request *req, struct nvmev_result *ret)
{
    6610:	f3 0f 1e fa          	endbr64
    6614:	e8 00 00 00 00       	call   6619 <zns_zmgmt_send+0x9>
    6619:	41 57                	push   %r15
    661b:	41 56                	push   %r14
    661d:	41 55                	push   %r13
    661f:	49 89 f5             	mov    %rsi,%r13
    6622:	41 54                	push   %r12
    6624:	49 89 d4             	mov    %rdx,%r12
    6627:	55                   	push   %rbp
    6628:	53                   	push   %rbx
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
	struct nvme_zone_mgmt_send *cmd = (struct nvme_zone_mgmt_send *)req->cmd;
    6629:	48 8b 06             	mov    (%rsi),%rax
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
    662c:	4c 8b 7f 20          	mov    0x20(%rdi),%r15
	uint32_t select_all = cmd->select_all;
	uint32_t status = NVME_SC_SUCCESS;

	uint32_t action = cmd->zsa;
	uint32_t option = cmd->zsaso;
    6630:	0f b6 50 35          	movzbl 0x35(%rax),%edx
	uint32_t action = cmd->zsa;
    6634:	0f b6 68 34          	movzbl 0x34(%rax),%ebp
	uint64_t slba = cmd->slba;
    6638:	48 8b 70 28          	mov    0x28(%rax),%rsi
	uint32_t option = cmd->zsaso;
    663c:	89 d3                	mov    %edx,%ebx
    663e:	d0 eb                	shr    %bl
    6640:	83 e3 01             	and    $0x1,%ebx
	uint64_t zid = lba_to_zone(zns_ftl, slba);

	if (select_all) {
    6643:	83 e2 01             	and    $0x1,%edx
    6646:	74 4d                	je     6695 <zns_zmgmt_send+0x85>
		for (zid = 0; zid < zns_ftl->zp.nr_zones; zid++)
    6648:	41 8b 47 08          	mov    0x8(%r15),%eax
    664c:	45 31 f6             	xor    %r14d,%r14d
    664f:	85 c0                	test   %eax,%eax
    6651:	74 24                	je     6677 <zns_zmgmt_send+0x67>
	return (zid) * (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    6653:	41 8b 77 18          	mov    0x18(%r15),%esi
			__zmgmt_send(zns_ftl, zone_to_slba(zns_ftl, zid), action, option);
    6657:	89 d9                	mov    %ebx,%ecx
    6659:	89 ea                	mov    %ebp,%edx
    665b:	4c 89 ff             	mov    %r15,%rdi
    665e:	c1 ee 09             	shr    $0x9,%esi
    6661:	41 0f af f6          	imul   %r14d,%esi
		for (zid = 0; zid < zns_ftl->zp.nr_zones; zid++)
    6665:	49 83 c6 01          	add    $0x1,%r14
			__zmgmt_send(zns_ftl, zone_to_slba(zns_ftl, zid), action, option);
    6669:	e8 e2 fb ff ff       	call   6250 <__zmgmt_send>
		for (zid = 0; zid < zns_ftl->zp.nr_zones; zid++)
    666e:	41 8b 47 08          	mov    0x8(%r15),%eax
    6672:	49 39 c6             	cmp    %rax,%r14
    6675:	72 dc                	jb     6653 <zns_zmgmt_send+0x43>
	uint32_t status = NVME_SC_SUCCESS;
    6677:	31 c0                	xor    %eax,%eax
	}

	NVMEV_ZNS_DEBUG("%s slba %llx zid %lu select_all %lu action %u status %lu option %lu\n",
			__FUNCTION__, cmd->slba, zid, select_all, cmd->zsa, status, option);

	ret->nsecs_target = req->nsecs_start; // no delay
    6679:	49 8b 55 10          	mov    0x10(%r13),%rdx
	ret->status = status;
    667d:	41 89 04 24          	mov    %eax,(%r12)
	ret->nsecs_target = req->nsecs_start; // no delay
    6681:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
	return;
}
    6686:	5b                   	pop    %rbx
    6687:	5d                   	pop    %rbp
    6688:	41 5c                	pop    %r12
    668a:	41 5d                	pop    %r13
    668c:	41 5e                	pop    %r14
    668e:	41 5f                	pop    %r15
    6690:	e9 00 00 00 00       	jmp    6695 <zns_zmgmt_send+0x85>
		status = __zmgmt_send(zns_ftl, slba, action, option);
    6695:	89 d9                	mov    %ebx,%ecx
    6697:	89 ea                	mov    %ebp,%edx
    6699:	4c 89 ff             	mov    %r15,%rdi
    669c:	e8 af fb ff ff       	call   6250 <__zmgmt_send>
    66a1:	eb d6                	jmp    6679 <zns_zmgmt_send+0x69>
    66a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    66aa:	00 00 00 
    66ad:	0f 1f 00             	nopl   (%rax)

00000000000066b0 <__pfx_zns_zmgmt_recv>:
    66b0:	90                   	nop
    66b1:	90                   	nop
    66b2:	90                   	nop
    66b3:	90                   	nop
    66b4:	90                   	nop
    66b5:	90                   	nop
    66b6:	90                   	nop
    66b7:	90                   	nop
    66b8:	90                   	nop
    66b9:	90                   	nop
    66ba:	90                   	nop
    66bb:	90                   	nop
    66bc:	90                   	nop
    66bd:	90                   	nop
    66be:	90                   	nop
    66bf:	90                   	nop

00000000000066c0 <zns_zmgmt_recv>:

	return true;
}

void zns_zmgmt_recv(struct nvmev_ns *ns, struct nvmev_request *req, struct nvmev_result *ret)
{
    66c0:	f3 0f 1e fa          	endbr64
    66c4:	e8 00 00 00 00       	call   66c9 <zns_zmgmt_recv+0x9>
    66c9:	41 57                	push   %r15
    66cb:	48 89 f1             	mov    %rsi,%rcx
    66ce:	41 56                	push   %r14
    66d0:	41 55                	push   %r13
    66d2:	41 54                	push   %r12
    66d4:	55                   	push   %rbp
    66d5:	53                   	push   %rbx
    66d6:	48 83 ec 28          	sub    $0x28,%rsp
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
	struct zone_report *buffer = zns_ftl->report_buffer;
	struct nvme_zone_mgmt_recv *cmd = (struct nvme_zone_mgmt_recv *)req->cmd;
    66da:	48 8b 1e             	mov    (%rsi),%rbx
	struct zns_ftl *zns_ftl = (struct zns_ftl *)ns->ftls;
    66dd:	4c 8b 6f 20          	mov    0x20(%rdi),%r13
{
    66e1:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
	return (lba) / (BYTE_TO_LBA(zns_ftl->zp.zone_size));
    66e6:	31 d2                	xor    %edx,%edx

	uint64_t prp1 = (uint64_t)cmd->prp1;
	uint64_t prp2 = (uint64_t)cmd->prp2;
    66e8:	48 8b 43 20          	mov    0x20(%rbx),%rax
    66ec:	41 8b 75 18          	mov    0x18(%r13),%esi
	struct zone_report *buffer = zns_ftl->report_buffer;
    66f0:	49 8b 6d 58          	mov    0x58(%r13),%rbp
	uint64_t prp1 = (uint64_t)cmd->prp1;
    66f4:	4c 8b 63 18          	mov    0x18(%rbx),%r12
	uint64_t prp2 = (uint64_t)cmd->prp2;
    66f8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    66fd:	48 8b 43 28          	mov    0x28(%rbx),%rax
    6701:	c1 ee 09             	shr    $0x9,%esi
	uint64_t length = (cmd->nr_dw + 1) * sizeof(uint32_t);
    6704:	44 8b 73 30          	mov    0x30(%rbx),%r14d
    6708:	48 f7 f6             	div    %rsi
	if (lba_to_zone(zns_ftl, cmd->slba) >= zns_ftl->zp.nr_zones) {
    670b:	41 3b 45 08          	cmp    0x8(%r13),%eax
    670f:	0f 83 80 02 00 00    	jae    6995 <zns_zmgmt_recv+0x2d5>
	if (cmd->zra != 0) {
    6715:	80 7b 34 00          	cmpb   $0x0,0x34(%rbx)
    6719:	0f 85 9b 02 00 00    	jne    69ba <zns_zmgmt_recv+0x2fa>
	if (cmd->zra_specific_field != 0) {
    671f:	80 7b 35 00          	cmpb   $0x0,0x35(%rbx)
    6723:	0f 85 f3 02 00 00    	jne    6a1c <zns_zmgmt_recv+0x35c>
	NVMEV_ZNS_DEBUG("%s slba 0x%llx nr_dw 0x%lx  action %u partial %u action_specific 0x%x\n",
			__FUNCTION__, cmd->slba, length, cmd->zra, cmd->zra_specific_features,
			cmd->zra_specific_field);

	if (__check_zmgmt_rcv_option_supported(zns_ftl, cmd)) {
		__fill_zone_report(zns_ftl, cmd, buffer);
    6729:	41 8b 7d 18          	mov    0x18(%r13),%edi
    672d:	48 8b 43 28          	mov    0x28(%rbx),%rax
    6731:	31 d2                	xor    %edx,%edx
    6733:	45 8b 45 08          	mov    0x8(%r13),%r8d
    6737:	49 8b 75 50          	mov    0x50(%r13),%rsi
    673b:	c1 ef 09             	shr    $0x9,%edi
    673e:	44 8b 4b 30          	mov    0x30(%rbx),%r9d
    6742:	48 f7 f7             	div    %rdi
		nr_zone_to_report = zns_ftl->zp.nr_zones - start_zid;
    6745:	44 89 c2             	mov    %r8d,%edx
    6748:	89 c0                	mov    %eax,%eax
    674a:	48 29 c2             	sub    %rax,%rdx
	if (cmd->zra_specific_features == 0) // all
    674d:	f6 43 36 01          	testb  $0x1,0x36(%rbx)
    6751:	0f 85 b4 02 00 00    	jne    6a0b <zns_zmgmt_recv+0x34b>
	report->nr_zones = nr_zone_to_report;
    6757:	48 89 55 00          	mov    %rdx,0x0(%rbp)
	memcpy(report->zd, &(zone_descs[start_zid]),
    675b:	48 c1 e0 06          	shl    $0x6,%rax
	uint64_t length = (cmd->nr_dw + 1) * sizeof(uint32_t);
    675f:	41 8d 5e 01          	lea    0x1(%r14),%ebx
	memcpy(report->zd, &(zone_descs[start_zid]),
    6763:	48 c1 e2 06          	shl    $0x6,%rdx
    6767:	48 01 c6             	add    %rax,%rsi
	uint64_t length = (cmd->nr_dw + 1) * sizeof(uint32_t);
    676a:	48 c1 e3 02          	shl    $0x2,%rbx
	memcpy(report->zd, &(zone_descs[start_zid]),
    676e:	48 8d 7d 40          	lea    0x40(%rbp),%rdi
    6772:	48 89 0c 24          	mov    %rcx,(%rsp)
    6776:	e8 00 00 00 00       	call   677b <zns_zmgmt_recv+0xbb>
	while (remaining) {
    677b:	48 85 db             	test   %rbx,%rbx
    677e:	48 8b 0c 24          	mov    (%rsp),%rcx
    6782:	0f 84 f8 01 00 00    	je     6980 <zns_zmgmt_recv+0x2c0>
				paddr_list = kmap_atomic_pfn(PRP_PFN(paddr)) +
    6788:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
		vaddr = kmap_atomic_pfn(PRP_PFN(paddr));
    678d:	4d 89 e6             	mov    %r12,%r14
				io_size = PAGE_SIZE - mem_offs;
    6790:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
	offset = 0;
    6795:	45 31 d2             	xor    %r10d,%r10d
		vaddr = kmap_atomic_pfn(PRP_PFN(paddr));
    6798:	49 c1 ee 0c          	shr    $0xc,%r14
	uint64_t *paddr_list = NULL;
    679c:	45 31 ff             	xor    %r15d,%r15d
	size_t prp2_offs = 0;
    679f:	45 31 db             	xor    %r11d,%r11d
	size_t prp_offs = 0;
    67a2:	45 31 c9             	xor    %r9d,%r9d
				paddr_list = kmap_atomic_pfn(PRP_PFN(paddr)) +
    67a5:	48 89 f8             	mov    %rdi,%rax
					     (paddr & PAGE_OFFSET_MASK);
    67a8:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
	return kmap_atomic(pfn_to_page(pfn));
    67ae:	49 c1 e6 06          	shl    $0x6,%r14
				io_size = PAGE_SIZE - mem_offs;
    67b2:	41 bd 00 10 00 00    	mov    $0x1000,%r13d
				paddr_list = kmap_atomic_pfn(PRP_PFN(paddr)) +
    67b8:	48 c1 e8 0c          	shr    $0xc,%rax
					     (paddr & PAGE_OFFSET_MASK);
    67bc:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    67c1:	48 c1 e0 06          	shl    $0x6,%rax
    67c5:	48 89 04 24          	mov    %rax,(%rsp)
    67c9:	65 4c 8b 04 25 00 00 	mov    %gs:0x0,%r8
    67d0:	00 00 
    67d2:	eb 3c                	jmp    6810 <zns_zmgmt_recv+0x150>
			memcpy(vaddr + mem_offs, buffer + offset, io_size);
    67d4:	a8 04                	test   $0x4,%al
    67d6:	0f 85 a8 01 00 00    	jne    6984 <zns_zmgmt_recv+0x2c4>
    67dc:	85 c9                	test   %ecx,%ecx
    67de:	74 0f                	je     67ef <zns_zmgmt_recv+0x12f>
    67e0:	0f b6 3e             	movzbl (%rsi),%edi
    67e3:	40 88 3a             	mov    %dil,(%rdx)
    67e6:	f6 c1 02             	test   $0x2,%cl
    67e9:	0f 85 0d 02 00 00    	jne    69fc <zns_zmgmt_recv+0x33c>
    67ef:	41 83 a8 f8 1a 00 00 	subl   $0x1,0x1af8(%r8)
    67f6:	01 
    67f7:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 67fe <zns_zmgmt_recv+0x13e>
		preempt_enable();
    67fe:	0f 84 44 01 00 00    	je     6948 <zns_zmgmt_recv+0x288>
		offset += io_size;
    6804:	49 01 c2             	add    %rax,%r10
	while (remaining) {
    6807:	48 29 c3             	sub    %rax,%rbx
    680a:	0f 84 49 01 00 00    	je     6959 <zns_zmgmt_recv+0x299>
		prp_offs++;
    6810:	49 83 c1 01          	add    $0x1,%r9
	return kmap_atomic(pfn_to_page(pfn));
    6814:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 681b <zns_zmgmt_recv+0x15b>
		if (prp_offs == 1) {
    681b:	49 83 f9 01          	cmp    $0x1,%r9
    681f:	0f 84 af 00 00 00    	je     68d4 <zns_zmgmt_recv+0x214>
		} else if (prp_offs == 2) {
    6825:	49 83 f9 02          	cmp    $0x2,%r9
    6829:	0f 84 b0 00 00 00    	je     68df <zns_zmgmt_recv+0x21f>
			paddr = paddr_list[prp2_offs++];
    682f:	4b 8b 0c df          	mov    (%r15,%r11,8),%rcx
    6833:	49 83 c3 01          	add    $0x1,%r11
		vaddr = kmap_atomic_pfn(PRP_PFN(paddr));
    6837:	48 89 ca             	mov    %rcx,%rdx
    683a:	48 c1 ea 0c          	shr    $0xc,%rdx
    683e:	48 c1 e2 06          	shl    $0x6,%rdx
	raw_cpu_add_4(pcpu_hot.preempt_count, val);
    6842:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 6849 <zns_zmgmt_recv+0x189>
	current->pagefault_disabled++;
    6849:	41 83 80 f8 1a 00 00 	addl   $0x1,0x1af8(%r8)
    6850:	01 
    6851:	48 01 c2             	add    %rax,%rdx
    6854:	48 2b 15 00 00 00 00 	sub    0x0(%rip),%rdx        # 685b <zns_zmgmt_recv+0x19b>
		io_size = min_t(size_t, remaining, PAGE_SIZE);
    685b:	b8 00 10 00 00       	mov    $0x1000,%eax
    6860:	48 c1 fa 06          	sar    $0x6,%rdx
    6864:	48 c1 e2 0c          	shl    $0xc,%rdx
    6868:	48 03 15 00 00 00 00 	add    0x0(%rip),%rdx        # 686f <zns_zmgmt_recv+0x1af>
    686f:	48 39 c3             	cmp    %rax,%rbx
    6872:	48 0f 46 c3          	cmovbe %rbx,%rax
		if (paddr & PAGE_OFFSET_MASK) {
    6876:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    687c:	74 18                	je     6896 <zns_zmgmt_recv+0x1d6>
			if (io_size + mem_offs > PAGE_SIZE)
    687e:	48 8d 3c 08          	lea    (%rax,%rcx,1),%rdi
				io_size = PAGE_SIZE - mem_offs;
    6882:	4c 89 ee             	mov    %r13,%rsi
			memcpy(vaddr + mem_offs, buffer + offset, io_size);
    6885:	48 01 ca             	add    %rcx,%rdx
				io_size = PAGE_SIZE - mem_offs;
    6888:	48 29 ce             	sub    %rcx,%rsi
    688b:	48 81 ff 00 10 00 00 	cmp    $0x1000,%rdi
    6892:	48 0f 47 c6          	cmova  %rsi,%rax
			memcpy(vaddr + mem_offs, buffer + offset, io_size);
    6896:	4a 8d 74 15 00       	lea    0x0(%rbp,%r10,1),%rsi
    689b:	89 c1                	mov    %eax,%ecx
    689d:	83 f8 08             	cmp    $0x8,%eax
    68a0:	0f 82 2e ff ff ff    	jb     67d4 <zns_zmgmt_recv+0x114>
    68a6:	48 8b 0e             	mov    (%rsi),%rcx
    68a9:	48 89 0a             	mov    %rcx,(%rdx)
    68ac:	89 c1                	mov    %eax,%ecx
    68ae:	48 8b 7c 0e f8       	mov    -0x8(%rsi,%rcx,1),%rdi
    68b3:	48 89 7c 0a f8       	mov    %rdi,-0x8(%rdx,%rcx,1)
    68b8:	48 8d 7a 08          	lea    0x8(%rdx),%rdi
    68bc:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    68c0:	48 29 fa             	sub    %rdi,%rdx
    68c3:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
    68c6:	48 29 d6             	sub    %rdx,%rsi
    68c9:	c1 e9 03             	shr    $0x3,%ecx
    68cc:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    68cf:	e9 1b ff ff ff       	jmp    67ef <zns_zmgmt_recv+0x12f>
    68d4:	4c 89 f2             	mov    %r14,%rdx
			paddr = prp1;
    68d7:	4c 89 e1             	mov    %r12,%rcx
    68da:	e9 63 ff ff ff       	jmp    6842 <zns_zmgmt_recv+0x182>
			if (remaining > PAGE_SIZE) {
    68df:	48 8b 14 24          	mov    (%rsp),%rdx
			paddr = prp2;
    68e3:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
			if (remaining > PAGE_SIZE) {
    68e8:	48 81 fb 00 10 00 00 	cmp    $0x1000,%rbx
    68ef:	0f 86 4d ff ff ff    	jbe    6842 <zns_zmgmt_recv+0x182>
    68f5:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 68fc <zns_zmgmt_recv+0x23c>
    68fc:	41 83 80 f8 1a 00 00 	addl   $0x1,0x1af8(%r8)
    6903:	01 
    6904:	48 8b 3c 24          	mov    (%rsp),%rdi
    6908:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 690f <zns_zmgmt_recv+0x24f>
    690f:	48 01 f8             	add    %rdi,%rax
				paddr_list = kmap_atomic_pfn(PRP_PFN(paddr)) +
    6912:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    6917:	48 29 f0             	sub    %rsi,%rax
    691a:	48 c1 f8 06          	sar    $0x6,%rax
    691e:	48 c1 e0 0c          	shl    $0xc,%rax
    6922:	48 03 05 00 00 00 00 	add    0x0(%rip),%rax        # 6929 <zns_zmgmt_recv+0x269>
    6929:	4c 8d 3c 38          	lea    (%rax,%rdi,1),%r15
    692d:	48 89 f0             	mov    %rsi,%rax
				paddr = paddr_list[prp2_offs++];
    6930:	4b 8b 0c df          	mov    (%r15,%r11,8),%rcx
    6934:	49 83 c3 01          	add    $0x1,%r11
		vaddr = kmap_atomic_pfn(PRP_PFN(paddr));
    6938:	48 89 ca             	mov    %rcx,%rdx
    693b:	48 c1 ea 0c          	shr    $0xc,%rdx
    693f:	48 c1 e2 06          	shl    $0x6,%rdx
    6943:	e9 fa fe ff ff       	jmp    6842 <zns_zmgmt_recv+0x182>
		preempt_enable();
    6948:	e8 00 00 00 00       	call   694d <zns_zmgmt_recv+0x28d>
		offset += io_size;
    694d:	49 01 c2             	add    %rax,%r10
	while (remaining) {
    6950:	48 29 c3             	sub    %rax,%rbx
    6953:	0f 85 b7 fe ff ff    	jne    6810 <zns_zmgmt_recv+0x150>
	if (paddr_list != NULL)
    6959:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    695e:	4d 85 ff             	test   %r15,%r15
    6961:	74 1d                	je     6980 <zns_zmgmt_recv+0x2c0>
    6963:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    696a:	00 00 
	current->pagefault_disabled--;
    696c:	83 a8 f8 1a 00 00 01 	subl   $0x1,0x1af8(%rax)
	return GEN_UNARY_RMWcc("decl", pcpu_hot.preempt_count, e,
    6973:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 697a <zns_zmgmt_recv+0x2ba>
    697a:	0f 84 b9 00 00 00    	je     6a39 <zns_zmgmt_recv+0x379>

		__prp_transfer_data(prp1, prp2, buffer, length, 0);
		status = NVME_SC_SUCCESS;
    6980:	31 d2                	xor    %edx,%edx
    6982:	eb 56                	jmp    69da <zns_zmgmt_recv+0x31a>
			memcpy(vaddr + mem_offs, buffer + offset, io_size);
    6984:	8b 3e                	mov    (%rsi),%edi
    6986:	89 3a                	mov    %edi,(%rdx)
    6988:	8b 74 0e fc          	mov    -0x4(%rsi,%rcx,1),%esi
    698c:	89 74 0a fc          	mov    %esi,-0x4(%rdx,%rcx,1)
    6990:	e9 5a fe ff ff       	jmp    67ef <zns_zmgmt_recv+0x12f>
		NVMEV_ERROR("Invalid lba range\n");
    6995:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    699c:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    69a3:	48 89 0c 24          	mov    %rcx,(%rsp)
    69a7:	e8 00 00 00 00       	call   69ac <zns_zmgmt_recv+0x2ec>
	if (cmd->zra != 0) {
    69ac:	80 7b 34 00          	cmpb   $0x0,0x34(%rbx)
		NVMEV_ERROR("Invalid lba range\n");
    69b0:	48 8b 0c 24          	mov    (%rsp),%rcx
	if (cmd->zra != 0) {
    69b4:	0f 84 65 fd ff ff    	je     671f <zns_zmgmt_recv+0x5f>
		NVMEV_ERROR("Currently, Not support Extended Report Zones\n");
    69ba:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    69c1:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    69c8:	48 89 0c 24          	mov    %rcx,(%rsp)
    69cc:	e8 00 00 00 00       	call   69d1 <zns_zmgmt_recv+0x311>
    69d1:	48 8b 0c 24          	mov    (%rsp),%rcx
	} else {
		status = NVME_SC_INVALID_FIELD;
    69d5:	ba 02 00 00 00       	mov    $0x2,%edx
	}

	ret->nsecs_target = req->nsecs_start; // no delay
    69da:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    69df:	48 8b 41 10          	mov    0x10(%rcx),%rax
	ret->status = status;
    69e3:	89 13                	mov    %edx,(%rbx)
	ret->nsecs_target = req->nsecs_start; // no delay
    69e5:	48 89 43 08          	mov    %rax,0x8(%rbx)
	return;
}
    69e9:	48 83 c4 28          	add    $0x28,%rsp
    69ed:	5b                   	pop    %rbx
    69ee:	5d                   	pop    %rbp
    69ef:	41 5c                	pop    %r12
    69f1:	41 5d                	pop    %r13
    69f3:	41 5e                	pop    %r14
    69f5:	41 5f                	pop    %r15
    69f7:	e9 00 00 00 00       	jmp    69fc <zns_zmgmt_recv+0x33c>
			memcpy(vaddr + mem_offs, buffer + offset, io_size);
    69fc:	0f b7 74 0e fe       	movzwl -0x2(%rsi,%rcx,1),%esi
    6a01:	66 89 74 0a fe       	mov    %si,-0x2(%rdx,%rcx,1)
    6a06:	e9 e4 fd ff ff       	jmp    67ef <zns_zmgmt_recv+0x12f>
	uint64_t bytes_transfer = (cmd->nr_dw + 1) * sizeof(uint32_t);
    6a0b:	41 8d 51 01          	lea    0x1(%r9),%edx
		nr_zone_to_report = (bytes_transfer / sizeof(struct zone_descriptor)) - 1;
    6a0f:	48 c1 ea 04          	shr    $0x4,%rdx
    6a13:	48 83 ea 01          	sub    $0x1,%rdx
    6a17:	e9 3b fd ff ff       	jmp    6757 <zns_zmgmt_recv+0x97>
		NVMEV_ERROR("Currently, Only support listing all zone\n");
    6a1c:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    6a23:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    6a2a:	48 89 0c 24          	mov    %rcx,(%rsp)
    6a2e:	e8 00 00 00 00       	call   6a33 <zns_zmgmt_recv+0x373>
		return false;
    6a33:	48 8b 0c 24          	mov    (%rsp),%rcx
    6a37:	eb 9c                	jmp    69d5 <zns_zmgmt_recv+0x315>
    6a39:	e8 00 00 00 00       	call   6a3e <zns_zmgmt_recv+0x37e>
		status = NVME_SC_SUCCESS;
    6a3e:	31 d2                	xor    %edx,%edx
    6a40:	eb 98                	jmp    69da <zns_zmgmt_recv+0x31a>
    6a42:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    6a49:	00 00 00 
    6a4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000006a50 <__pfx_chmodel_init>:
    6a50:	90                   	nop
    6a51:	90                   	nop
    6a52:	90                   	nop
    6a53:	90                   	nop
    6a54:	90                   	nop
    6a55:	90                   	nop
    6a56:	90                   	nop
    6a57:	90                   	nop
    6a58:	90                   	nop
    6a59:	90                   	nop
    6a5a:	90                   	nop
    6a5b:	90                   	nop
    6a5c:	90                   	nop
    6a5d:	90                   	nop
    6a5e:	90                   	nop
    6a5f:	90                   	nop

0000000000006a60 <chmodel_init>:
{
	return cpu_clock(nvmev_vdev->config.cpu_nr_dispatcher);
}

void chmodel_init(struct channel_model *ch, uint64_t bandwidth /*MB/s*/)
{
    6a60:	f3 0f 1e fa          	endbr64
    6a64:	e8 00 00 00 00       	call   6a69 <chmodel_init+0x9>
	ch->head = 0;
	ch->valid_len = 0;
	ch->cur_time = 0;
	ch->max_credits = BANDWIDTH_TO_MAX_CREDITS(bandwidth);
    6a69:	ba 00 00 00 fa       	mov    $0xfa000000,%edx
{
    6a6e:	41 54                	push   %r12
	ch->command_credits = 0;
	ch->xfer_lat = BANDWIDTH_TO_TX_TIME(bandwidth);

	MEMSET(&(ch->avail_credits[0]), ch->max_credits, NR_CREDIT_ENTRIES);
    6a70:	48 83 c7 1c          	add    $0x1c,%rdi
	ch->max_credits = BANDWIDTH_TO_MAX_CREDITS(bandwidth);
    6a74:	48 b8 b5 36 41 5f 70 	movabs $0x89705f4136b5,%rax
    6a7b:	89 00 00 
    6a7e:	48 0f af d6          	imul   %rsi,%rdx
{
    6a82:	55                   	push   %rbp
    6a83:	48 89 f5             	mov    %rsi,%rbp
	ch->xfer_lat = BANDWIDTH_TO_TX_TIME(bandwidth);
    6a86:	48 89 e9             	mov    %rbp,%rcx
{
    6a89:	53                   	push   %rbx
	ch->xfer_lat = BANDWIDTH_TO_TX_TIME(bandwidth);
    6a8a:	48 c1 e1 14          	shl    $0x14,%rcx
	ch->head = 0;
    6a8e:	48 c7 47 ec 00 00 00 	movq   $0x0,-0x14(%rdi)
    6a95:	00 
	ch->max_credits = BANDWIDTH_TO_MAX_CREDITS(bandwidth);
    6a96:	48 c1 ea 10          	shr    $0x10,%rdx
	ch->cur_time = 0;
    6a9a:	48 c7 47 e4 00 00 00 	movq   $0x0,-0x1c(%rdi)
    6aa1:	00 
	ch->max_credits = BANDWIDTH_TO_MAX_CREDITS(bandwidth);
    6aa2:	48 f7 e2             	mul    %rdx
	ch->command_credits = 0;
    6aa5:	c7 47 f8 00 00 00 00 	movl   $0x0,-0x8(%rdi)
	ch->xfer_lat = BANDWIDTH_TO_TX_TIME(bandwidth);
    6aac:	48 b8 00 00 65 cd 1d 	movabs $0x1dcd650000,%rax
    6ab3:	00 00 00 
	ch->max_credits = BANDWIDTH_TO_MAX_CREDITS(bandwidth);
    6ab6:	48 89 d3             	mov    %rdx,%rbx
	ch->xfer_lat = BANDWIDTH_TO_TX_TIME(bandwidth);
    6ab9:	31 d2                	xor    %edx,%edx
    6abb:	48 f7 f1             	div    %rcx
	ch->max_credits = BANDWIDTH_TO_MAX_CREDITS(bandwidth);
    6abe:	48 c1 eb 04          	shr    $0x4,%rbx
	MEMSET(&(ch->avail_credits[0]), ch->max_credits, NR_CREDIT_ENTRIES);
    6ac2:	ba 00 80 01 00       	mov    $0x18000,%edx
	ch->max_credits = BANDWIDTH_TO_MAX_CREDITS(bandwidth);
    6ac7:	89 5f f4             	mov    %ebx,-0xc(%rdi)
    6aca:	89 de                	mov    %ebx,%esi
	ch->xfer_lat = BANDWIDTH_TO_TX_TIME(bandwidth);
    6acc:	89 47 fc             	mov    %eax,-0x4(%rdi)
    6acf:	49 89 c4             	mov    %rax,%r12
	MEMSET(&(ch->avail_credits[0]), ch->max_credits, NR_CREDIT_ENTRIES);
    6ad2:	e8 00 00 00 00       	call   6ad7 <chmodel_init+0x77>

	NVMEV_INFO("[%s] bandwidth %llu max_credits %u tx_time %u\n", __FUNCTION__, bandwidth,
    6ad7:	45 89 e1             	mov    %r12d,%r9d
    6ada:	41 89 d8             	mov    %ebx,%r8d
    6add:	48 89 e9             	mov    %rbp,%rcx
		   ch->max_credits, ch->xfer_lat);
}
    6ae0:	5b                   	pop    %rbx
	NVMEV_INFO("[%s] bandwidth %llu max_credits %u tx_time %u\n", __FUNCTION__, bandwidth,
    6ae1:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
}
    6ae8:	5d                   	pop    %rbp
	NVMEV_INFO("[%s] bandwidth %llu max_credits %u tx_time %u\n", __FUNCTION__, bandwidth,
    6ae9:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    6af0:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
}
    6af7:	41 5c                	pop    %r12
	NVMEV_INFO("[%s] bandwidth %llu max_credits %u tx_time %u\n", __FUNCTION__, bandwidth,
    6af9:	e9 00 00 00 00       	jmp    6afe <chmodel_init+0x9e>
    6afe:	66 90                	xchg   %ax,%ax

0000000000006b00 <__pfx_chmodel_request>:
    6b00:	90                   	nop
    6b01:	90                   	nop
    6b02:	90                   	nop
    6b03:	90                   	nop
    6b04:	90                   	nop
    6b05:	90                   	nop
    6b06:	90                   	nop
    6b07:	90                   	nop
    6b08:	90                   	nop
    6b09:	90                   	nop
    6b0a:	90                   	nop
    6b0b:	90                   	nop
    6b0c:	90                   	nop
    6b0d:	90                   	nop
    6b0e:	90                   	nop
    6b0f:	90                   	nop

0000000000006b10 <chmodel_request>:

uint64_t chmodel_request(struct channel_model *ch, uint64_t request_time, uint64_t length)
{
    6b10:	f3 0f 1e fa          	endbr64
    6b14:	e8 00 00 00 00       	call   6b19 <chmodel_request+0x9>
    6b19:	41 57                	push   %r15
    6b1b:	41 56                	push   %r14
    6b1d:	49 89 d6             	mov    %rdx,%r14
    6b20:	41 55                	push   %r13
    6b22:	49 89 f5             	mov    %rsi,%r13
    6b25:	41 54                	push   %r12
    6b27:	55                   	push   %rbp
    6b28:	53                   	push   %rbx
    6b29:	48 89 fb             	mov    %rdi,%rbx
    6b2c:	48 83 ec 08          	sub    $0x8,%rsp
	return cpu_clock(nvmev_vdev->config.cpu_nr_dispatcher);
    6b30:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 6b37 <chmodel_request+0x27>
	return sched_clock_cpu(cpu);
    6b37:	8b b8 c0 00 00 00    	mov    0xc0(%rax),%edi
    6b3d:	e8 00 00 00 00       	call   6b42 <chmodel_request+0x32>
	uint64_t total_latency;
	uint32_t units_to_xfer = DIV_ROUND_UP(length, UNIT_XFER_SIZE);
	uint32_t cur_time_offs, request_time_offs;

	// Search current time index and move head to it
	cur_time_offs = (cur_time / UNIT_TIME_INTERVAL) - (ch->cur_time / UNIT_TIME_INTERVAL);
    6b42:	48 b9 7d 3f 35 5e ba 	movabs $0x20c49ba5e353f7d,%rcx
    6b49:	49 0c 02 
    6b4c:	49 89 c4             	mov    %rax,%r12
    6b4f:	49 89 c0             	mov    %rax,%r8
    6b52:	49 c1 ec 05          	shr    $0x5,%r12
    6b56:	4c 89 04 24          	mov    %r8,(%rsp)
    6b5a:	4c 89 e0             	mov    %r12,%rax
    6b5d:	48 f7 e1             	mul    %rcx
    6b60:	49 89 d4             	mov    %rdx,%r12
    6b63:	48 8b 13             	mov    (%rbx),%rdx
    6b66:	44 89 e5             	mov    %r12d,%ebp
    6b69:	48 c1 ea 05          	shr    $0x5,%rdx
    6b6d:	48 89 d0             	mov    %rdx,%rax
    6b70:	48 f7 e1             	mul    %rcx
	cur_time_offs = (cur_time_offs < ch->valid_len) ? cur_time_offs : ch->valid_len;
    6b73:	8b 43 0c             	mov    0xc(%rbx),%eax
	cur_time_offs = (cur_time / UNIT_TIME_INTERVAL) - (ch->cur_time / UNIT_TIME_INTERVAL);
    6b76:	29 d5                	sub    %edx,%ebp
	cur_time_offs = (cur_time_offs < ch->valid_len) ? cur_time_offs : ch->valid_len;
    6b78:	39 c5                	cmp    %eax,%ebp
    6b7a:	0f 47 e8             	cmova  %eax,%ebp

	if (ch->head + cur_time_offs >= NR_CREDIT_ENTRIES) {
    6b7d:	8b 43 08             	mov    0x8(%rbx),%eax
    6b80:	8d 14 28             	lea    (%rax,%rbp,1),%edx
    6b83:	81 fa ff 7f 01 00    	cmp    $0x17fff,%edx
    6b89:	0f 86 9e 01 00 00    	jbe    6d2d <chmodel_request+0x21d>
		MEMSET(&(ch->avail_credits[ch->head]), ch->max_credits,
    6b8f:	8b 73 10             	mov    0x10(%rbx),%esi
    6b92:	ba 00 80 01 00       	mov    $0x18000,%edx
    6b97:	48 8d 7c 03 1c       	lea    0x1c(%rbx,%rax,1),%rdi
    6b9c:	29 c2                	sub    %eax,%edx
    6b9e:	e8 00 00 00 00       	call   6ba3 <chmodel_request+0x93>
		       NR_CREDIT_ENTRIES - ch->head);
		MEMSET(&(ch->avail_credits[0]), ch->max_credits,
    6ba3:	44 8b 7b 08          	mov    0x8(%rbx),%r15d
    6ba7:	8b 73 10             	mov    0x10(%rbx),%esi
    6baa:	48 8d 7b 1c          	lea    0x1c(%rbx),%rdi
    6bae:	41 8d 94 2f 00 80 fe 	lea    -0x18000(%r15,%rbp,1),%edx
    6bb5:	ff 
    6bb6:	e8 00 00 00 00       	call   6bbb <chmodel_request+0xab>
    6bbb:	4c 8b 04 24          	mov    (%rsp),%r8
		       cur_time_offs - (NR_CREDIT_ENTRIES - ch->head));
	} else {
		MEMSET(&(ch->avail_credits[ch->head]), ch->max_credits, cur_time_offs);
	}

	ch->head = (ch->head + cur_time_offs) % NR_CREDIT_ENTRIES;
    6bbf:	42 8d 74 3d 00       	lea    0x0(%rbp,%r15,1),%esi
    6bc4:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
	ch->cur_time = cur_time;
	ch->valid_len = ch->valid_len - cur_time_offs;
    6bc9:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
	ch->cur_time = cur_time;
    6bcd:	4c 89 03             	mov    %r8,(%rbx)
	ch->head = (ch->head + cur_time_offs) % NR_CREDIT_ENTRIES;
    6bd0:	48 89 f0             	mov    %rsi,%rax
    6bd3:	48 0f af f7          	imul   %rdi,%rsi
	ch->valid_len = ch->valid_len - cur_time_offs;
    6bd7:	41 29 ea             	sub    %ebp,%r10d
    6bda:	44 89 53 0c          	mov    %r10d,0xc(%rbx)
	ch->head = (ch->head + cur_time_offs) % NR_CREDIT_ENTRIES;
    6bde:	48 c1 ee 30          	shr    $0x30,%rsi
    6be2:	8d 14 76             	lea    (%rsi,%rsi,2),%edx
    6be5:	c1 e2 0f             	shl    $0xf,%edx
    6be8:	29 d0                	sub    %edx,%eax
    6bea:	89 43 08             	mov    %eax,0x8(%rbx)
    6bed:	89 c6                	mov    %eax,%esi

	if (ch->valid_len > NR_CREDIT_ENTRIES) {
    6bef:	41 81 fa 00 80 01 00 	cmp    $0x18000,%r10d
    6bf6:	0f 87 bd 01 00 00    	ja     6db9 <chmodel_request+0x2a9>
		NVMEV_ERROR("[%s] Invalid valid_len 0x%x\n", __FUNCTION__, ch->valid_len);
		NVMEV_ASSERT(0);
	}

	if (request_time < cur_time) {
    6bfc:	4d 39 c5             	cmp    %r8,%r13
    6bff:	0f 82 96 01 00 00    	jb     6d9b <chmodel_request+0x28b>
			    __FUNCTION__, request_time, cur_time);
		return request_time; // return minimum delay
	}

	//Search request time index
	request_time_offs = (request_time / UNIT_TIME_INTERVAL) - (cur_time / UNIT_TIME_INTERVAL);
    6c05:	48 b8 7d 3f 35 5e ba 	movabs $0x20c49ba5e353f7d,%rax
    6c0c:	49 0c 02 
    6c0f:	4c 89 ea             	mov    %r13,%rdx
    6c12:	48 c1 ea 05          	shr    $0x5,%rdx
    6c16:	48 f7 e2             	mul    %rdx
    6c19:	41 89 d1             	mov    %edx,%r9d
    6c1c:	45 29 e1             	sub    %r12d,%r9d

	if (request_time_offs >= NR_CREDIT_ENTRIES) {
    6c1f:	41 81 f9 ff 7f 01 00 	cmp    $0x17fff,%r9d
    6c26:	0f 87 52 01 00 00    	ja     6d7e <chmodel_request+0x26e>
		NVMEV_ERROR("[%s] Need to increase array size 0x%llx 0x%llx 0x%x\n", __FUNCTION__,
			    request_time, cur_time, request_time_offs);
		return request_time; // return minimum delay
	}

	pos = (ch->head + request_time_offs) % NR_CREDIT_ENTRIES;
    6c2c:	42 8d 0c 0e          	lea    (%rsi,%r9,1),%ecx
	remaining_credits = units_to_xfer * UNIT_XFER_CREDITS;
	remaining_credits += ch->command_credits;
    6c30:	44 8b 5b 14          	mov    0x14(%rbx),%r11d
	uint32_t units_to_xfer = DIV_ROUND_UP(length, UNIT_XFER_SIZE);
    6c34:	49 83 c6 7f          	add    $0x7f,%r14
	pos = (ch->head + request_time_offs) % NR_CREDIT_ENTRIES;
    6c38:	48 89 ca             	mov    %rcx,%rdx
    6c3b:	48 0f af cf          	imul   %rdi,%rcx
	uint32_t units_to_xfer = DIV_ROUND_UP(length, UNIT_XFER_SIZE);
    6c3f:	49 c1 ee 07          	shr    $0x7,%r14
	remaining_credits += ch->command_credits;
    6c43:	45 01 f3             	add    %r14d,%r11d
	pos = (ch->head + request_time_offs) % NR_CREDIT_ENTRIES;
    6c46:	48 c1 e9 30          	shr    $0x30,%rcx
    6c4a:	8d 04 49             	lea    (%rcx,%rcx,2),%eax
    6c4d:	c1 e0 0f             	shl    $0xf,%eax
    6c50:	29 c2                	sub    %eax,%edx

	default_delay = remaining_credits / ch->max_credits;
    6c52:	44 89 d8             	mov    %r11d,%eax
	pos = (ch->head + request_time_offs) % NR_CREDIT_ENTRIES;
    6c55:	89 d5                	mov    %edx,%ebp
	default_delay = remaining_credits / ch->max_credits;
    6c57:	31 d2                	xor    %edx,%edx
    6c59:	f7 73 10             	divl   0x10(%rbx)
	delay = 0;

	while (1) {
		consumed_credits = (remaining_credits <= ch->avail_credits[pos]) ?
    6c5c:	0f b6 54 2b 1c       	movzbl 0x1c(%rbx,%rbp,1),%edx
    6c61:	44 39 da             	cmp    %r11d,%edx
	pos = (ch->head + request_time_offs) % NR_CREDIT_ENTRIES;
    6c64:	48 89 e9             	mov    %rbp,%rcx
	default_delay = remaining_credits / ch->max_credits;
    6c67:	41 89 c7             	mov    %eax,%r15d
		consumed_credits = (remaining_credits <= ch->avail_credits[pos]) ?
    6c6a:	89 d0                	mov    %edx,%eax
    6c6c:	41 0f 47 d3          	cmova  %r11d,%edx
					   remaining_credits :
					   ch->avail_credits[pos];
		ch->avail_credits[pos] -= consumed_credits;
    6c70:	29 d0                	sub    %edx,%eax
    6c72:	88 44 2b 1c          	mov    %al,0x1c(%rbx,%rbp,1)
		remaining_credits -= consumed_credits;

		if (remaining_credits) {
    6c76:	44 89 d8             	mov    %r11d,%eax
    6c79:	29 d0                	sub    %edx,%eax
    6c7b:	0f 84 30 01 00 00    	je     6db1 <chmodel_request+0x2a1>
			next_pos = (pos + 1) % NR_CREDIT_ENTRIES;
    6c81:	8d 6d 01             	lea    0x1(%rbp),%ebp
	delay = 0;
    6c84:	45 31 e4             	xor    %r12d,%r12d
			next_pos = (pos + 1) % NR_CREDIT_ENTRIES;
    6c87:	49 89 eb             	mov    %rbp,%r11
    6c8a:	48 0f af ef          	imul   %rdi,%rbp
    6c8e:	48 c1 ed 30          	shr    $0x30,%rbp
    6c92:	8d 54 6d 00          	lea    0x0(%rbp,%rbp,2),%edx
    6c96:	c1 e2 0f             	shl    $0xf,%edx
    6c99:	41 29 d3             	sub    %edx,%r11d
    6c9c:	44 89 dd             	mov    %r11d,%ebp
			// If array is full
			if (next_pos != ch->head) {
    6c9f:	44 39 de             	cmp    %r11d,%esi
    6ca2:	75 2a                	jne    6cce <chmodel_request+0x1be>
    6ca4:	e9 aa 00 00 00       	jmp    6d53 <chmodel_request+0x243>
			next_pos = (pos + 1) % NR_CREDIT_ENTRIES;
    6ca9:	8d 4d 01             	lea    0x1(%rbp),%ecx
    6cac:	48 89 ca             	mov    %rcx,%rdx
    6caf:	48 0f af cf          	imul   %rdi,%rcx
    6cb3:	48 c1 e9 30          	shr    $0x30,%rcx
    6cb7:	44 8d 1c 49          	lea    (%rcx,%rcx,2),%r11d
    6cbb:	89 d1                	mov    %edx,%ecx
    6cbd:	41 c1 e3 0f          	shl    $0xf,%r11d
    6cc1:	44 29 d9             	sub    %r11d,%ecx
			if (next_pos != ch->head) {
    6cc4:	39 ce                	cmp    %ecx,%esi
    6cc6:	0f 84 89 00 00 00    	je     6d55 <chmodel_request+0x245>
			next_pos = (pos + 1) % NR_CREDIT_ENTRIES;
    6ccc:	89 cd                	mov    %ecx,%ebp
		consumed_credits = (remaining_credits <= ch->avail_credits[pos]) ?
    6cce:	41 89 eb             	mov    %ebp,%r11d
				delay++;
    6cd1:	41 83 c4 01          	add    $0x1,%r12d
		consumed_credits = (remaining_credits <= ch->avail_credits[pos]) ?
    6cd5:	42 0f b6 54 1b 1c    	movzbl 0x1c(%rbx,%r11,1),%edx
    6cdb:	39 c2                	cmp    %eax,%edx
    6cdd:	89 d1                	mov    %edx,%ecx
    6cdf:	0f 47 d0             	cmova  %eax,%edx
		ch->avail_credits[pos] -= consumed_credits;
    6ce2:	29 d1                	sub    %edx,%ecx
    6ce4:	42 88 4c 1b 1c       	mov    %cl,0x1c(%rbx,%r11,1)
		if (remaining_credits) {
    6ce9:	29 d0                	sub    %edx,%eax
    6ceb:	75 bc                	jne    6ca9 <chmodel_request+0x199>
			}
		} else
			break;
	}

	valid_length = (pos >= ch->head) ? (pos - ch->head + 1) :
    6ced:	39 f5                	cmp    %esi,%ebp
    6cef:	72 58                	jb     6d49 <chmodel_request+0x239>
    6cf1:	83 c5 01             	add    $0x1,%ebp
    6cf4:	29 f5                	sub    %esi,%ebp
					   (NR_CREDIT_ENTRIES - (ch->head - pos - 1));

	if (valid_length > ch->valid_len)
    6cf6:	41 39 ea             	cmp    %ebp,%r10d
    6cf9:	73 03                	jae    6cfe <chmodel_request+0x1ee>
		ch->valid_len = valid_length;
    6cfb:	89 6b 0c             	mov    %ebp,0xc(%rbx)

	// check if array is small..
	delay = (delay > default_delay) ? (delay - default_delay) : 0;
    6cfe:	31 c0                	xor    %eax,%eax
    6d00:	45 39 e7             	cmp    %r12d,%r15d
    6d03:	73 0a                	jae    6d0f <chmodel_request+0x1ff>

	total_latency = (ch->xfer_lat * units_to_xfer) + (delay * UNIT_TIME_INTERVAL);
    6d05:	45 29 fc             	sub    %r15d,%r12d
    6d08:	49 69 c4 a0 0f 00 00 	imul   $0xfa0,%r12,%rax
    6d0f:	44 0f af 73 18       	imul   0x18(%rbx),%r14d

	return request_time + total_latency;
}
    6d14:	48 83 c4 08          	add    $0x8,%rsp
    6d18:	5b                   	pop    %rbx
    6d19:	5d                   	pop    %rbp
    6d1a:	41 5c                	pop    %r12
	return request_time + total_latency;
    6d1c:	4d 01 ee             	add    %r13,%r14
}
    6d1f:	41 5d                	pop    %r13
	return request_time + total_latency;
    6d21:	4c 01 f0             	add    %r14,%rax
}
    6d24:	41 5e                	pop    %r14
    6d26:	41 5f                	pop    %r15
    6d28:	e9 00 00 00 00       	jmp    6d2d <chmodel_request+0x21d>
		MEMSET(&(ch->avail_credits[ch->head]), ch->max_credits, cur_time_offs);
    6d2d:	8b 73 10             	mov    0x10(%rbx),%esi
    6d30:	89 ea                	mov    %ebp,%edx
    6d32:	48 8d 7c 03 1c       	lea    0x1c(%rbx,%rax,1),%rdi
    6d37:	e8 00 00 00 00       	call   6d3c <chmodel_request+0x22c>
	ch->head = (ch->head + cur_time_offs) % NR_CREDIT_ENTRIES;
    6d3c:	44 8b 7b 08          	mov    0x8(%rbx),%r15d
    6d40:	4c 8b 04 24          	mov    (%rsp),%r8
    6d44:	e9 76 fe ff ff       	jmp    6bbf <chmodel_request+0xaf>
	valid_length = (pos >= ch->head) ? (pos - ch->head + 1) :
    6d49:	81 c5 01 80 01 00    	add    $0x18001,%ebp
    6d4f:	29 f5                	sub    %esi,%ebp
    6d51:	eb a3                	jmp    6cf6 <chmodel_request+0x1e6>
	pos = (ch->head + request_time_offs) % NR_CREDIT_ENTRIES;
    6d53:	89 cd                	mov    %ecx,%ebp
				NVMEV_ERROR("[%s] No free entry 0x%llx 0x%llx 0x%x\n", __FUNCTION__,
    6d55:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    6d5c:	4c 89 e9             	mov    %r13,%rcx
    6d5f:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    6d66:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    6d6d:	e8 00 00 00 00       	call   6d72 <chmodel_request+0x262>
	valid_length = (pos >= ch->head) ? (pos - ch->head + 1) :
    6d72:	8b 73 08             	mov    0x8(%rbx),%esi
	if (valid_length > ch->valid_len)
    6d75:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
				break;
    6d79:	e9 6f ff ff ff       	jmp    6ced <chmodel_request+0x1dd>
		NVMEV_ERROR("[%s] Need to increase array size 0x%llx 0x%llx 0x%x\n", __FUNCTION__,
    6d7e:	4c 89 e9             	mov    %r13,%rcx
    6d81:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    6d88:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    6d8f:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    6d96:	e8 00 00 00 00       	call   6d9b <chmodel_request+0x28b>
}
    6d9b:	48 83 c4 08          	add    $0x8,%rsp
    6d9f:	4c 89 e8             	mov    %r13,%rax
    6da2:	5b                   	pop    %rbx
    6da3:	5d                   	pop    %rbp
    6da4:	41 5c                	pop    %r12
    6da6:	41 5d                	pop    %r13
    6da8:	41 5e                	pop    %r14
    6daa:	41 5f                	pop    %r15
    6dac:	e9 00 00 00 00       	jmp    6db1 <chmodel_request+0x2a1>
	delay = 0;
    6db1:	45 31 e4             	xor    %r12d,%r12d
    6db4:	e9 34 ff ff ff       	jmp    6ced <chmodel_request+0x1dd>
		NVMEV_ERROR("[%s] Invalid valid_len 0x%x\n", __FUNCTION__, ch->valid_len);
    6db9:	44 89 d1             	mov    %r10d,%ecx
    6dbc:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    6dc3:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    6dca:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    6dd1:	e8 00 00 00 00       	call   6dd6 <chmodel_request+0x2c6>
		NVMEV_ASSERT(0);
    6dd6:	0f 0b                	ud2
