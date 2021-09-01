# Compile with: 
# gcc -ffreestanding -nostdlib -o hwarm hwarm.s

.global _start
.section .text

_start:
  mov w8, #64
  mov x0, #1       
  ldr x1, =msg 
  ldr x2, =msglen
  svc #0

  mov w8, #93
  mov x0, #0       
  svc #0

.section .data
.align 4
  msg:
	.asciz "Hello, world!\n"
  msglen = . - msg - 1
