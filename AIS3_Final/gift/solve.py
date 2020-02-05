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
    os.system(cmd)
    contents = []
    content = ''
    with open('tmp.txt') as f:
        contents = f.readlines()
        for i in contents:
            if len(i) > 250:
                content = i
                break

    f.close()

    f = open('in.txt', 'w')
    print('write ', content)
    f.write(content)
    f.close()

    cnt += 1
    cmd = './' + name + ' < in.txt > out_' + str(cnt)
    print('cmd2 ', cmd)
    os.system(cmd)

    cmd = 'mv ' + 'out_' + str(cnt) + ' ' + 'out_' + str(cnt) +'.gz'
    print('cmd3 ', cmd)
    os.system(cmd)

    cmd = 'gunzip ' + 'out_' + str(cnt) + '.gz -f'
    print('cmd4 ', cmd)
    os.system(cmd)

    input()
