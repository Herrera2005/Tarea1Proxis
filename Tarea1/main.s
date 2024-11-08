	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Ingrese usuario: "
.LC1:
	.string	"%s"
.LC2:
	.string	"Ingrese clave: "
.LC3:
	.string	"Acceso exitoso."
.LC4:
	.string	"Ingreso exitoso al sistema"
.LC5:
	.string	"Que tal, que desea calcular."
	.align 8
.LC6:
	.string	"1. El \303\241rea y perimetro de una figura plana."
	.align 8
.LC7:
	.string	"2. El volumen y superficie de una figura."
.LC8:
	.string	"Cual opci\303\263n elige: "
.LC9:
	.string	"%d"
.LC10:
	.string	"Triangulo"
.LC11:
	.string	"Paralelogramo"
.LC12:
	.string	"Cuadrado"
.LC13:
	.string	"Regtangulo"
.LC14:
	.string	"Rombo"
.LC15:
	.string	"Trapecio"
.LC16:
	.string	"Circulo"
.LC17:
	.string	"Poligono Regular"
.LC18:
	.string	"Opci\303\263n no v\303\241lida."
.LC19:
	.string	"Cubo"
.LC20:
	.string	"Cuboide"
.LC21:
	.string	"Cilindro Recto"
.LC22:
	.string	"Esfera"
.LC23:
	.string	"Cono Circular Recto"
	.align 8
.LC24:
	.string	"Desea calcular otra figura(s/n): "
.LC25:
	.string	" %c"
.LC26:
	.string	"Salida del sistema"
.LC27:
	.string	"Has salido del bucle."
.LC28:
	.string	"Usuario o clave incorrectos."
	.align 8
.LC29:
	.string	"Ingreso fallido usuario/clave err\303\263neo"
	.align 8
.LC30:
	.string	"Desea intentar de nuevo (s/n): "
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-64(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validar_credenciales@PLT
	testl	%eax, %eax
	je	.L2
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
.L27:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-136(%rbp), %eax
	cmpl	$1, %eax
	je	.L3
	cmpl	$2, %eax
	je	.L4
	jmp	.L33
.L3:
	movl	$0, %eax
	call	seleccionarFiguraArea@PLT
	movl	%eax, -132(%rbp)
	cmpl	$8, -132(%rbp)
	ja	.L6
	movl	-132(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L8(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L8(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L6-.L8
	.long	.L15-.L8
	.long	.L14-.L8
	.long	.L13-.L8
	.long	.L12-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L9-.L8
	.long	.L7-.L8
	.text
.L15:
	movl	$0, %eax
	call	calcularTriangulo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L14:
	movl	$0, %eax
	call	calcularParalelogramo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L13:
	movl	$0, %eax
	call	calcularCuadrado@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L12:
	movl	$0, %eax
	call	calcularRegtangulo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L11:
	movl	$0, %eax
	call	calcularRombo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L10:
	movl	$0, %eax
	call	calcularTrapecio@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L9:
	movl	$0, %eax
	call	calcularCirculo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L7:
	movl	$0, %eax
	call	calcularPoligonoRegular@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L16
.L6:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L16:
	jmp	.L17
.L4:
	movl	$0, %eax
	call	seleccionarFiguraVolumen@PLT
	movl	%eax, -132(%rbp)
	cmpl	$5, -132(%rbp)
	ja	.L18
	movl	-132(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L20(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L20(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L20:
	.long	.L18-.L20
	.long	.L24-.L20
	.long	.L23-.L20
	.long	.L22-.L20
	.long	.L21-.L20
	.long	.L19-.L20
	.text
.L24:
	movl	$0, %eax
	call	calcularCubo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L25
.L23:
	movl	$0, %eax
	call	calcularCuboide@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L25
.L22:
	movl	$0, %eax
	call	calcularCilindroRecto@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L25
.L21:
	movl	$0, %eax
	call	calclarEsfera@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L25
.L19:
	movl	$0, %eax
	call	calcularConoCircularRecto@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L25
.L18:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L25:
	jmp	.L17
.L33:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L17:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-137(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-137(%rbp), %eax
	cmpb	$110, %al
	je	.L26
	movzbl	-137(%rbp), %eax
	cmpb	$78, %al
	jne	.L27
.L26:
	leaq	-128(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L28
.L2:
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-136(%rbp), %eax
	cmpb	$115, %al
	jne	.L29
	movl	$0, %eax
	call	main
	jmp	.L28
.L29:
	leaq	-128(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L28:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
