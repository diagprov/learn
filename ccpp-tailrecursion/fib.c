
#include <stdio.h> 
#include <stdint.h>
#include <stdlib.h>

typedef struct _fib_int fib_int;

struct _fib_int {
    uint32_t x;
    fib_int* next;
}; 


fib_int* fibonacci_sequence(uint32_t n1, 
                            uint32_t n2,
                            fib_int* start,
                            fib_int* prev,
                            size_t count, 
                            size_t limit) 
{
    if ( count >= limit ) {
        return start;
    }    
    uint32_t sum = n1+n2;
    fib_int* fn = NULL;
    if ( prev == NULL ) {
        fib_int* f1 = calloc(1, sizeof(fib_int));
        fib_int* f2 = calloc(1, sizeof(fib_int));

        start = f1;
        f1->x = n1;
        f1->next = f2;
        f2->x = n2;
        prev = f2;
    }
    fn = calloc(1, sizeof(fib_int));
    fn->x = sum;
    prev->next = fn;
    

    return fibonacci_sequence(n2, n1+n2, start, fn, count+1, limit);
}

void free_list(fib_int* list) {
    
    while (list != NULL) 
    {
        fib_int* next = list->next;
        free(list);
        list = next;
    }
}

int main(int argc, char** argv) {


    fib_int* seq = fibonacci_sequence(1,1, NULL, NULL, 0, 10);
    fib_int* ptr = seq;
    while (ptr != NULL) {
        printf("%u,", ptr->x);
        ptr = ptr->next;
    }
    
    free_list(seq);
    return 0;

}
