#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char** argv) {
    int x = 0;
 
    x = ({int y;
          scanf("%d", &y);
          y+7;});
    
    printf("X is %d\n", x);
    return 0;
}
