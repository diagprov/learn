// foo.c
#include <stdio.h>

typedef int (*func_foo)(int,int); // just a func pointer of type int (*)(int, int)

static int foo_default(int x, int y) {
    return x * y;
}

func_foo resolve_foo (void) { // ifunc resolver (called at load-time to resolve foo())
    return foo_default;
}

int foo(int x, int y) __attribute__(( ifunc("resolve_foo"))); // indirect foo() function declaration

int main(int argc, char **argv) {
    printf("%d\n", foo(3, 5));
    return 0;
}
