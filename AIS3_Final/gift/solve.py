#!/usr/bin/env python2
import os, subprocess, sys
from pwn import *

cnt = 11
while True:

    if cnt:
        name = 'out_' + str(cnt)
        print('process name ', name)
    else:
        name = 'gift'

    cmd = 'strings ' + name + ' > tmp.txt'
    print('cmd1 ', cmd)
    with open('tmp.txt') as f:
        content = f.readlines().strip()[24]
        pause()

    f.close()

    cnt += 1
    cmd = './' + name + ' < ' + str(content) + ' > out_' + str(cnt)
    print('cmd2 ', cmd)
    os.system(cmd)
    pause()

    cmd = 'mv ' + 'out_' + str(cnt) + ' ' + 'out_' + str(cnt) +'.gz'
    print('cmd3 ', cmd)
    os.system(cmd)
    pause()

    cmd = 'extract ' + 'out_' + str(cnt) + '.gz'
    print('cmd4 ', cmd)
    os.system(cmd)
    pause()
