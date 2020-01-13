from Crypto.Util.number import *
# from pwn import *
import base64, sys, os, binascii
import struct

e = 3
n = 103094253997262735852650930581983450213923542339253174977626040121554136262678874181504427399745219037429567375336269838705015979678911922170503274274905910085050995505109666161357186092825170494169908202063734723008128234542660784624055748957278124413207953182639639264439113965614633212723284266676091893243

cipher = b"NU\xa5\x9a\xfaK\xf0O\x0c\x9a\x19\x05\xd21\xb0\x9f .e\x1a=u}\x05\xbd\xbf\xcc?x\xad\x99\xf0Qt!T\xda\x04\xf7\xfa\xcc}\xc8K{\xd6\xe3\xc7\xf0\xca\x89&_\tDx\xbbB\xdd\x18\xce\xd7w\xc0Z\xda[\x82D\xae\xa2\x98.Gm8P|W\x0ev\\\x870\xf8\xe1,\xab\xfb!\xa1\xacK\xd9VX\xef\xc9\xb5Qu?c\t@\rr7\x00\x19\xeb\x7f\xed\xf4J\n\xa7\xef5\x059\xecJ\x9ah)\xfa'"
cipher_long = bytes_to_long(cipher)
nonce = pow(cipher_long, e, n)
print('nonce ', nonce)

flag_enc = 0x00f8f68e555edd532b657135908ff2e7ee4c7709bda631003e8f639cb5c687558d9d4e46750d4484dc6eb8dd793cef9e958199fd57d0d4c3409978a742de8ca70d7fba941ea319d3593ee597d515bd4c7018aa807543efcad04ee0fe63fa6001587f4a95aec68bb1c108c8b13eacea9b24229e179822f7c3ca9bafdaaa5f0602
flag_enc_bytes = long_to_bytes(flag_enc)
flag_enc_bytes += b'\x00'
print('flag_enc_bytes ', flag_enc_bytes, type(flag_enc_bytes), len(flag_enc_bytes))