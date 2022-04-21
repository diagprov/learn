

BITS 16

segment code

..start:
mov ax,data
mov ds,ax
mov ax,stack
mov ss,ax
mov sp,stacktop

mov dx,hello
mov ax,0x0900
int 0x21

mov ax,0x4c00
int 0x21

segment data

hello: db 'How are you still using DOS????',0Dh,0Ah,'$'

segment stack stack
resb 64
stacktop:

