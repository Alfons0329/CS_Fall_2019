# from cyprto import *
import binascii
from xor_tool import xor_string
with open('cipher') as f:
    content = f.readlines()

with open('plain') as f:
    plain = f.read()

cipher = ''
for i in content:
    cipher += i

#print(cipher, plain)
#print(xor_string(cipher, plain))
#exit()
flag = 'FLAG{D0_u_know_One'
content = [str(i.strip()) for i in content]
while True:

    tmp_result = []
    for each in content:
        tmp_result.append(xor_string(each, flag)[0: len(flag)])
        print(tmp_result[-1])

    select_idx = input('plain text --> select index [0, %d]: '%(len(tmp_result) - 1))
    plain_text = tmp_result[int(select_idx)]

    print('selected plain text --> ', plain_text)
    plain_text = input('increment plain text --> ')
    flag = xor_string(content[0], plain_text)[0: len(plain_text)]
    print('updated flag --> ', flag)
