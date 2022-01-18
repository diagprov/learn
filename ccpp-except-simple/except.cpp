
#include <cstdlib>
#include <cstring>
#include <cmath>

#include <iostream>
#include <exception>
#include <numbers> // C++20
#include <stdexcept>


void do_task_inner(int num) {

    if (num % 5 == 0) {
        throw std::logic_error("number of arguments divisible by 5!");
    }
    else if (num % 2 == 1) {
        throw std::runtime_error("odd number of arguments");
    }
    else {
        printf("Not odd and not divisible by 5");
    }
}

void do_task(char** envp, int num) {

    int i = 0;
    do_task_inner(num);
    while (envp[i++] != NULL) {
        printf("Env %d: %s\n", i-1, envp[i-1]);
    }
}

int main(int argc, char** argv, char** envp) {

    if ( argc < 2 ) {
        std::printf("Not enough arguments.\n");
        return -1;
    }

    for (int i = 0; i < argc; i++ ) {
        printf("Argument %d: %s\n", i, argv[i]);
    }

    try {
        do_task(envp, argc);
    }
    catch (std::logic_error& e) {
        printf("Logic Error: %s", e.what());
    }
    catch (std::runtime_error& e) {
        printf("Runtime Error: %s", e.what());
    }

    return 0;
}
