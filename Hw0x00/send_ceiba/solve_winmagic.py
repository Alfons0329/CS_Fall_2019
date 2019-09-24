'''
[rsp+0C8h+var_A0], 2
mov     [rsp+0C8h+var_9F], 23h
mov     [rsp+0C8h+var_9E], 1Eh
mov     [rsp+0C8h+var_9D], 3Eh
mov     [rsp+0C8h+var_9C], 14h
mov     [rsp+0C8h+var_9B], 22h
mov     [rsp+0C8h+var_9A], 36h
mov     [rsp+0C8h+var_99], 5
mov     [rsp+0C8h+var_98], 2Ah
mov     [rsp+0C8h+var_97], 0Dh
mov     [rsp+0C8h+var_96], 10h
mov     [rsp+0C8h+var_95], 0
mov     [rsp+0C8h+var_94], 1Eh
mov     [rsp+0C8h+var_93], 1Bh
mov     [rsp+0C8h+var_92], 26h
mov     [rsp+0C8h+var_91], 29h
mov     [rsp+0C8h+var_90], 8
mov     [rsp+0C8h+var_8F], 0Bh
mov     [rsp+0C8h+var_8E], 26h
mov     [rsp+0C8h+var_8D], 2Bh
mov     [rsp+0C8h+var_8C], 0Ch
mov     [rsp+0C8h+var_8B], 0Ch
mov     [rsp+0C8h+var_8A], 1Dh
mov     [rsp+0C8h+var_89], 2
mov     [rsp+0C8h+var_88], 13h
mov     [rsp+0C8h+var_87], 0
mov     [rsp+0C8h+var_86], 4
mov     [rsp+0C8h+var_85], 31h
mov     [rsp+0C8h+var_84], 3Bh
mov     [rsp+0C8h+var_83], 2Dh
mov     [rsp+0C8h+var_82], 8
mov     [rsp+0C8h+var_81], 0
mov     [rsp+0C8h+var_80], 38h
mov     [rsp+0C8h+var_7F], 12h
mov     [rsp+0C8h+var_7E], 36h
mov     [rsp+0C8h+var_7D], 7
mov     [rsp+0C8h+var_7C], 17h
mov     [rsp+0C8h+var_7B], 30h
mov     [rsp+0C8h+var_7A], 4
mov     [rsp+0C8h+var_79], 1Ch
mov     [rsp+0C8h+var_78], 0
mov     [rsp+0C8h+var_77], 12h
mov     [rsp+0C8h+var_76], 0Bh
mov     [rsp+0C8h+var_75], 4
mov     [rsp+0C8h+var_74], 7
mov     [rsp+0C8h+var_73], 0Bh
mov     [rsp+0C8h+var_72], 56h
mov     [rsp+0C8h+var_71], 4Bh
mov     [rsp+0C8h+var_70], 46h
mov     [rsp+0C8h+var_6F], 42h
'''
cipher = '\x02\x23\x1E\x3E\x14\x22\x36\x05\x2A\x0D\x10\x00\x1E\x1B\x26\x29\x08\x0B\x26\x2B\x0C\x0C\x1D\x02\x13\x00\x04\x31\x3B\x2D\x08\x00\x38\x12\x36\x07\x17\x30\x04\x1C\x00\x12\x0B\x04\x07\x0B\x56\x4B\x46\x42'
key = 'Do_you_know_why_my_teammate_Orange_is_so_angry?????'
res = ''
for i in range(min(len(key), len(cipher))):
    res += chr(ord(str(cipher[i])) ^ ord(key[i]))

print(res)

