
#include <stdio.h>

extern int asmadd(int x, int y);

int main(int argc, char** argv) {

    int a = 7;
    int b = 23;

    printf("Hello, world!\n");

    int c = asmadd(a,b);
    printf("Sum is %d\n", c);
}
