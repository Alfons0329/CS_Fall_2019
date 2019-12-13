import binascii
from xor_tool import *
with open('cipher') as f:
    content = f.readlines()


flag = 'FLAG{D0_u_know_One-Time-Pad\'s_md5_i5_'
# digested and modified from wikipedia --> [https://en.wikipedia.org/wiki/One-time_pad]
# In cryptography, the one-time pad is an encryption technique that cannot be cracked,
# XOR
# First line of the cipher text for FLAG
content = [str(i.strip()) for i in content]
plain_text = 'In cryptography, the one-time pad is an encryption technique that cannot be cracked,'

# direct solve
print(xor_all(content[0], plain_text))

# step by step solve
while True:

    tmp_result = []
    for each in content:
        tmp_result.append(xor_all(each, flag))
        print(tmp_result[-1])

    select_idx = input('cipher text --> select index [0, %d]: '%(len(content) - 1))
    plain_text = input('enter new plain text to extend flag --> ')
    flag = xor_all(content[int(select_idx)], plain_text)
    print('updated flag --> ', flag)
