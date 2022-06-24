
#include <stdio.h>
#include <stdlib.h>

extern void thumb_mode_func(void);

int main(int argc, char** argv) {
    printf("Switching into thumb mode.\n");

    thumb_mode_func();

    printf("Returned from thumb mode.\n");
    exit(0);
}
