
#include <stdint.h>
#include <cstdio>
#include "rustproj.h"

int main() {

    rustcode::VSlice<uint8_t> vslice = rustcode::get_a_slice();

    for(int i = 0; i < vslice.len; i++ ) {
        std::printf("%u\n", vslice.ptr[i]);
    }
}
