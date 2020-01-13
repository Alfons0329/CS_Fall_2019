from Crypto.Util.number import *
from pwn import *
import base64, sys, os, binascii
import struct

e = 3
n = 80298403732777677747171733315066930570259227164411646426090365000131377731801509125389235984201902381573080620743668958783073617247599830509781517923682601209960633273525916600303567876231548286073148439217108239733991310575664720777934980688678457096608663347452303755764806368218190358258998565908939148577

cipher = b'gs\x01\xf8\x94T!\xd07\xe2W\x0ca~\xb4\x84y\xd0\xbfd\nFT7(\xb1L\xb3\xe3\x11\xb2|\xc7R\xb1\x10\xdf\x1e\xdf\\H\x1cp\xb1NkGV\xc6\xf6?\x1e\x91\x05\xd8\xf4\xe2P\x07\x8a\x12I\xa6\xedTe\xd9j9YS\x14\xc5!\x1b\xe2O\\\xb68\x88'A\xe5\xb0=\xd6\xd3\xa1\xd1s\x8b\x8e?\t\xf5\x04\x18\xb6\x93\xf6\xa1\xf8\rPw\xc3P-\xb2d\xee:ycx\xaa\x8d!w\xf9\xe1\xdeM\xec\x1b\xfagn\x98m\x05*\x80B\x9f\x8e\xa7\xb5D_\xf2J\xae\xa9~r#\xe0\xe51\x1e\x97\x10\x94\x04\xa6\x10\xece7\x12l0T/q\xad\xf9\xf1\xad\xec\x08\xfd\xd7b\x0c=\xda\xf3\xf2L$lWT\x8a\xa5\xa1\xa7F\xad\x91x\xd9\xe5\x01p\xf7\xf3\x18'\xfb\x1d\x0fd\xbdP\x16\xb57\xa3\x89\xbc\xad\x16\x9c\xafr\xa5W\x1d\x86\xd6\xc7\xd6\xf8r\xadUo\xb5\x8b\x0e\x8d\xc1\nE[_>\x8c\xb1\xb3\xfe\xe1\x0ev\x9dkD\x162m\x95\xae'
cipher_long = bytes_to_long(cipher)

print('nonce ', pow(cipher_long, e, n))

flag_enc = 0x677301f8945421d037e2570c617eb48479d0bf640a46543728b14cb3e311b27cc752b110df1edf5c481c70b14e6b4756c6f63f1e9105d8f4e250078a1249a6ed5465d96a39595314c5211be24f5cb638882741e5b03dd6d3a1d1738b8e3f09f50418b693f6a1f80d5077c3502db264ee3a796378aa8d2177f9e1de4dec1bfa676e986d052a80429f8ea7b5445ff24aaea97e7223e0e5311e97109404a610ec6537126c30542f71adf9f1adec08fdd7620c3ddaf3f24c246c57548aa5a1a746ad9178d9e50170f7f31827fb1d0f64bd5016b537a389bcad169caf72a5571d86d6c7d6f872ad556fb58b0e8dc10a455b5f3e8cb1b3fee10e769d6b4416326d95ae

flag_enc_bytes = long_to_bytes(flag_enc)
print('flag_enc_bytes ', flag_enc_bytes, type(flag_enc_bytes), len(flag_enc_bytes))
