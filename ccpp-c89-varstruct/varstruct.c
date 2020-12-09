
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef struct _tag_varstruct {
    unsigned long long size;
    char buffer[1];
} varstruct;


const char* message = "This is a test of variable-sized C89 structs.";

int main(int argc, char** argv) {

    varstruct* heapstructdirect = NULL;
    varstruct* heapstructfrombuffer = NULL;
    void* heapbuffer = NULL;
    char stackbuffer[104];

    varstruct* stackstruct = (varstruct*)stackbuffer;

    heapstructdirect = calloc(104, sizeof(char));

    heapbuffer = calloc(104, sizeof(char));
    heapstructfrombuffer = (varstruct*) heapbuffer;    

    stackstruct->size = strlen(message);
    strncpy(stackstruct->buffer, message, strlen(message));
    strncpy(heapstructdirect->buffer, stackstruct->buffer, stackstruct->size);
    strncpy(heapstructfrombuffer->buffer, stackstruct->buffer, stackstruct->size);

    printf("%s\n", stackstruct->buffer);
    printf("%s\n", heapstructdirect->buffer);
    printf("%s\n", heapstructfrombuffer->buffer);

    free(heapstructdirect);
    free(heapbuffer);
    return 0;
}
