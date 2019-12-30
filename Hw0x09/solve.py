#!/usr/bin/env python3
import requests, urllib3
import base64

url = 'https://edu-ctf.csie.org:10190/party.php'
cipher_b64 = '2hvi8C%2Buwz9w77fyC9IAMyWrv9VHSg5SFpmbxw6lx%2Bqxe3pCelcFob6C2kMUZBW6Gk9x1j%2B%2Btw%2FBCkcLBCcSBkY5TCW6t4NX0L7f%2FKUvMXUYt%2FBzbQ15AcsjxvlvfDrI'
phpsessid = '8ll7jijdl3mr0mrrj4hlpss690'

UNKNOWN = 0x0
CORRECT_FLAG = 0x1
WRONG_FLAG_CORRECT_PADDING = 0x2
WRONG_PADDING = 0x3

def interact_with_site(session, guess_flag_cipher):
    cookie = {
        'PHPSESSID': phpsessid,
        'FLAG': guess_flag_cipher
    }
    response = session.get(url, cookies=cookie, verify=False)
    ret = UNKNOWN

    if response.text.find('CAT PARTY!!!!!!') != -1:
        if response.text.find('Your flag seems strange') != -1:
            ret = WRONG_FLAG_CORRECT_PADDING
        else:
            ret = CORRECT_FLAG
    elif response.text.find('What the flag?! CHEATER!!! get out of here.') != -1:
        ret = WRONG_PADDING
    else:
        print('UNKNOWN')
        f = open('response.html', 'w')
        f.write(response.text)
        f.close()

    return ret

def urldecode(s):
    return s.replace('%2F', '/').replace('%2B', '+')

def urlencode(s):
    return s.replace('/', '%2F').replace('+', '%2B')

def main():
    urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
    session = requests.Session()

    # 128 bytes b64encoded(urlencoded(flag_cipher)) --> 96 bytes flag_cipher
    flag_cipher = base64.b64decode(urldecode(cipher_b64))

    # splitting them into 6 blocks
    block_size = 16
    num_total_blocks = len(flag_cipher) // block_size
    flag_cipher_blocks = []
    for i in range(0, len(flag_cipher), block_size):
        flag_cipher_blocks.append(flag_cipher[i:i + block_size])

    flag_plain = [b''] * 6

    # decrypt using cur block and prev block
    # idx low [prev_block | this block] idx high
    for block_idx in reversed(range(1, num_total_blocks)):
        prev_cipher_block = flag_cipher_blocks[block_idx - 1]
        prev_cipher_block_bytes = list(prev_cipher_block) # in the byte representation form

        cur_block_decrypted_bytes = [0] * block_size
        cur_block_plain_bytes = [0] * block_size

        # attack from the last byte, in reversed order
        for i in reversed(range(block_size)):
            padding_guess = block_size - i
            prev_cipher_block_bytes = list(prev_cipher_block)

            # last block as special case
            if block_idx == num_total_blocks - 1:
                if (i != block_size - 1 and i >= block_size - cur_block_plain_bytes[-1]):
                    cur_block_decrypted_bytes[i] = prev_cipher_block_bytes[i] ^ cur_block_plain_bytes[i]
                    continue

            # XOR prev blocks, i.e. from i + 1 to block_size
            for j in range(i + 1, block_size):
                prev_cipher_block_bytes[j] = cur_block_decrypted_bytes[j] ^ padding_guess

            original_cipher_byte = prev_cipher_block_bytes[i]
            for search in range(256):
                prev_cipher_block_bytes[i] = search
                guess_flag_cipher = b''.join(flag_cipher_blocks[0: block_idx - 1]) \
                + bytes(prev_cipher_block_bytes) \
                + flag_cipher_blocks[block_idx]

                # the padding is correct, no need to guess anymore (try to match correctly with padding)
                if interact_with_site(session, urlencode(base64.b64encode(guess_flag_cipher).decode())) == WRONG_FLAG_CORRECT_PADDING:
                    cur_block_decrypted_bytes[i] = search ^ padding_guess
                    cur_block_plain_bytes[i] =  original_cipher_byte ^ cur_block_decrypted_bytes[i]
                    break

        print('flag_plain[{}] = {}'.format(
            block_idx, bytes(cur_block_plain_bytes)))
        flag_plain[block_idx] = bytes(cur_block_plain_bytes)

    return b''.join(flag_plain)

print(main())
