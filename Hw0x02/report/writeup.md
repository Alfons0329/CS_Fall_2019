# Computer Security Hw0x02 Writeup
###### tags: `Computer Security` `NTU CS` `CS` `Writeup` `CTF`

## Step 1 Trace the execution progress of seed
* Use IDA Pro to reverse and find out such function
![](https://i.imgur.com/FmJd9OW.png)

* Set 3 breakpoints in its function to see how the seed is being processed.
![](https://i.imgur.com/38YjC9o.png)
    * We can clearily see that it checks whether the data in memory is `69` or say `0x45`, and add the following data with seed until it reaches NULL byte.
    * To verify the aforementioned peoperty, compare the data from `unk_654058` before `seed = 8` has been inserted
    and the following 80 bytes, we can see that `unk_654058` has been add up from 45 to 4D and the same is true for all the following 80 bytes.
![](https://i.imgur.com/ZfhcWNH.png)
![](https://i.imgur.com/4X3jHcG.png)
## Step 2 Choose the seed
* After the function for seed, we have the function for shellcode, locating at `unk_654058` just like HW0 (8)
![](https://i.imgur.com/f9Zz0TP.jpg)
* For shellcode, it serves as a function, so we need `push ebp` first, with `opcode == 0x55`, therefore, seed 16 is suitable since `0x10 + 0x45 == 0x55`

