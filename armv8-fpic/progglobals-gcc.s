	.arch armv8-a
	.file	"progglobals.c"
	.text
	.global	global
	.bss
	.align	3
	.type	global, %object
	.size	global, 8
global:
	.zero	8
	.text
	.align	2
	.global	setglobal
	.type	setglobal, %function
setglobal:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w2, 10
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	strtol
	mov	x1, x0
	adrp	x0, :got:global
	ldr	x0, [x0, #:got_lo12:global]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	setglobal, .-setglobal
	.section	.rodata
	.align	3
.LC0:
	.string	"Global is: %ld\n"
	.text
	.align	2
	.global	printglobal
	.type	printglobal, %function
printglobal:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, :got:global
	ldr	x0, [x0, #:got_lo12:global]
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	printglobal, .-printglobal
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L4
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	setglobal
.L4:
	bl	printglobal
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
