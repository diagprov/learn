
.global _test_function
.global _start
.section .text

_start:
.align 8
  movq $4, %rdi
  movq $6, %rsi
  call _test_function

  movq $1, %rax       
  movq $1, %rdi      
  movq $msg, %rsi  
  movq $14, %rdx 
  syscall

  movq $60, %rax 
  movq $0,  %rdi
  syscall      

# We need to mark this custom piece of code as "ax" i.e. 
# it is allocatable (load it!) and executable.
.section .custom, "ax"
_test_function:
.align 8
  movq %rdi, %rax
  addq %rsi, %rax
  ret

.section .data
.align 8
  msg:
	.asciz "Hello, world!\n"
  msglen: 
	.byte .-msg
