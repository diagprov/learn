
.section .text
.global thumb_mode_func
.thumb_func
thumb_mode_func:

	mov r0, #1        // fd 1
	ldr r1, =msg      // buffer
	ldr r2, =msglen   // message length
	mov r7, #4        // ARM syscall number.
	svc #0            // syscall.

	mov pc, r14       // return
.section .data
msg:
    .asciz "Hello, world!\n"
msglen:
    .word 14

