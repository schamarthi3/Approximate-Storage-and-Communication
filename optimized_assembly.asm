
a.out:     file format elf64-x86-64


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

00000000004004d0 <main>:
  4004d0:	48 83 ec 08          	sub    $0x8,%rsp
  4004d4:	bf 01 00 00 00       	mov    $0x1,%edi
  4004d9:	be 96 00 00 00       	mov    $0x96,%esi
  4004de:	e8 0d 01 00 00       	callq  4005f0 <approx_malloc>
  4004e3:	bf 94 06 40 00       	mov    $0x400694,%edi
  4004e8:	48 83 c4 08          	add    $0x8,%rsp
  4004ec:	e9 9f ff ff ff       	jmpq   400490 <puts@plt>

00000000004004f1 <_start>:
  4004f1:	31 ed                	xor    %ebp,%ebp
  4004f3:	49 89 d1             	mov    %rdx,%r9
  4004f6:	5e                   	pop    %rsi
  4004f7:	48 89 e2             	mov    %rsp,%rdx
  4004fa:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004fe:	50                   	push   %rax
  4004ff:	54                   	push   %rsp
  400500:	49 c7 c0 80 06 40 00 	mov    $0x400680,%r8
  400507:	48 c7 c1 10 06 40 00 	mov    $0x400610,%rcx
  40050e:	48 c7 c7 d0 04 40 00 	mov    $0x4004d0,%rdi
  400515:	e8 86 ff ff ff       	callq  4004a0 <__libc_start_main@plt>
  40051a:	f4                   	hlt    
  40051b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400520 <deregister_tm_clones>:
  400520:	b8 57 10 60 00       	mov    $0x601057,%eax
  400525:	55                   	push   %rbp
  400526:	48 2d 50 10 60 00    	sub    $0x601050,%rax
  40052c:	48 83 f8 0e          	cmp    $0xe,%rax
  400530:	48 89 e5             	mov    %rsp,%rbp
  400533:	76 1b                	jbe    400550 <deregister_tm_clones+0x30>
  400535:	b8 00 00 00 00       	mov    $0x0,%eax
  40053a:	48 85 c0             	test   %rax,%rax
  40053d:	74 11                	je     400550 <deregister_tm_clones+0x30>
  40053f:	5d                   	pop    %rbp
  400540:	bf 50 10 60 00       	mov    $0x601050,%edi
  400545:	ff e0                	jmpq   *%rax
  400547:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40054e:	00 00 
  400550:	5d                   	pop    %rbp
  400551:	c3                   	retq   
  400552:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400559:	1f 84 00 00 00 00 00 

0000000000400560 <register_tm_clones>:
  400560:	be 50 10 60 00       	mov    $0x601050,%esi
  400565:	55                   	push   %rbp
  400566:	48 81 ee 50 10 60 00 	sub    $0x601050,%rsi
  40056d:	48 c1 fe 03          	sar    $0x3,%rsi
  400571:	48 89 e5             	mov    %rsp,%rbp
  400574:	48 89 f0             	mov    %rsi,%rax
  400577:	48 c1 e8 3f          	shr    $0x3f,%rax
  40057b:	48 01 c6             	add    %rax,%rsi
  40057e:	48 d1 fe             	sar    %rsi
  400581:	74 15                	je     400598 <register_tm_clones+0x38>
  400583:	b8 00 00 00 00       	mov    $0x0,%eax
  400588:	48 85 c0             	test   %rax,%rax
  40058b:	74 0b                	je     400598 <register_tm_clones+0x38>
  40058d:	5d                   	pop    %rbp
  40058e:	bf 50 10 60 00       	mov    $0x601050,%edi
  400593:	ff e0                	jmpq   *%rax
  400595:	0f 1f 00             	nopl   (%rax)
  400598:	5d                   	pop    %rbp
  400599:	c3                   	retq   
  40059a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005a0 <__do_global_dtors_aux>:
  4005a0:	80 3d a9 0a 20 00 00 	cmpb   $0x0,0x200aa9(%rip)        # 601050 <__TMC_END__>
  4005a7:	75 11                	jne    4005ba <__do_global_dtors_aux+0x1a>
  4005a9:	55                   	push   %rbp
  4005aa:	48 89 e5             	mov    %rsp,%rbp
  4005ad:	e8 6e ff ff ff       	callq  400520 <deregister_tm_clones>
  4005b2:	5d                   	pop    %rbp
  4005b3:	c6 05 96 0a 20 00 01 	movb   $0x1,0x200a96(%rip)        # 601050 <__TMC_END__>
  4005ba:	f3 c3                	repz retq 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <frame_dummy>:
  4005c0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005c5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005c9:	75 05                	jne    4005d0 <frame_dummy+0x10>
  4005cb:	eb 93                	jmp    400560 <register_tm_clones>
  4005cd:	0f 1f 00             	nopl   (%rax)
  4005d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d5:	48 85 c0             	test   %rax,%rax
  4005d8:	74 f1                	je     4005cb <frame_dummy+0xb>
  4005da:	55                   	push   %rbp
  4005db:	48 89 e5             	mov    %rsp,%rbp
  4005de:	ff d0                	callq  *%rax
  4005e0:	5d                   	pop    %rbp
  4005e1:	e9 7a ff ff ff       	jmpq   400560 <register_tm_clones>
  4005e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ed:	00 00 00 

