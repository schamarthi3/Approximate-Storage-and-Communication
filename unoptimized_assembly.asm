
approximate:     file format elf64-x86-64


Disassembly of section .init:

0000000000400450 <_init>:
  400450:	48 83 ec 08          	sub    $0x8,%rsp
  400454:	48 8b 05 9d 0b 20 00 	mov    0x200b9d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40045b:	48 85 c0             	test   %rax,%rax
  40045e:	74 05                	je     400465 <_init+0x15>
  400460:	e8 4b 00 00 00       	callq  4004b0 <__gmon_start__@plt>
  400465:	48 83 c4 08          	add    $0x8,%rsp
  400469:	c3                   	retq   

Disassembly of section .plt:

0000000000400470 <free@plt-0x10>:
  400470:	ff 35 92 0b 20 00    	pushq  0x200b92(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400476:	ff 25 94 0b 20 00    	jmpq   *0x200b94(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40047c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400480 <free@plt>:
  400480:	ff 25 92 0b 20 00    	jmpq   *0x200b92(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400486:	68 00 00 00 00       	pushq  $0x0
  40048b:	e9 e0 ff ff ff       	jmpq   400470 <_init+0x20>

0000000000400490 <puts@plt>:
  400490:	ff 25 8a 0b 20 00    	jmpq   *0x200b8a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400496:	68 01 00 00 00       	pushq  $0x1
  40049b:	e9 d0 ff ff ff       	jmpq   400470 <_init+0x20>

00000000004004a0 <__libc_start_main@plt>:
  4004a0:	ff 25 82 0b 20 00    	jmpq   *0x200b82(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004a6:	68 02 00 00 00       	pushq  $0x2
  4004ab:	e9 c0 ff ff ff       	jmpq   400470 <_init+0x20>

00000000004004b0 <__gmon_start__@plt>:
  4004b0:	ff 25 7a 0b 20 00    	jmpq   *0x200b7a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004b6:	68 03 00 00 00       	pushq  $0x3
  4004bb:	e9 b0 ff ff ff       	jmpq   400470 <_init+0x20>

00000000004004c0 <malloc@plt>:
  4004c0:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004c6:	68 04 00 00 00       	pushq  $0x4
  4004cb:	e9 a0 ff ff ff       	jmpq   400470 <_init+0x20>

Disassembly of section .text:

00000000004004d0 <_start>:
  4004d0:	31 ed                	xor    %ebp,%ebp
  4004d2:	49 89 d1             	mov    %rdx,%r9
  4004d5:	5e                   	pop    %rsi
  4004d6:	48 89 e2             	mov    %rsp,%rdx
  4004d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004dd:	50                   	push   %rax
  4004de:	54                   	push   %rsp
  4004df:	49 c7 c0 b0 06 40 00 	mov    $0x4006b0,%r8
  4004e6:	48 c7 c1 40 06 40 00 	mov    $0x400640,%rcx
  4004ed:	48 c7 c7 fc 05 40 00 	mov    $0x4005fc,%rdi
  4004f4:	e8 a7 ff ff ff       	callq  4004a0 <__libc_start_main@plt>
  4004f9:	f4                   	hlt    
  4004fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400500 <deregister_tm_clones>:
  400500:	b8 57 10 60 00       	mov    $0x601057,%eax
  400505:	55                   	push   %rbp
  400506:	48 2d 50 10 60 00    	sub    $0x601050,%rax
  40050c:	48 83 f8 0e          	cmp    $0xe,%rax
  400510:	48 89 e5             	mov    %rsp,%rbp
  400513:	76 1b                	jbe    400530 <deregister_tm_clones+0x30>
  400515:	b8 00 00 00 00       	mov    $0x0,%eax
  40051a:	48 85 c0             	test   %rax,%rax
  40051d:	74 11                	je     400530 <deregister_tm_clones+0x30>
  40051f:	5d                   	pop    %rbp
  400520:	bf 50 10 60 00       	mov    $0x601050,%edi
  400525:	ff e0                	jmpq   *%rax
  400527:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40052e:	00 00 
  400530:	5d                   	pop    %rbp
  400531:	c3                   	retq   
  400532:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400539:	1f 84 00 00 00 00 00 

0000000000400540 <register_tm_clones>:
  400540:	be 50 10 60 00       	mov    $0x601050,%esi
  400545:	55                   	push   %rbp
  400546:	48 81 ee 50 10 60 00 	sub    $0x601050,%rsi
  40054d:	48 c1 fe 03          	sar    $0x3,%rsi
  400551:	48 89 e5             	mov    %rsp,%rbp
  400554:	48 89 f0             	mov    %rsi,%rax
  400557:	48 c1 e8 3f          	shr    $0x3f,%rax
  40055b:	48 01 c6             	add    %rax,%rsi
  40055e:	48 d1 fe             	sar    %rsi
  400561:	74 15                	je     400578 <register_tm_clones+0x38>
  400563:	b8 00 00 00 00       	mov    $0x0,%eax
  400568:	48 85 c0             	test   %rax,%rax
  40056b:	74 0b                	je     400578 <register_tm_clones+0x38>
  40056d:	5d                   	pop    %rbp
  40056e:	bf 50 10 60 00       	mov    $0x601050,%edi
  400573:	ff e0                	jmpq   *%rax
  400575:	0f 1f 00             	nopl   (%rax)
  400578:	5d                   	pop    %rbp
  400579:	c3                   	retq   
  40057a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400580 <__do_global_dtors_aux>:
  400580:	80 3d c9 0a 20 00 00 	cmpb   $0x0,0x200ac9(%rip)        # 601050 <__TMC_END__>
  400587:	75 11                	jne    40059a <__do_global_dtors_aux+0x1a>
  400589:	55                   	push   %rbp
  40058a:	48 89 e5             	mov    %rsp,%rbp
  40058d:	e8 6e ff ff ff       	callq  400500 <deregister_tm_clones>
  400592:	5d                   	pop    %rbp
  400593:	c6 05 b6 0a 20 00 01 	movb   $0x1,0x200ab6(%rip)        # 601050 <__TMC_END__>
  40059a:	f3 c3                	repz retq 
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <frame_dummy>:
  4005a0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005a5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005a9:	75 05                	jne    4005b0 <frame_dummy+0x10>
  4005ab:	eb 93                	jmp    400540 <register_tm_clones>
  4005ad:	0f 1f 00             	nopl   (%rax)
  4005b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b5:	48 85 c0             	test   %rax,%rax
  4005b8:	74 f1                	je     4005ab <frame_dummy+0xb>
  4005ba:	55                   	push   %rbp
  4005bb:	48 89 e5             	mov    %rsp,%rbp
  4005be:	ff d0                	callq  *%rax
  4005c0:	5d                   	pop    %rbp
  4005c1:	e9 7a ff ff ff       	jmpq   400540 <register_tm_clones>

00000000004005c6 <approx_malloc>:
  4005c6:	55                   	push   %rbp
  4005c7:	48 89 e5             	mov    %rsp,%rbp
  4005ca:	48 83 ec 10          	sub    $0x10,%rsp
  4005ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4005d2:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4005d5:	bf 08 00 00 00       	mov    $0x8,%edi
  4005da:	e8 e1 fe ff ff       	callq  4004c0 <malloc@plt>
  4005df:	c9                   	leaveq 
  4005e0:	c3                   	retq   

00000000004005e1 <approx_free>:
  4005e1:	55                   	push   %rbp
  4005e2:	48 89 e5             	mov    %rsp,%rbp
  4005e5:	48 83 ec 10          	sub    $0x10,%rsp
  4005e9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4005ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4005f1:	48 89 c7             	mov    %rax,%rdi
  4005f4:	e8 87 fe ff ff       	callq  400480 <free@plt>
  4005f9:	90                   	nop
  4005fa:	c9                   	leaveq 
  4005fb:	c3                   	retq   

00000000004005fc <main>:
  4005fc:	55                   	push   %rbp
  4005fd:	48 89 e5             	mov    %rsp,%rbp
  400600:	48 83 ec 10          	sub    $0x10,%rsp
  400604:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40060b:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40060e:	83 c0 01             	add    $0x1,%eax
  400611:	48 98                	cltq   
  400613:	be 96 00 00 00       	mov    $0x96,%esi
  400618:	48 89 c7             	mov    %rax,%rdi
  40061b:	e8 a6 ff ff ff       	callq  4005c6 <approx_malloc>
  400620:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400624:	bf c4 06 40 00       	mov    $0x4006c4,%edi
  400629:	e8 62 fe ff ff       	callq  400490 <puts@plt>
  40062e:	90                   	nop
  40062f:	c9                   	leaveq 
  400630:	c3                   	retq   
  400631:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400638:	00 00 00 
  40063b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400640 <__libc_csu_init>:
  400640:	41 57                	push   %r15
  400642:	41 89 ff             	mov    %edi,%r15d
  400645:	41 56                	push   %r14
  400647:	49 89 f6             	mov    %rsi,%r14
  40064a:	41 55                	push   %r13
  40064c:	49 89 d5             	mov    %rdx,%r13
  40064f:	41 54                	push   %r12
  400651:	4c 8d 25 b8 07 20 00 	lea    0x2007b8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400658:	55                   	push   %rbp
  400659:	48 8d 2d b8 07 20 00 	lea    0x2007b8(%rip),%rbp        # 600e18 <__init_array_end>
  400660:	53                   	push   %rbx
  400661:	4c 29 e5             	sub    %r12,%rbp
  400664:	31 db                	xor    %ebx,%ebx
  400666:	48 c1 fd 03          	sar    $0x3,%rbp
  40066a:	48 83 ec 08          	sub    $0x8,%rsp
  40066e:	e8 dd fd ff ff       	callq  400450 <_init>
  400673:	48 85 ed             	test   %rbp,%rbp
  400676:	74 1e                	je     400696 <__libc_csu_init+0x56>
  400678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40067f:	00 
  400680:	4c 89 ea             	mov    %r13,%rdx
  400683:	4c 89 f6             	mov    %r14,%rsi
  400686:	44 89 ff             	mov    %r15d,%edi
  400689:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40068d:	48 83 c3 01          	add    $0x1,%rbx
  400691:	48 39 eb             	cmp    %rbp,%rbx
  400694:	75 ea                	jne    400680 <__libc_csu_init+0x40>
  400696:	48 83 c4 08          	add    $0x8,%rsp
  40069a:	5b                   	pop    %rbx
  40069b:	5d                   	pop    %rbp
  40069c:	41 5c                	pop    %r12
  40069e:	41 5d                	pop    %r13
  4006a0:	41 5e                	pop    %r14
  4006a2:	41 5f                	pop    %r15
  4006a4:	c3                   	retq   
  4006a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4006ac:	00 00 00 00 

00000000004006b0 <__libc_csu_fini>:
  4006b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004006b4 <_fini>:
  4006b4:	48 83 ec 08          	sub    $0x8,%rsp
  4006b8:	48 83 c4 08          	add    $0x8,%rsp
  4006bc:	c3                   	retq   
