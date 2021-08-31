# Compile with: 
# gcc -ffreestanding -nostdlib -o hwarm hwarm.s

.global _start
.section .text

_start:
  mov %r7, #4
  mov %r0, #1       
  ldr %r1, =msg 
  ldr %r2, =msglen
  swi $0

  mov %r7, #1
  mov %r0, #0       
  swi $0

.section .data
.align 4
  msg:
	.asciz "Hello, world!\n"
  msglen = . - msg - 1
