import struct
flag_encoded = '\x0f\x09\x31\x0c\xf8\x14\xed\x36\xfa\xee\xe2\xed\x36\x1e\x36\x0c\x35\x3c\x36\x3c\xed\x30\x36\xef\x31\xe8\xee\xef\xe9\xe2\xec\xc6' # fake flag at check shell unk something
flag_encoded2 = '\x0F\x09\x02\x0C\xF8\xFA\x30\xF0\x22\x22\xFA\x30\xF0\x22\x22\xFA\x30\xF0\x22\x22\x35\xED\xE4\xF6\xFA\xE4\xEC\x35\xE1\x22\x22\xC6' # real flag in debugger line from 0x750000 to 0x75004d

flag_final = ''
for i in flag_encoded2:
    flag_final += chr((ord(str(i)) ^ 0x66) - 0x23)

print(16)
print(flag_final)

'''
# test
flag = 'FLAG{'
hex_str = []

for i in flag:
    hex_str.append(hex((ord(i) + 0x23) ^ 0x66))

print(hex_str)
'''
