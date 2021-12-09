#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int g_value;
extern int h_value;
extern int addfunc(int a, int b);
typedef char* (*callback_func)();
typedef void (*callback_func2)(char** str);

extern int64_t getlen(callback_func callback);
extern int64_t getlen2(callback_func2 callback);

char* globlstr;

static char* callback_function() {
    return globlstr;
}

static void callback_function2(char** str) {
    *str = globlstr;
}


int main(int argc, char** argv)
{
    int i = addfunc(7, 11);
    globlstr = calloc(100, 1);
    sprintf(globlstr, "Hello, World!\n");
    printf("Values %d %d\n", g_value, i);
    printf("String length: %ld\n", getlen(callback_function));
    printf("String length: %ld\n", getlen2(callback_function2));
    return 0;
}

