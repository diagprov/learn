#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long int global = 0;

void setglobal(char* stringval) {
    global = strtol(stringval, NULL, 10);
}

void printglobal() {
    printf("Global is: %ld\n", global);
}

int main(int argc, char** argv) {

    if ( argc==2 ) {
        setglobal(argv[1]); 
    }
    printglobal();
}
