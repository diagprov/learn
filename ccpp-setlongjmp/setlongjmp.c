
#include <stdio.h>
#include <setjmp.h>
 
jmp_buf jump_buffer;
 
void a(int count) 
{
    printf("a(%d) called.\n", count);
    longjmp(jump_buffer, count+1);  // setjmp() will return count+1
}
 
int main(int argc, char** argv)
{
    volatile int count = 0;
    /* When longjmp is called we return to this call: */
    int setjmp_result = setjmp(jump_buffer);
    if (setjmp_result != 9) { 
        a(++count);  // This will cause a return via setjmp.
    }
}
