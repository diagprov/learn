	.file	"powerpvr.c"
	.abiversion 2
	.section	.text.startup,"ax",@progbits
	.align 2
	.p2align 4,,15
	.globl main
	.type	main, @function
main:
.LCF0:
0:	addis 2,12,.TOC.-.LCF0@ha
	addi 2,2,.TOC.-.LCF0@l
	.localentry	main,.-main
	mflr 0
	std 0,16(1)
	stdu 1,-96(1)
#APP
 # 12 "powerpvr.c" 1
	mfspr 0, 0x11F
	mr   (4),0
 # 0 "" 2
#NO_APP
	addis 3,2,.LC0@toc@ha
	addi 3,3,.LC0@toc@l
	bl printf
	nop
	addi 1,1,96
	li 3,0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.size	main,.-main
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 3
.LC0:
	.string	"PVR: 0x%08x\n"
	.ident	"GCC: (GNU) 6.4.1 20170727 (Red Hat 6.4.1-1)"
	.section	.note.GNU-stack,"",@progbits
