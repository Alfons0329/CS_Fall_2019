checker1 = '\x1d\x13\x10\x18\x51\x4c\x4f\x1c\x12\x51\x0b\x08\x50\x51\x50\x51\x50\x51\x50'
checker2 = '\x5b\x5f\x51\x5f\x2a\x1c\x0a\x43\x33\x02\x54\x4d\x11\x02\x09\x2c\x70\x71\x70'

assert len(checker1) == len(checker2), 'len should be equal'
password = ''
for i in range(len(checker1)):
    password += chr(ord(str(checker1[i])) ^ ord(str(checker2[i])))

#print(checker1)
print(password)