00000000004005f0 <approx_malloc>:
  4005f0:	bf 08 00 00 00       	mov    $0x8,%edi
  4005f5:	e9 c6 fe ff ff       	jmpq   4004c0 <malloc@plt>
  4005fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400600 <approx_free>:
  400600:	e9 7b fe ff ff       	jmpq   400480 <free@plt>
  400605:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40060c:	00 00 00 
  40060f:	90                   	nop

0000000000400610 <__libc_csu_init>:
  400610:	41 57                	push   %r15
  400612:	41 89 ff             	mov    %edi,%r15d
  400615:	41 56                	push   %r14
  400617:	49 89 f6             	mov    %rsi,%r14
  40061a:	41 55                	push   %r13
  40061c:	49 89 d5             	mov    %rdx,%r13
  40061f:	41 54                	push   %r12
  400621:	4c 8d 25 e8 07 20 00 	lea    0x2007e8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400628:	55                   	push   %rbp
  400629:	48 8d 2d e8 07 20 00 	lea    0x2007e8(%rip),%rbp        # 600e18 <__init_array_end>
  400630:	53                   	push   %rbx
  400631:	4c 29 e5             	sub    %r12,%rbp
  400634:	31 db                	xor    %ebx,%ebx
  400636:	48 c1 fd 03          	sar    $0x3,%rbp
  40063a:	48 83 ec 08          	sub    $0x8,%rsp
  40063e:	e8 0d fe ff ff       	callq  400450 <_init>
  400643:	48 85 ed             	test   %rbp,%rbp
  400646:	74 1e                	je     400666 <__libc_csu_init+0x56>
  400648:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40064f:	00 
  400650:	4c 89 ea             	mov    %r13,%rdx
  400653:	4c 89 f6             	mov    %r14,%rsi
  400656:	44 89 ff             	mov    %r15d,%edi
  400659:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40065d:	48 83 c3 01          	add    $0x1,%rbx
  400661:	48 39 eb             	cmp    %rbp,%rbx
  400664:	75 ea                	jne    400650 <__libc_csu_init+0x40>
  400666:	48 83 c4 08          	add    $0x8,%rsp
  40066a:	5b                   	pop    %rbx
  40066b:	5d                   	pop    %rbp
  40066c:	41 5c                	pop    %r12
  40066e:	41 5d                	pop    %r13
  400670:	41 5e                	pop    %r14
  400672:	41 5f                	pop    %r15
  400674:	c3                   	retq   
  400675:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40067c:	00 00 00 00 

0000000000400680 <__libc_csu_fini>:
  400680:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400684 <_fini>:
  400684:	48 83 ec 08          	sub    $0x8,%rsp
  400688:	48 83 c4 08          	add    $0x8,%rsp
  40068c:	c3                   	retq   
