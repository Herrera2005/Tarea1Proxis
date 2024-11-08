	.file	"calculos.c"
	.text
	.section	.rodata
	.align 8
.LC2:
	.string	"El \303\241rea del tri\303\241ngulo es: %.2f\n"
	.align 8
.LC3:
	.string	"El per\303\255metro del tri\303\241ngulo es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_triangulo
	.type	calcular_area_perimetro_triangulo, @function
calcular_area_perimetro_triangulo:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-8(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	-4(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	calcular_area_perimetro_triangulo, .-calcular_area_perimetro_triangulo
	.section	.rodata
	.align 8
.LC4:
	.string	"El \303\241rea del paralelogramo es: %.2f\n"
	.align 8
.LC5:
	.string	"El per\303\255metro del paralelogramo es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_paralelogramo
	.type	calcular_area_perimetro_paralelogramo, @function
calcular_area_perimetro_paralelogramo:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-20(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm3, %xmm3
	cvtss2sd	-8(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	-4(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	calcular_area_perimetro_paralelogramo, .-calcular_area_perimetro_paralelogramo
	.section	.rodata
	.align 8
.LC7:
	.string	"El \303\241rea del cuadrado es: %.2f\n"
	.align 8
.LC8:
	.string	"El per\303\255metro del cuadrado es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_cuadrado
	.type	calcular_area_perimetro_cuadrado, @function
calcular_area_perimetro_cuadrado:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-8(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	-4(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	calcular_area_perimetro_cuadrado, .-calcular_area_perimetro_cuadrado
	.section	.rodata
	.align 8
.LC9:
	.string	"El \303\241rea del rect\303\241ngulo es: %.2f\n"
	.align 8
.LC10:
	.string	"El per\303\255metro del rect\303\241ngulo es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_rectangulo
	.type	calcular_area_perimetro_rectangulo, @function
calcular_area_perimetro_rectangulo:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-8(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	-4(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	calcular_area_perimetro_rectangulo, .-calcular_area_perimetro_rectangulo
	.section	.rodata
.LC12:
	.string	"El \303\241rea del rombo es: %.2f\n"
	.align 8
.LC13:
	.string	"El per\303\255metro del rombo es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_rombo
	.type	calcular_area_perimetro_rombo, @function
calcular_area_perimetro_rombo:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-20(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	%xmm0, -32(%rbp)
	movss	-24(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm2
	addsd	-32(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm6, %xmm6
	cvtss2sd	-12(%rbp), %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm7, %xmm7
	cvtss2sd	-4(%rbp), %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	calcular_area_perimetro_rombo, .-calcular_area_perimetro_rombo
	.section	.rodata
	.align 8
.LC14:
	.string	"El \303\241rea del trapecio es: %.2f\n"
	.align 8
.LC15:
	.string	"El per\303\255metro del trapecio es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_trapecio
	.type	calcular_area_perimetro_trapecio, @function
calcular_area_perimetro_trapecio:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm5, %xmm5
	cvtss2sd	-28(%rbp), %xmm5
	movq	%xmm5, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm3
	addsd	-40(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-24(%rbp), %xmm1
	movss	-8(%rbp), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm7, %xmm7
	cvtss2sd	-12(%rbp), %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	-4(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	calcular_area_perimetro_trapecio, .-calcular_area_perimetro_trapecio
	.section	.rodata
	.align 8
.LC18:
	.string	"El \303\241rea del c\303\255rculo es: %.2f\n"
	.align 8
.LC19:
	.string	"El per\303\255metro (circunferencia) del c\303\255rculo es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_circulo
	.type	calcular_area_perimetro_circulo, @function
calcular_area_perimetro_circulo:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-20(%rbp), %xmm1
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-20(%rbp), %xmm1
	movsd	.LC17(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-8(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	-4(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	calcular_area_perimetro_circulo, .-calcular_area_perimetro_circulo
	.section	.rodata
	.align 8
.LC20:
	.string	"El \303\241rea del pol\303\255gono regular es: %.2f\n"
	.align 8
.LC21:
	.string	"El per\303\255metro del pol\303\255gono regular es: %.2f\n"
	.text
	.globl	calcular_area_perimetro_poligono
	.type	calcular_area_perimetro_poligono, @function
calcular_area_perimetro_poligono:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-24(%rbp), %xmm2
	movsd	%xmm2, -32(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-20(%rbp), %xmm1
	movsd	.LC16(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	tan@PLT
	addsd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-12(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm3, %xmm3
	cvtss2sd	-4(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	-12(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	calcular_area_perimetro_poligono, .-calcular_area_perimetro_poligono
	.section	.rodata
	.align 8
.LC24:
	.string	"La superficie del cubo es: %.2f\n"
.LC25:
	.string	"El volumen del cubo es: %.2f\n"
	.text
	.globl	calcular_superficie_volumen_cubo
	.type	calcular_superficie_volumen_cubo, @function
calcular_superficie_volumen_cubo:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-20(%rbp), %xmm2
	movq	%xmm2, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	.LC22(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm3, %xmm3
	cvtss2sd	-20(%rbp), %xmm3
	movq	%xmm3, %rax
	movsd	.LC23(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm4, %xmm4
	cvtss2sd	-8(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm5, %xmm5
	cvtss2sd	-4(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	calcular_superficie_volumen_cubo, .-calcular_superficie_volumen_cubo
	.section	.rodata
	.align 8
.LC26:
	.string	"La superficie del cuboide es: %.2f\n"
	.align 8
.LC27:
	.string	"El volumen del cuboide es: %.2f\n"
	.text
	.globl	calcular_superficie_volumen_cuboide
	.type	calcular_superficie_volumen_cuboide, @function
calcular_superficie_volumen_cuboide:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	-24(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm3, %xmm3
	cvtss2sd	-8(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	-4(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	calcular_superficie_volumen_cuboide, .-calcular_superficie_volumen_cuboide
	.section	.rodata
	.align 8
.LC28:
	.string	"La superficie del cilindro es: %.2f\n"
	.align 8
.LC29:
	.string	"El volumen del cilindro es: %.2f\n"
	.text
	.globl	calcular_superficie_volumen_cilindro
	.type	calcular_superficie_volumen_cilindro, @function
calcular_superficie_volumen_cilindro:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-20(%rbp), %xmm1
	movsd	.LC17(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-20(%rbp), %xmm2
	movq	%xmm2, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	.LC16(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm3, %xmm3
	cvtss2sd	-8(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	-4(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	calcular_superficie_volumen_cilindro, .-calcular_superficie_volumen_cilindro
	.section	.rodata
	.align 8
.LC32:
	.string	"La superficie de la esfera es: %.2f\n"
	.align 8
.LC33:
	.string	"El volumen de la esfera es: %.2f\n"
	.text
	.globl	calcular_superficie_volumen_esfera
	.type	calcular_superficie_volumen_esfera, @function
calcular_superficie_volumen_esfera:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-20(%rbp), %xmm2
	movq	%xmm2, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	.LC30(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm3, %xmm3
	cvtss2sd	-20(%rbp), %xmm3
	movq	%xmm3, %rax
	movsd	.LC23(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	.LC31(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm4, %xmm4
	cvtss2sd	-8(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm5, %xmm5
	cvtss2sd	-4(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	calcular_superficie_volumen_esfera, .-calcular_superficie_volumen_esfera
	.section	.rodata
	.align 8
.LC34:
	.string	"La superficie del cono es: %.2f\n"
.LC35:
	.string	"El volumen del cono es: %.2f\n"
	.text
	.globl	calcular_superficie_volumen_cono
	.type	calcular_superficie_volumen_cono, @function
calcular_superficie_volumen_cono:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	pxor	%xmm3, %xmm3
	cvtss2sd	-20(%rbp), %xmm3
	movq	%xmm3, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm4, %xmm4
	cvtss2sd	-24(%rbp), %xmm4
	movq	%xmm4, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm2
	addsd	-32(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-20(%rbp), %xmm1
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm6, %xmm6
	cvtss2sd	-20(%rbp), %xmm6
	movq	%xmm6, %rax
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	.LC16(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC23(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm7, %xmm7
	cvtss2sd	-8(%rbp), %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	-4(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	calcular_superficie_volumen_cono, .-calcular_superficie_volumen_cono
	.section	.rodata
	.align 4
.LC0:
	.long	1073741824
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC6:
	.long	1082130432
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.align 8
.LC16:
	.long	1413754136
	.long	1074340347
	.align 8
.LC17:
	.long	1413754136
	.long	1075388923
	.align 8
.LC22:
	.long	0
	.long	1075314688
	.align 8
.LC23:
	.long	0
	.long	1074266112
	.align 8
.LC30:
	.long	1413754136
	.long	1076437499
	.align 8
.LC31:
	.long	942502757
	.long	1074839890
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
