	.file	"powerpvr-func.c"
	.abiversion 2
	.section	".text"
	.align 2
	.globl pvr
	.type	pvr, @function
pvr:
	std 31,-8(1)
	stdu 1,-64(1)
	mr 31,1
	li 9,0
	std 9,32(31)
#APP
 # 11 "powerpvr-func.c" 1
	mfspr 0, 0x11F
	mr   (9),0
 # 0 "" 2
#NO_APP
	std 9,32(31)
	ld 9,32(31)
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,64
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.size	pvr,.-pvr
	.section	.rodata
	.align 3
.LC0:
	.string	"PVR: 0x%08x\n"
	.section	".text"
	.align 2
	.globl main
	.type	main, @function
main:
.LCF1:
0:	addis 2,12,.TOC.-.LCF1@ha
	addi 2,2,.TOC.-.LCF1@l
	.localentry	main,.-main
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-144(1)
	mr 31,1
	mr 9,3
	std 4,120(31)
	stw 9,112(31)
	bl pvr
	mr 9,3
	stw 9,96(31)
	lwz 9,96(31)
	mr 4,9
	addis 3,2,.LC0@toc@ha
	addi 3,3,.LC0@toc@l
	bl printf
	nop
	li 9,0
	mr 3,9
	addi 1,31,144
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.size	main,.-main
	.ident	"GCC: (GNU) 6.4.1 20170727 (Red Hat 6.4.1-1)"
	.section	.note.GNU-stack,"",@progbits
