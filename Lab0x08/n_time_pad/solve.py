# from cyprto import *
import binascii
from xor_tool import xor_string
with open('cipher') as f:
    content = f.readlines()

flag = b'FLAG'
content = [str(i.strip()) for i in content]
while True:

    for each in content:
        print(xor_string(each, flag))

    flag = input('new flag concatenate')
