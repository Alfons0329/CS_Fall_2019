import base64
import binascii
import os
import sys

# argument should be both byte string
def xor_string(all_data, xor_key):

    decrypted_data = "" #the xor-decrypted data will be here
    all_data = [i for i in bytes.fromhex(all_data)]
    xor_key = [i for i in xor_key]
    # print(all_data, xor_key)

    total_len = len(all_data)
    key_len = len(xor_key)

    for i in range(0, total_len - key_len + 2, key_len):

        for j in range (0, key_len, 1):
            # print(all_data[i + j], xor_key[j])
            decrypted_data += chr(all_data[i + j] ^ xor_key[j])

    return decrypted_data
