#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

unsigned make_seed() {
    time_t tt;
    struct tm ttt;
    ttt.tm_year = 2019 - 1900; // from nini2 in IDA Pro
    ttt.tm_mon = 8; // sep 
    ttt.tm_wday = 3; // wed
    ttt.tm_mday = 11; // only correct solution
    ttt.tm_hour = 5;
    ttt.tm_min = 25;
    ttt.tm_sec = 14;

    tt = mktime(&ttt);
    return (unsigned)tt;
}

int rotate_R(unsigned int num, unsigned int rot_cnt){
    unsigned int res = num >> rot_cnt;
    unsigned int shifted_away_bits = num << (32 - rot_cnt);
    res |= shifted_away_bits;
    return res;
}

int rotate_L(unsigned int num, unsigned int rot_cnt) {
    unsigned int res = num << rot_cnt;
    unsigned int shifted_away_bits = num >> (32 - rot_cnt);
    res |= shifted_away_bits;
    return res;
}

unsigned int reversed_1(unsigned int num){
    return num ^ 0xFACEB00C;
}

unsigned int reversed_2(unsigned int num){
    return num - 74628;
}

unsigned int reversed_3(unsigned int num){
    return (rotate_R(num & 0xAAAAAAAA, 2) | rotate_L(num & 0x55555555, 4));
}

unsigned int reversed_4(unsigned int num){
    return reversed_1(reversed_2(reversed_3(num)));
}

int main(){
    unsigned int seed = make_seed();
    srand(seed);
    int fout = open("output.txt", O_RDONLY);
    int fin = open("input_new.txt", O_RDWR | O_CREAT, 0666);
    char buf[4] = {0};

    // read 4 bytes for integer length at once
    int cnt = 0;
    while(read(fout, buf, 4) == 4){
        int num = *(unsigned int *)(buf); // cast to unsigned int pointer and extract value
        int todo = random() % 4; 
        int res = 0;

        if(todo == 0){
            res = reversed_1(num);
            // printf("res %d \n", res);
        }
        else if(todo == 1){
            res = reversed_2(num);
            // printf("res %d \n", res);
        }
        else if(todo == 2){
            res = reversed_3(num);
            // printf("res %d \n", res);
        }
        else if(todo == 3){
            res = reversed_4(num);
            // printf("res %d \n", res);
        }
        else{
            exit(-1);
        }
        // getchar();

        write(fin, (char *) &res, 4);
    }

    close(fin);
    close(fout);
    return 0;
}
