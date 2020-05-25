
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv) {

    uint64_t pvr = 0;

    // https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html
    asm volatile (
        "mfspr 0, 0x11F\n"
        "\tmr   (%[pvr]),0"
    : [pvr] "=rm" (pvr)
    );

    printf("PVR: 0x%08x\n", pvr);
    return 0;
}

