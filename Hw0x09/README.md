# Computer Security Hw0x09 Writeup
* Realname: 胡安鳳
* ID on course web: alfons0329
* Student ID: R08922024
###### tags: `Computer Security` `NTU CS` `CS` `CTF` `Writeup`

## CatHub Party (crypto)
### Padding Oracle Attack
* The step of implementing this attack can be found in [this video](https://www.youtube.com/watch?v=vzW37CjEJgs), timestamp = 1hr15min ~ 1hr21min
* And the well-explained wikipedia page [here](https://en.wikipedia.org/wiki/Padding_oracle_attack)

### Step 1: XOR the adjacent 2 blocks of cipher for the prev block.
![](https://i.imgur.com/kKinnCq.png)

The mathematical formula for CBC decryption is
$${\displaystyle P_{i}=D_{K}(C_{i})\oplus C_{i-1}} \\ {\displaystyle C_{0}=IV}$$

Given the example for current round's padding guessing. 
Suppose, in this round, the padding we are trying to guess being $\mathrm {0x01}$.

We now knows that the last byte of ${\displaystyle D_{K}(C_{2})\oplus C_{1}'(Last \ byte\ of\ cipher\ block\ 1)}$ is $\mathrm {0x01}$ 
Therefore, ${\displaystyle D_{K}(C_{2})=C_{1}'\oplus \mathrm {0x01} }$ and $C_{1}' = D_{K}(C_{2}) \oplus \mathrm {0x01}$, describing what has been done in the picture shown above.


### Step 2: Brute force searching for the corresponding byte at previous block.

```python
original_cipher_byte = prev_cipher_block_bytes[i]
for search in range(256):
    prev_cipher_block_bytes[i] = search
    guess_flag_cipher = b''.join(flag_cipher_blocks[0: block_idx - 1]) \
    + bytes(prev_cipher_block_bytes) \
    + flag_cipher_blocks[block_idx]

    # the padding is correct, 
    # no need to guess anymore (try to match correctly with padding)
    if interact_with_site(session, \
    urlencode(base64.b64encode(guess_flag_cipher).decode())) \
    == WRONG_FLAG_CORRECT_PADDING:
        cur_block_decrypted_bytes[i] = search ^ padding_guess
        cur_block_plain_bytes[i] =  original_cipher_byte \
        ^ cur_block_decrypted_bytes[i]
        break
```

If the previous-mentioned padding is correct (i.e. directly guessed the padding correctly), then we now know that the last byte of ${\displaystyle D_{K}(C_{2})\oplus C_{1}'}$ is ${\displaystyle \mathrm {0x01} }$. 
Therefore, ${\displaystyle D_{K}(C_{2})=C_{1}'\oplus \mathrm {0x01} }$. -->`cur_block_decrypted_bytes[i] = search ^ padding_guess`
And for plain text ${\displaystyle P_{2}=D_{2}(C_{2})\oplus C_{1}}$ --> ` cur_block_plain_bytes[i] =   cur_block_decrypted_bytes[i] ^ original_cipher_byte`

If the padding is incorrect, the we can change the last byte of ${\displaystyle C_{1}'}$ to the next possible value `prev_cipher_block_bytes[i] = search`, just keep brute force searching.

At most, the we will need to make 256 attempts (one guess for every possible byte) to find the last byte of ${\displaystyle P_{2}}$

* The rest of the exploitation code and explanation are in `solve.py` of this homework. 