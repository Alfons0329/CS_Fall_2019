# Computer Security Hw0x02 Writeup
###### tags: `Computer Security` `NTU CS` `CS` `Writeup` `CTF`

## Step 1, Trace the execution progress of seed
* Use IDA Pro to reverse and find out such function.
![](https://i.imgur.com/FmJd9OW.png)

* Set 3 breakpoints in its function to see how the seed is being processed.
![](https://i.imgur.com/38YjC9o.png)
    * We can clearly see that it checks whether the data in memory is `69` or say `0x45`, and add the following 80 bytes with seed until it reaches NULL byte.
    * To verify the aforementioned property, compare the data from `unk_654058` before `seed = 8` has been inserted
    and the following 80 bytes, we can see that `unk_654058` has been add up from 45 to 4D and the same is true for all the following 80 bytes.
![](https://i.imgur.com/rroAtyB.png)
up before, down after
![](https://i.imgur.com/HlT8XEx.png)

## Step 2, Choose the seed
* After the function for seed, we have the function for shellcode, located at `unk_654058` in the form just like HW0.
![](https://i.imgur.com/3aZzgCe.png)
* For shellcode, it serves as a function, so we need `push ebp` first(i.e. the function prologue), with `opcode == 0x55`, therefore, seed 16 is suitable since `0x10 + 0x45 == 0x55`

## Step 3, What is the flag?
* After the flag has been parsed from stdin, the `check_shell` function will first check whether the length of flag equals 32.
![](https://i.imgur.com/3aZzgCe.png)
Left is the asm of checking `strlen(flag_in) == 32`
`cmp dword ptr ss:[ebp - 14], 0x20`

* Then we can trace where the flag lies. We see that `test eax eax` implies if `eax == 0` then program output `That is not right...`
![](https://i.imgur.com/KEv2tPv.png)

* Hence we **backtrace to find what makes eax 0**, turns out that the program process the input flag with the following: `input_flag = (input_flag + 0x23) ^ 0x66`. Then it loads the data where `eax` points to (in this picture it starts from address `0x654018` and now moves up to `0x65401D`). Finally if the comparison of `flag[i] != 0x654018 + i`, it will process `xor eax eax` to clear eax, making program fail.
![](https://i.imgur.com/V1CE360.png)
For example, `\x0F\x09\x02\x0C\xF8\xFA` is `(FLAG{y + 23) ^ 66`, and next character of my input is 8, on account of `('8' + 23) ^ 66` is `\x3D` , it fails.

* Dig out the data in `[0x654018, 0x654038)`, xor with 0x66 and minus 0x23 for the final flag.
![](https://i.imgur.com/0lynIRL.png)
**FLAG{y3s!!y3s!!y3s!!0h_my_g0d!!}**

### Fake flag pitfall
* Note, if we directly find data lies in 0x654018 merely with IDA Pro, it will direct us for the wrong fake flag.
**FL4G{Oh-yeah-U-G07-7h3-f4keflag}**



