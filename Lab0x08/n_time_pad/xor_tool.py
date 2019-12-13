import base64
import binascii
import os
import sys

# argument should be both byte string
def xor_string(cipher, xor_key):

    assert isinstance(cipher, str), 'Cipher should be in type: str'
    assert isinstance(xor_key, str), 'XOR key should be in type: str'

    decrypted_data = ""

    # convert them to bytes and bruteforce one by one
    cipher = [i for i in bytes.fromhex(cipher)]
    xor_key = bytes(xor_key, 'utf-8')
    xor_key = [i for i in xor_key]

    total_len = len(cipher)
    key_len = len(xor_key)

    print(cipher, xor_key, len(cipher), len(xor_key))

    for i in range(0, total_len - key_len + 2, key_len):

        for j in range (0, key_len, 1):
            # print(cipher[i + j], xor_key[j])
            decrypted_data += chr(cipher[i + j] ^ xor_key[j])

    return decrypted_data
