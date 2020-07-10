	.text
	.file	"progglobals.c"
	.globl	setglobal               // -- Begin function setglobal
	.p2align	2
	.type	setglobal,@function
setglobal:                              // @setglobal
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	mov	x8, xzr
	mov	w2, #10
	adrp	x9, :got:global
	ldr	x9, [x9, :got_lo12:global]
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	x1, x8
	str	x9, [sp]                // 8-byte Folded Spill
	bl	strtol
	ldr	x8, [sp]                // 8-byte Folded Reload
	str	x0, [x8]
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end0:
	.size	setglobal, .Lfunc_end0-setglobal
                                        // -- End function
	.globl	printglobal             // -- Begin function printglobal
	.p2align	2
	.type	printglobal,@function
printglobal:                            // @printglobal
// %bb.0:
	stp	x29, x30, [sp, #-16]!   // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, :got:global
	ldr	x8, [x8, :got_lo12:global]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	ldr	x1, [x8]
	bl	printf
	ldp	x29, x30, [sp], #16     // 16-byte Folded Reload
	ret
.Lfunc_end1:
	.size	printglobal, .Lfunc_end1-printglobal
                                        // -- End function
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	stur	wzr, [x29, #-4]
	str	w0, [sp, #8]
	str	x1, [sp]
	ldr	w8, [sp, #8]
	cmp	w8, #2                  // =2
	b.ne	.LBB2_2
// %bb.1:
	ldr	x8, [sp]
	ldr	x0, [x8, #8]
	bl	setglobal
.LBB2_2:
	bl	printglobal
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        // -- End function
	.type	global,@object          // @global
	.bss
	.globl	global
	.p2align	3
global:
	.xword	0                       // 0x0
	.size	global, 8

	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Global is: %ld\n"
	.size	.L.str, 16

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setglobal
	.addrsig_sym strtol
	.addrsig_sym printglobal
	.addrsig_sym printf
	.addrsig_sym global
