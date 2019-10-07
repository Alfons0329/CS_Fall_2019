# Computer Security Hw 0x01 Writeup
* Realname: 胡安鳳
* ID on course web: alfons0329
* Student ID: R08922024
###### tags: `Computer Security` `NTU CS` `CTF` `Writeup`

## Back to the future(reverse):
In this problem, we may use IDA pro to help solving it.
In the program, we can see the that time machine first check whether the key matches `checker1` after some operations `key[j] ^= 2 * (dword_40C040 + 63) + *(_BYTE *)(v5 + 2) + 127;`
If check passes, forward to next step to xor with checker2, and print the final password.

So use a python to print `checker1 ^ checker2` for flag.
![](https://i.imgur.com/2FHmd02.png)
![](https://i.imgur.com/o1cShrF.png)
And finally get the answer
```
FLAG{PE_!S_EASY}
```