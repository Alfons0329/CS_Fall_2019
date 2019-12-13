# from cyprto import *
import binascii
from xor_tool import *
with open('cipher') as f:
    content = f.readlines()

with open('plain') as f:
    plain = f.read()


flag = 'FLAG{D0_u_know_One-Time-Pad\'s_md5_'
content = [str(i.strip()) for i in content]
cipher = ''
for i in content:
    cipher += i

print(xor_all(cipher[0: 150], plain[0: 75]), '|<--')
exit()

while True:

    tmp_result = []
    for each in content:
        tmp_result.append(xor_all(each, flag))
        print(tmp_result[-1])

    select_idx = input('cipher text --> select index [0, %d]: '%(len(content) - 1))
    plain_text = input('new plain text --> ')
    flag = xor_all(content[int(select_idx)], plain_text)
    print('updated flag --> ', flag)
