	.file	"fftwtest.c"
	.text
	.section	.rodata
.LC3:
	.string	"freq: %3d %+9.5f %+9.5f I\n"
.LC4:
	.string	"\nInverse transform:"
	.align 8
.LC6:
	.string	"recover: %3d %+9.5f %+9.5f I vs. %+9.5f %+9.5f I\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$816, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -804(%rbp)
	jmp	.L2
.L3:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-804(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movl	-804(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$784, %rdx
	movq	%rax, (%rdx)
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -804(%rbp)
.L2:
	cmpl	$15, -804(%rbp)
	jle	.L3
	leaq	-528(%rbp), %rdx
	leaq	-784(%rbp), %rax
	movl	$64, %r8d
	movl	$-1, %ecx
	movq	%rax, %rsi
	movl	$16, %edi
	call	fftw_plan_dft_1d@PLT
	movq	%rax, -800(%rbp)
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
	call	fftw_execute@PLT
	movl	$0, -804(%rbp)
	jmp	.L4
.L5:
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$520, %rax
	movsd	(%rax), %xmm0
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$528, %rax
	movq	(%rax), %rdx
	movl	-804(%rbp), %eax
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	addl	$1, -804(%rbp)
.L4:
	cmpl	$15, -804(%rbp)
	jle	.L5
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
	call	fftw_destroy_plan@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-272(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movl	$64, %r8d
	movl	$1, %ecx
	movq	%rax, %rsi
	movl	$16, %edi
	call	fftw_plan_dft_1d@PLT
	movq	%rax, -792(%rbp)
	movq	-792(%rbp), %rax
	movq	%rax, %rdi
	call	fftw_execute@PLT
	movl	$0, -804(%rbp)
	jmp	.L6
.L7:
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$272, %rax
	movsd	(%rax), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$272, %rax
	movsd	%xmm0, (%rax)
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$264, %rax
	movsd	(%rax), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$264, %rax
	movsd	%xmm0, (%rax)
	addl	$1, -804(%rbp)
.L6:
	cmpl	$15, -804(%rbp)
	jle	.L7
	movl	$0, -804(%rbp)
	jmp	.L8
.L9:
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$264, %rax
	movsd	(%rax), %xmm2
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$272, %rax
	movsd	(%rax), %xmm1
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movsd	(%rax), %xmm0
	movl	-804(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movq	(%rax), %rdx
	movl	-804(%rbp), %eax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$4, %eax
	call	printf@PLT
	addl	$1, -804(%rbp)
.L8:
	cmpl	$15, -804(%rbp)
	jle	.L9
	movq	-792(%rbp), %rax
	movq	%rax, %rdi
	call	fftw_destroy_plan@PLT
	call	fftw_cleanup@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	2134057426
	.long	1077074300
	.align 8
.LC1:
	.long	0
	.long	1076887552
	.align 8
.LC5:
	.long	0
	.long	1068498944
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
