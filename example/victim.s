
victim.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000000528 <_init>:
 528:	48 83 ec 08          	sub    $0x8,%rsp
 52c:	48 8b 05 b5 0a 20 00 	mov    0x200ab5(%rip),%rax        # 200fe8 <__gmon_start__>
 533:	48 85 c0             	test   %rax,%rax
 536:	74 02                	je     53a <_init+0x12>
 538:	ff d0                	callq  *%rax
 53a:	48 83 c4 08          	add    $0x8,%rsp
 53e:	c3                   	retq   

Disassembly of section .plt:

0000000000000540 <.plt>:
 540:	ff 35 72 0a 20 00    	pushq  0x200a72(%rip)        # 200fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
 546:	ff 25 74 0a 20 00    	jmpq   *0x200a74(%rip)        # 200fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
 54c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000550 <printf@plt>:
 550:	ff 25 72 0a 20 00    	jmpq   *0x200a72(%rip)        # 200fc8 <printf@GLIBC_2.2.5>
 556:	68 00 00 00 00       	pushq  $0x0
 55b:	e9 e0 ff ff ff       	jmpq   540 <.plt>

0000000000000560 <getchar@plt>:
 560:	ff 25 6a 0a 20 00    	jmpq   *0x200a6a(%rip)        # 200fd0 <getchar@GLIBC_2.2.5>
 566:	68 01 00 00 00       	pushq  $0x1
 56b:	e9 d0 ff ff ff       	jmpq   540 <.plt>

Disassembly of section .plt.got:

