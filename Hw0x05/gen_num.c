#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

int main() {
    // int seed = time(0);
    int seed = 0x01697268; 
    srand(seed);
    for(int i = 0; i < 6; i++){
        int rand_num = rand() % 100;
        printf("%d\n", rand_num);
    }
    return 0;
}
