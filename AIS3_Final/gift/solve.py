#!/usr/bin/env python3
import os, subprocess, sys

cnt = 11
while True:

    if cnt:
        name = 'out_' + str(cnt)
    else:
        name = 'gift'

    cmd = 'strings ' + name + ' > tmp.txt'
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
    f.write(content)
    f.close()

    cnt += 1
    cmd = './' + name + ' < in.txt > out_' + str(cnt)
    os.system(cmd)

    cmd = 'mv ' + 'out_' + str(cnt) + ' ' + 'out_' + str(cnt) +'.gz'
    os.system(cmd)

    cmd = 'gunzip ' + 'out_' + str(cnt) + '.gz -f'
    os.system(cmd)