0000000000000570 <__cxa_finalize@plt>:
 570:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 576:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000580 <_start>:
 580:	31 ed                	xor    %ebp,%ebp
 582:	49 89 d1             	mov    %rdx,%r9
 585:	5e                   	pop    %rsi
 586:	48 89 e2             	mov    %rsp,%rdx
 589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 58d:	50                   	push   %rax
 58e:	54                   	push   %rsp
 58f:	4c 8d 05 5a 02 00 00 	lea    0x25a(%rip),%r8        # 7f0 <__libc_csu_fini>
 596:	48 8d 0d e3 01 00 00 	lea    0x1e3(%rip),%rcx        # 780 <__libc_csu_init>
 59d:	48 8d 3d 24 01 00 00 	lea    0x124(%rip),%rdi        # 6c8 <main>
 5a4:	ff 15 36 0a 20 00    	callq  *0x200a36(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 5aa:	f4                   	hlt    
 5ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000005b0 <deregister_tm_clones>:
 5b0:	48 8d 3d 59 0a 20 00 	lea    0x200a59(%rip),%rdi        # 201010 <__TMC_END__>
 5b7:	55                   	push   %rbp
 5b8:	48 8d 05 51 0a 20 00 	lea    0x200a51(%rip),%rax        # 201010 <__TMC_END__>
 5bf:	48 39 f8             	cmp    %rdi,%rax
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	74 19                	je     5e0 <deregister_tm_clones+0x30>
 5c7:	48 8b 05 0a 0a 20 00 	mov    0x200a0a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 5ce:	48 85 c0             	test   %rax,%rax
 5d1:	74 0d                	je     5e0 <deregister_tm_clones+0x30>
 5d3:	5d                   	pop    %rbp
 5d4:	ff e0                	jmpq   *%rax
 5d6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5e0:	5d                   	pop    %rbp
 5e1:	c3                   	retq   
 5e2:	0f 1f 40 00          	nopl   0x0(%rax)
 5e6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw   %cs:0x0(%rax,%rax,1)

00000000000005f0 <register_tm_clones>:
 5f0:	48 8d 3d 19 0a 20 00 	lea    0x200a19(%rip),%rdi        # 201010 <__TMC_END__>
 5f7:	48 8d 35 12 0a 20 00 	lea    0x200a12(%rip),%rsi        # 201010 <__TMC_END__>
 5fe:	55                   	push   %rbp
 5ff:	48 29 fe             	sub    %rdi,%rsi
 602:	48 89 e5             	mov    %rsp,%rbp
 605:	48 c1 fe 03          	sar    $0x3,%rsi
 609:	48 89 f0             	mov    %rsi,%rax
 60c:	48 c1 e8 3f          	shr    $0x3f,%rax
 610:	48 01 c6             	add    %rax,%rsi
 613:	48 d1 fe             	sar    %rsi
 616:	74 18                	je     630 <register_tm_clones+0x40>
 618:	48 8b 05 d1 09 20 00 	mov    0x2009d1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 61f:	48 85 c0             	test   %rax,%rax
 622:	74 0c                	je     630 <register_tm_clones+0x40>
 624:	5d                   	pop    %rbp
 625:	ff e0                	jmpq   *%rax
 627:	66 0f 1f 84 00 00 00 00 00 	nopw   0x0(%rax,%rax,1)
 630:	5d                   	pop    %rbp
 631:	c3                   	retq   
 632:	0f 1f 40 00          	nopl   0x0(%rax)
 636:	66 2e 0f 1f 84 00 00 00 00 00 	nopw   %cs:0x0(%rax,%rax,1)

0000000000000640 <__do_global_dtors_aux>:
 640:	80 3d d9 09 20 00 00 	cmpb   $0x0,0x2009d9(%rip)        # 201020 <completed.7698>
 647:	75 2f                	jne    678 <__do_global_dtors_aux+0x38>
 649:	48 83 3d a7 09 20 00 00 	cmpq   $0x0,0x2009a7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 651:	55                   	push   %rbp
 652:	48 89 e5             	mov    %rsp,%rbp
 655:	74 0c                	je     663 <__do_global_dtors_aux+0x23>
 657:	48 8b 3d aa 09 20 00 	mov    0x2009aa(%rip),%rdi        # 201008 <__dso_handle>
 65e:	e8 0d ff ff ff       	callq  570 <__cxa_finalize@plt>
 663:	e8 48 ff ff ff       	callq  5b0 <deregister_tm_clones>
 668:	c6 05 b1 09 20 00 01 	movb   $0x1,0x2009b1(%rip)        # 201020 <completed.7698>
 66f:	5d                   	pop    %rbp
 670:	c3                   	retq   
 671:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 678:	f3 c3                	repz retq 
 67a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000680 <frame_dummy>:
 680:	55                   	push   %rbp
 681:	48 89 e5             	mov    %rsp,%rbp
 684:	5d                   	pop    %rbp
 685:	e9 66 ff ff ff       	jmpq   5f0 <register_tm_clones>

000000000000068a <get_secret>:
 68a:	55                   	push   %rbp
 68b:	48 89 e5             	mov    %rsp,%rbp
 68e:	89 7d fc             	mov    %edi,-0x4(%rbp)
 691:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
 696:	48 8b 05 a3 09 20 00 	mov    0x2009a3(%rip),%rax        # 201040 <count>
 69d:	48 83 c0 01          	add    $0x1,%rax
 6a1:	48 89 05 98 09 20 00 	mov    %rax,0x200998(%rip)        # 201040 <count>
 6a8:	8b 45 fc             	mov    -0x4(%rbp),%eax
 6ab:	48 98                	cltq   
 6ad:	48 8d 14 85 00 00 00 00 	lea    0x0(,%rax,4),%rdx
 6b5:	48 8d 05 a4 09 20 00 	lea    0x2009a4(%rip),%rax        # 201060 <secrets>
 6bc:	f3 0f 10 04 02       	movss  (%rdx,%rax,1),%xmm0
 6c1:	f3 0f 5e 45 f8       	divss  -0x8(%rbp),%xmm0
 6c6:	5d                   	pop    %rbp
 6c7:	c3                   	retq   

00000000000006c8 <main>:
 6c8:	55                   	push   %rbp
 6c9:	48 89 e5             	mov    %rsp,%rbp
 6cc:	48 83 ec 10          	sub    $0x10,%rsp
 6d0:	48 c7 05 65 09 20 00 00 00 00 00 	movq   $0x0,0x200965(%rip)        # 201040 <count>
 6db:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
 6e2:	eb 25                	jmp    709 <main+0x41>
 6e4:	8b 45 f8             	mov    -0x8(%rbp),%eax
 6e7:	48 98                	cltq   
 6e9:	48 8d 14 85 00 00 00 00 	lea    0x0(,%rax,4),%rdx
 6f1:	48 8d 05 68 09 20 00 	lea    0x200968(%rip),%rax        # 201060 <secrets>
 6f8:	f3 0f 10 05 60 01 00 00 	movss  0x160(%rip),%xmm0        # 860 <_IO_stdin_used+0x60>
 700:	f3 0f 11 04 02       	movss  %xmm0,(%rdx,%rax,1)
 705:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
 709:	81 7d f8 ff 01 00 00 	cmpl   $0x1ff,-0x8(%rbp)
 710:	7e d2                	jle    6e4 <main+0x1c>
 712:	48 8d 05 27 09 20 00 	lea    0x200927(%rip),%rax        # 201040 <count>
 719:	48 89 c6             	mov    %rax,%rsi
 71c:	48 8d 3d e5 00 00 00 	lea    0xe5(%rip),%rdi        # 808 <_IO_stdin_used+0x8>
 723:	b8 00 00 00 00       	mov    $0x0,%eax
 728:	e8 23 fe ff ff       	callq  550 <printf@plt>
 72d:	48 8d 3d f4 00 00 00 	lea    0xf4(%rip),%rdi        # 828 <_IO_stdin_used+0x28>
 734:	b8 00 00 00 00       	mov    $0x0,%eax
 739:	e8 12 fe ff ff       	callq  550 <printf@plt>
 73e:	e8 1d fe ff ff       	callq  560 <getchar@plt>
 743:	f3 0f 10 05 19 01 00 00 	movss  0x119(%rip),%xmm0        # 864 <_IO_stdin_used+0x64>
 74b:	bf 00 00 00 00       	mov    $0x0,%edi
 750:	e8 35 ff ff ff       	callq  68a <get_secret>
 755:	66 0f 7e c0          	movd   %xmm0,%eax
 759:	89 45 fc             	mov    %eax,-0x4(%rbp)
 75c:	f3 0f 5a 45 fc       	cvtss2sd -0x4(%rbp),%xmm0
 761:	48 8d 3d e5 00 00 00 	lea    0xe5(%rip),%rdi        # 84d <_IO_stdin_used+0x4d>
 768:	b8 01 00 00 00       	mov    $0x1,%eax
 76d:	e8 de fd ff ff       	callq  550 <printf@plt>
 772:	b8 00 00 00 00       	mov    $0x0,%eax
 777:	c9                   	leaveq 
 778:	c3                   	retq   
 779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000780 <__libc_csu_init>:
 780:	41 57                	push   %r15
 782:	41 56                	push   %r14
 784:	49 89 d7             	mov    %rdx,%r15
 787:	41 55                	push   %r13
 789:	41 54                	push   %r12
 78b:	4c 8d 25 1e 06 20 00 	lea    0x20061e(%rip),%r12        # 200db0 <__frame_dummy_init_array_entry>
 792:	55                   	push   %rbp
 793:	48 8d 2d 1e 06 20 00 	lea    0x20061e(%rip),%rbp        # 200db8 <__init_array_end>
 79a:	53                   	push   %rbx
 79b:	41 89 fd             	mov    %edi,%r13d
 79e:	49 89 f6             	mov    %rsi,%r14
 7a1:	4c 29 e5             	sub    %r12,%rbp
 7a4:	48 83 ec 08          	sub    $0x8,%rsp
 7a8:	48 c1 fd 03          	sar    $0x3,%rbp
 7ac:	e8 77 fd ff ff       	callq  528 <_init>
 7b1:	48 85 ed             	test   %rbp,%rbp
 7b4:	74 20                	je     7d6 <__libc_csu_init+0x56>
 7b6:	31 db                	xor    %ebx,%ebx
 7b8:	0f 1f 84 00 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 7c0:	4c 89 fa             	mov    %r15,%rdx
 7c3:	4c 89 f6             	mov    %r14,%rsi
 7c6:	44 89 ef             	mov    %r13d,%edi
 7c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 7cd:	48 83 c3 01          	add    $0x1,%rbx
 7d1:	48 39 dd             	cmp    %rbx,%rbp
 7d4:	75 ea                	jne    7c0 <__libc_csu_init+0x40>
 7d6:	48 83 c4 08          	add    $0x8,%rsp
 7da:	5b                   	pop    %rbx
 7db:	5d                   	pop    %rbp
 7dc:	41 5c                	pop    %r12
 7de:	41 5d                	pop    %r13
 7e0:	41 5e                	pop    %r14
 7e2:	41 5f                	pop    %r15
 7e4:	c3                   	retq   
 7e5:	90                   	nop
 7e6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw   %cs:0x0(%rax,%rax,1)

00000000000007f0 <__libc_csu_fini>:
 7f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000007f4 <_fini>:
 7f4:	48 83 ec 08          	sub    $0x8,%rsp
 7f8:	48 83 c4 08          	add    $0x8,%rsp
 7fc:	c3                   	retq   
