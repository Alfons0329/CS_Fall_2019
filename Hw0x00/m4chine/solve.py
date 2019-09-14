# env: Python3
import os
import subprocess
from subprocess import Popen, PIPE, STDOUT

for first in range(256):
    for second in range(256):
        flag_str = ""
        flag_str += str(chr(first))
        flag_str += str(chr(second))
        #print('flag_str: ', flag_str)
        p = Popen(['python3 machine.py'], stdout = PIPE, stdin = PIPE, stderr = PIPE, shell = True)
        stdout = p.communicate(input = flag_str.encode())
        print('stdout: ', stdout)

