#!/usr/bin/env python3
import socket
from Crypto.Util.number import *

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

# copeer smith attack
n = 120740307134764900488664969235973865277663380064045403344022913439492534479651779832595369779043881431463220218836607594174720496921706120996066129322213512281488511578047331282048001264881959370437649901097671651365721129892859652821925026501711213940357707007701053504727860981369021879209077883783301985657
e = 3 
c = '6c769aa7a85fda3197e3e34e4cc5f39a22ea80e72c84b3d8a2b400e1b8d81ed3ef44a2c88f384ce6c583bea64f0aa8be8f8d27a27623a648421604a4c49cefabf306e7088bc661eb91b98f6fb5a35cb91d629c252c45738afee927f8f8a24e02c4700e08f27d7fb2853a1b671e7ae1a7c25efa2702291d770ff6ca4f77cd6659' 
flag = '39473af9cb9b5e9c1fa948953c4e9a5faef329fe29409090b58b1bd789c33c986a415e2b8c80a9d206d2286fb772d7322b1de31f3b7a668e17ff1bbc0edcdfd5fc202248136b1bb4d93f649dd8085609aa0895b30dbd5e01b7c65435a604415e5d924312c8530bedf6fcbfa0e7e0a3ea692a124fdc46d13452ee34dfa7f71f0791e4bf61c7317fb1a5fc4ddf078705803254e9551bce0c6d4711cf51ce1501c3f1961987fc4276c53b25ec8b849726d03373ea4e8999b25f4247cc177f4cde6686fd7b5e7bb33d486207eaf185d48670b0e79078ba47c4c7b49ab66d515bdf9886ca69afc91dbb5a012636341e62f48c77a6fef9b86562358fde7b53871ec6365a39cafeffdb60f1bee19acb4bf78574dfaa18289a782d080be695f21f86971b10c7e374787f443cc5cef7c6f8519b0e0a91dd126cca8fb3de9e67d4a0ee34a0892a51d458a35aaa7db7759e557cdfb526ddafe7299d0662674fdb1ac5fccfaca312aaebb349dd47b07948d3a76cbc0c48a70d821ffc498561305b87da00a972'

# send '00' to the server to acquire the clean nonce
nonce = bytes.fromhex(c)
# nonce = long_to_bytes()
nonce = int.from_bytes(nonce, 'big')
nonce = (nonce ^ 3) % n

# define the polynomial
P.<x> = PolynomialRing(Zmod(n))

flag_final = b''
flag_bytes = bytes.fromhex(flag) 
for i in range(0, len(flag_bytes), 128):
    nonce = (nonce + 2020) % n # nonce increase by 2020 in each round

    # m = bytes_to_long(flag_bytes[i: i + block_size]) 
    m = int.from_bytes(flag_bytes[i: i + 128], 'big')
    f = (m - x) ^ 3 - nonce

    flag_final += long_to_bytes(int(f.monic().small_roots()[0], 16))

print(flag_final)

