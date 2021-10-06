#include <stdint.h>
#include <stddef.h>

int g_value = 4;
int h_value;

typedef char* (*callback_func)();
typedef void (*callback_func2)(char** str);

int64_t getlen2(callback_func2 callback) {
    
    int64_t len = -1;
    char* str = NULL;
    callback(&str);
    
    if (str == NULL) goto exit;

    len = 0;
    while ( *str != 0 ) {
        len += 1;
        str++;
    }
exit:
    return len;
}
int64_t getlen(callback_func callback) {
    
    int64_t len = -1;
    char* str = callback();
    
    if (str == NULL) goto exit;

    len = 0;
    while ( *str != 0 ) {
        len += 1;
        str++;
    }
exit:
    return len;
}


int addfunc(int a, int b)
{
    h_value = 7;
    return a+b+g_value;
}


