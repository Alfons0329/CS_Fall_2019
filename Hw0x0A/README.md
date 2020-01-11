# Computer Security Hw0x0A Writeup
* Realname: 胡安鳳
* ID on course web: alfons0329
* Student ID: R08922024
###### tags: `Computer Security` `NTU CS` `CS` `CTF` `Writeup`

## Mandalorian (crypto)
A classical RSA LSB attack.

### Step 1: Get c, e, n in RSA from the server.

The $c$ $e$ $n$ are the cipher and public key pair $(e, N)$ in RSA encryption.
![](https://i.imgur.com/DpeBL28.png)

### Step 2: LSB attack as the Cryptography 110 ppt shown.
![](https://i.imgur.com/l4zx505.png)
The flag will be $(xn, xn - 1 ......, x1, x0)$, with $c \rightarrow m$, and $MOD$ being 16.

So the overall exploitation will be.
$$((base ^ {-ie}))c \rightarrow (base ^ {-i})m$$
The $i$ above is equivalent to `pow_cnt` shown below and the LSB message forging will be 

```python=
multiplied_c = pow(base, pow_cnt * e, n) * c % n # ((base ^ {-ie}))c
rem.sendline(str(multiplied_c))
multiplied_m = int(rem.recvline().split()[-1]) # (base ^ {-i})m
```

So the overall LSB attack part

```python=
pow_cnt = 0
try_cnt = 0
flag_res = 0
flag_list = []

while try_cnt < 1024 // 4:
    rem.sendlineafter('>', '2')

    # under the mod n cycle
    multiplied_c = pow(base, pow_cnt * e, n) * c % n
    rem.sendline(str(multiplied_c))
    multiplied_m = int(rem.recvline().split()[-1])
    r = multiplied_m % n % MOD

    tmp = 0
    start_pow = len(flag_list)
    for i in range(len(flag_list)):
        tmp += pow(base, start_pow, n) * flag_list[i]
        start_pow -= 1

    xi = (r - ((tmp) % n)) % MOD

    # check if the received bit(ot byte) is the padding zero 
    # (continuously padding zero), break as the threshold meets
    if xi == 0:
        if continuous_padding >= 10:
            break
        else:
            continuous_padding += 1
    else:
        continuous_padding = 0

    flag_list.append(xi)
    # make flag_res grow bigger, ex: 
    # x2x1x0 will be mod ** 2 * x2 + mod ** 1 * x1 + mod ** 0 8 x0 
    # (just like naive method for turning 0x7FB to 2043)
    flag_res = (((MOD ** pow_cnt) % n * xi) %n + flag_res) % n
    print(hex(flag_res))
    pow_cnt += 1
    try_cnt += 1
```

Gradually decrypting to have a flag.
![](https://i.imgur.com/KqhWSEP.png)
