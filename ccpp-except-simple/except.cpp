
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <iostream>
#include <exception>
#include <stdexcept>

void do_task_inner(int num, const char* c) {
    if (num % 5 == 0) {
        char msg[1000];
        snprintf(msg, sizeof msg - 1, "Number of Arguments divisble by 5! %s", c);
        throw std::logic_error(msg);
    }
    else if (num % 2 == 1) {
        throw std::runtime_error("odd number of arguments");
    }
    else {
        printf("Not odd and not divisible by 5");
    }
}

void do_task(int num, char** argv, char** envp) {

    const size_t VARLEN = 256;
    int i = 0;
    char vval[VARLEN+1] = {0};

    while (envp[i++] != NULL) {
        char envname[VARLEN+1] = {0};
        char* env = envp[i-1]; size_t envlen = strlen(env);
        char* eqp = strchr(env, '=');
        if ( eqp == NULL ) continue;
        size_t enlen = eqp-env; 
        printf("Env %d: %s\n", i-1, env);
        if (envlen > VARLEN) envlen = VARLEN;
        std::strncpy(envname, &env[0], enlen-1);
        if ( strcmp(envname, "VTEST") ) strncpy(vval, eqp+1, envlen-enlen-1);
    }
    do_task_inner(num, vval);
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
        do_task(argc, argv, envp);
    }
    catch (std::logic_error& e) {
        printf("Logic Error: %s", e.what());
    }
    catch (std::runtime_error& e) {
        printf("Runtime Error: %s", e.what());
    }
    return 0;
}
