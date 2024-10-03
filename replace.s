	.arch armv8-a
	.file	"replace.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"replace.c"
	.align	3
.LC1:
	.string	"pcLine != NULL"
	.align	3
.LC2:
	.string	"pcFrom != NULL"
	.align	3
.LC3:
	.string	"pcTo != NULL"
	.align	3
.LC4:
	.string	"%s"
	.text
	.align	2
	.type	replaceAndWrite, %function
replaceAndWrite:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 104]
	str	xzr, [sp, 96]
	ldr	x0, [sp, 24]
	bl	Str_getLength
	str	x0, [sp, 80]
	ldr	x0, [sp, 32]
	bl	Str_getLength
	str	x0, [sp, 72]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 104]
	bl	Str_search
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L2
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L2:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L3
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L3:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L4
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L4:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	beq	.L5
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L8
.L5:
	ldr	x1, [sp, 40]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	mov	x0, 0
	b	.L7
.L16:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 104]
	bl	Str_search
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L14
	str	xzr, [sp, 88]
	b	.L10
.L11:
	ldr	x0, [sp, 104]
	ldrb	w0, [x0]
	bl	putchar
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	str	x0, [sp, 104]
.L10:
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bne	.L11
	b	.L12
.L13:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	putchar
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L12:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	bcc	.L13
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 96]
	add	x0, x0, 1
	str	x0, [sp, 96]
	b	.L8
.L15:
	ldr	x0, [sp, 104]
	ldrb	w0, [x0]
	bl	putchar
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	str	x0, [sp, 104]
.L14:
	ldr	x0, [sp, 104]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L15
.L8:
	ldr	x0, [sp, 104]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L16
	ldr	x0, [sp, 96]
.L7:
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	replaceAndWrite, .-replaceAndWrite
	.section	.rodata
	.align	3
.LC5:
	.string	"usage: %s fromstring tostring\n"
	.align	3
.LC6:
	.string	"%lu replacements\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	mov	x12, 4160
	sub	sp, sp, x12
	.cfi_def_cfa_offset 4160
	stp	x29, x30, [sp]
	.cfi_offset 29, -4160
	.cfi_offset 30, -4152
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	str	xzr, [sp, 4152]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	beq	.L18
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	b	.L22
.L18:
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 8]
	str	x0, [sp, 4144]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 16]
	str	x0, [sp, 4136]
	b	.L20
.L21:
	add	x0, sp, 40
	ldr	x2, [sp, 4136]
	ldr	x1, [sp, 4144]
	bl	replaceAndWrite
	mov	x1, x0
	ldr	x0, [sp, 4152]
	add	x0, x0, x1
	str	x0, [sp, 4152]
.L20:
	adrp	x0, stdin
	add	x0, x0, :lo12:stdin
	ldr	x1, [x0]
	add	x0, sp, 40
	mov	x2, x1
	mov	w1, 4096
	bl	fgets
	cmp	x0, 0
	bne	.L21
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	x2, [sp, 4152]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x3
	bl	fprintf
	mov	w0, 0
.L22:
	ldp	x29, x30, [sp]
	mov	x12, 4160
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 16
__PRETTY_FUNCTION__.0:
	.string	"replaceAndWrite"
	.ident	"GCC: (GNU) 11.4.1 20231218 (Red Hat 11.4.1-3)"
	.section	.note.GNU-stack,"",@progbits
