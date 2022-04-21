#define WIN32
#define NDEBUG
#define _UNICODE

#include <stdio.h>
#include <windows.h> // for EXCEPTION_ACCESS_VIOLATION
#include <excpt.h>

int filter(unsigned int code, struct _EXCEPTION_POINTERS* ep)
{
    puts("in filter.");
    if (code == EXCEPTION_ACCESS_VIOLATION)
    {
        puts("caught AV as expected.");
        return EXCEPTION_EXECUTE_HANDLER;
    }
    else
    {
        puts("didn't catch AV, unexpected.");
        return EXCEPTION_CONTINUE_SEARCH;
    };
}

int main()
{
    int* p = 0x00000000;   // pointer to NULL
    puts("hello");
    __try
    {
        puts("in try");
        char line[256] = { 0 };
        if (fgets(line, sizeof(line)-1, stdin)) {
            printf("Your input was %s\n", line);
        }
        memset(line, 0, sizeof line);
        __try
        {
            puts("in try");
            char line[256] = { 0 };
            if (fgets(line, sizeof(line) - 1, stdin)) {
                printf("Your second was %s\n", line);
            }
            memset(line, 0, sizeof line);
            *p = 13;    // causes an access violation exception;
        }
        __finally
        {
            puts("in finally. termination: ");
            puts(AbnormalTermination() ? "\tabnormal" : "\tnormal");
        }
    }
    __except (filter(GetExceptionCode(), GetExceptionInformation()))
    {
        puts("in except");
    }
    puts("world");
}