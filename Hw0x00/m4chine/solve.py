# env: Python3
import os
import subprocess
from subprocess import Popen, PIPE, STDOUT
from pwn import *

res = ''
ok = 0
while ok == 0:
    for char in range(33, 256):
        res += str(char)
        print('input res is ', str(res))
        p = Popen(['python3', 'machine.py'], stdin = PIPE, stdout = PIPE, stderr = PIPE)
        out = p.communicate(input = res.encode())
        print('out is ', out)
        if out == 'pass':
            ok = 1
print('final res flag: ', res)
