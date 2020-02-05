#!/usr/bin/env python3
import os, subprocess, sys

cnt = 11
while True:

    if cnt:
        name = 'out_' + str(cnt)
        print('process name ', name)
    else:
        name = 'gift'

    cmd = 'strings ' + name + ' > tmp.txt'
    print('cmd1 ', cmd)
    content = ''
    with open('tmp.txt') as f:
        content = f.readlines()
        content = content[24]
        print('content ', content)
    f.close()

    f = open('in.txt', 'w')
    f.write(content)
    f.close()

    cnt += 1
    cmd = './' + name + ' < in.txt > out_' + str(cnt)
    print('cmd2 ', cmd)
    os.system(cmd)

    cmd = 'mv ' + 'out_' + str(cnt) + ' ' + 'out_' + str(cnt) +'.gz'
    print('cmd3 ', cmd)
    os.system(cmd)

    cmd = 'extract ' + 'out_' + str(cnt) + '.gz'
    print('cmd4 ', cmd)
    pause()
    os.system(cmd)
