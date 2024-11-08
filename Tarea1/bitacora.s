	.file	"bitacora.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"usuarios.txt"
.LC2:
	.string	"No se pudo abrir usuarios.txt"
.LC3:
	.string	":"
.LC4:
	.string	"\n"
	.text
	.globl	validar_credenciales
	.type	validar_credenciales, @function
validar_credenciales:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$0, %eax
	jmp	.L8
.L2:
	movl	$0, -300(%rbp)
	jmp	.L4
.L7:
	leaq	-272(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -288(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -280(%rbp)
	movq	-288(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-280(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$1, -300(%rbp)
	jmp	.L6
.L4:
	movq	-296(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L7
.L6:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-300(%rbp), %eax
.L8:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	validar_credenciales, .-validar_credenciales
	.section	.rodata
.LC5:
	.string	"a"
.LC6:
	.string	"bitacora.txt"
.LC7:
	.string	"No se pudo abrir bitacora.txt"
.LC8:
	.string	"%04d/%02d/%02d: %s - %s\n"
	.text
	.globl	guardar_bitacora
	.type	guardar_bitacora, @function
guardar_bitacora:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L11
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	jmp	.L10
.L11:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-68(%rbp), %esi
	movl	-64(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-60(%rbp), %eax
	leal	1900(%rax), %edx
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	-112(%rbp)
	movq	%rdi, %r9
	movl	%esi, %r8d
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L10:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	guardar_bitacora, .-guardar_bitacora
	.ident	"GCC: (Ubuntu 14.2.0-4ubuntu2) 14.2.0"
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
