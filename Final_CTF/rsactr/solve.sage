#!/usr/bin/env python3
import socket
# from pwn import *
from Crypto.Util.number import *

# remote method credit to OAlienO
class remote:
    def __init__(self, host, port):
        self.s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.s.connect((host, port))
        self.buffer = b''
    def recvuntil(self, text):
        text = self._convert_to_bytes(text)
        while text not in self.buffer:
            self.buffer += self.s.recv(1024)
        index = self.buffer.find(text) + len(text)
        result, self.buffer = self.buffer[:index], self.buffer[index:]
        return result
    def recvline(self):
        return self.recvuntil(b'\n')
    def recvlines(self, n):
        lines = []
        for _ in range(n):
            lines.append(self.recvline())
        return lines
    def _convert_to_bytes(self, text):
        if type(text) is not bytes:
            text = str(text)
        if type(text) is str:
            text = text.encode()
        return text
    def send(self, text):
        text = self._convert_to_bytes(text)
        self.s.sendall(text)
    def sendline(self, text):
        text = self._convert_to_bytes(text)
        self.send(text + b'\n')
    def sendafter(self, prefix, text):
        self.recvuntil(prefix)
        self.send(text)
    def sendlineafter(self, prefix, text):
        self.recvuntil(prefix)
        self.sendline(text)

# Copeer smith attack
n  = 137349706707152080246713051295145773963719487328873121533836375443601640797574858250244123156220561307015682082421190135763627422532796755254813942984304874789084444136179783569874043409668406532084799020436331523064158150332759823927091073395037345999285342655066175790110723818640808475263080494180868839487
e = 3 
c = 0x8029b94c5fd05b26c24b433b9704de9910a831fc8376a045e4d793f12f27f234f0455c913725f08c21fb017c5a294534d0f3deb5635bd016f118be0851e4684845ecf88107d519683c4dec62a2a0a2c703437e32190ba4ff90e29051e15cc2fbade89704d6e93d5ce1c18fd34fadea9ea200d2413590488b2c38778d9542036a 
flag = 0x8a7040fd72ad934b28cff89192af78b0c4d6abb931d089dfaf4bc47f87528de43843181f0c807bc67e39c3bb328fadc26cf19676f1cad1d7486de8771c98aad311e70110ce8616bc044404da4eed65c5d1a7c97767f05603322969fbaf42e62f85479676ab363e5fd37a3c35ada25761140680bb881576c889a28970babec8121f6277ea7ad55c6cb0a5b5008c7ccbfa05ef311805c0d5ce64b5e252c89d5bb8bfe8e54ca957748a770cc69bf67454203b2c5b5e170afbdc5fb994809f0f7a53dd4d1701a67ba85d2701fa0082fdc89f087896cdec3968cb8e7a1007bda45684c9f9df49f8821644c6cec325ac0f47b90ab04eb8c9977fa87cf91f8fab2cba700be17fb71ef4cf324784406a8ccc276d84bad1042058215fb2df62f9649a8e2320ca9be31c4e49e0a560161c37f0bde91b260f4ddf65f817c84404cba39b143a67a23f5a0b697ddbd8e39e39e9fa01ee34bc5c50ab528924726d4a4580e22012432229d5ee8d7b4cc995b7fba7e94e03b55f9329178569128c80907235cc26d1 

flag_bytes = long_to_bytes(flag)

nonce = (int.from_bytes(c, 'big') ^ 3) % n
print('nonce --> ', nonce)

