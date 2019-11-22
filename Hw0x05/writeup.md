# Computer Security Hw0x05 Writeup
* Realname: 胡安鳳
* ID on course web: alfons0329
* Student ID: R08922024
###### tags: `Computer Security` `NTU CS` `CS` `CTF` `Writeup`

## Casino (pwn)
As we can see from source code that puts is used when we win the casino, we may use it for **GOT table hijacking** and make such GOT position point to our malicious payload, i.e. shellcode.

### Step 1, Overwrite seed and construct our own random function.
![](https://i.imgur.com/DCNRhPG.png)

```c
int seed = 0x0;
    srand(seed);
    for(int i = 0; i < 6; i++){
        int rand_num = rand() % 100;
        printf("%d\n", rand_num);
    }
```

### Step 2, GOT hijacking of puts
Put the location of shellcode (starting from 0x602110) in GOT of puts (starting from 0x602020)
![](https://i.imgur.com/uZJyOrg.png)

### We now have shell
![](https://i.imgur.com/OXjEy1d.png)
**Pwned**
![](https://i.imgur.com/VPfjECv.png)

