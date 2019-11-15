#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

int main() {
    int seed = time(0);
    srand(seed);
    for(int i = 0; i < 6; i++){
        // lott[i] = rand() % 100;
        int rand_num = rand() % 100;
        printf("%d\n", rand_num);
    }
    return 0;
}
