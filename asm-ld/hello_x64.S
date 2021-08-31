

.global _start
.section .text

_start:
.align 8
  movq $1, %rax       
  movq $1, %rdi      
  movq $msg, %rsi  
  movq $14, %rdx 
  syscall

  movq $60, %rax 
  movq $0,  %rdi
  syscall      

.section .data
.align 8
  msg:
	.asciz "Hello, world!\n"
  msglen: 
	.byte .-msg
