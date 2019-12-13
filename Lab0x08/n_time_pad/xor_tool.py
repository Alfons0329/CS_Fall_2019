import base64
import binascii
import os
import sys


def xor_all(cipher, xor_key):

    assert isinstance(cipher, str), 'Cipher should be in type: str'
    assert isinstance(xor_key, str), 'XOR key should be in type: str'

    decrypted_data = ""

    # convert them to bytes and bruteforce one by one
    cipher = [i for i in bytes.fromhex(cipher)]
    xor_key = bytes(xor_key, 'utf-8')
    xor_key = [i for i in xor_key]

    cipher_len = len(cipher)
    key_len = len(xor_key)

    if cipher_len > key_len:
        cipher = cipher[0: key_len]
    else:
        xor_key = xor_key[0: cipher_len]


    for i in range(0, min(cipher_len, key_len)):
        decrypted_data += chr(cipher[i] ^ xor_key[i])
    return decrypted_data
