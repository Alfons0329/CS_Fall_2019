#!/usr/bin/env python3

import pdb
import requests
import urllib3
import base64

url = 'https://edu-ctf.csie.org:10190/party.php'
flag_cipher_base64 = 'mFGiTVikxW1rM9qUE8HOBr6UMQQq8j95ssVnzHe7Dyn%2FHnZY1unH%2B07fVAXp%2FTmWmCmJ3im3QswGEqBq12As0iDspLnhKruvGnD6AMJZGnirrEE3Nek2o62%2FzNOkSKT%2F'
phpsessionid = '02rua376tijlho2kobl6jmc10i'


UNKNOWN = 0x0
CORRECT_FLAG = 0x1
WRONG_FLAG_CORRECT_PADDING = 0x2
WRONG_PADDING = 0x3


def reaction(session, guess_flag_cipher):
    coo = {'PHPSESSID': phpsessionid,
           'FLAG': guess_flag_cipher}
    response = session.get(url, cookies=coo, verify=False)

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


def PaddingOracleAttack():

    # Some Url Request Setup
    urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
    session = requests.Session()

    # Convert 128 bytes base64-encoded 'flag_cipher_base64' to 96 bytes 'flag_cipher'
    flag_cipher = base64.b64decode(urldecode(flag_cipher_base64))

    # Seperate 96 bytes 'flag_cipher' to 6 blocks, with blocksize = 16 bytes
    block_size = 16
    num_of_blocks = len(flag_cipher) // block_size
    flag_cipher_blocks = []
    for i in range(0, len(flag_cipher), block_size):
        flag_cipher_blocks.append(flag_cipher[i:i+block_size])

    plain_flag = [b''] * 6
    # Skip block 0. Attack block 1-5 in reversed order: 5,4,3,2,1
    for block_index in reversed(range(1, num_of_blocks)):
        prev_cipher_block = flag_cipher_blocks[block_index-1]
        prev_cipher_block_bytes = list(prev_cipher_block)

        current_block_decrypted_bytes = [0] * block_size  # Init as 0s
        current_block_plain_bytes = [0] * block_size    # Init as 0s

        # For each block, attack 16 bytes in reversed order: 15~0
        for i in reversed(range(block_size)):
            correct_padding_guess = block_size - i
            prev_cipher_block_bytes = list(prev_cipher_block)

            # The ending block is special, handle it as special case.
            if block_index == num_of_blocks - 1:
                if (i != block_size - 1 and i >= block_size - current_block_plain_bytes[-1]):
                    known_padding = current_block_plain_bytes[-1]
                    current_block_plain_bytes[i] = known_padding
                    current_block_decrypted_bytes[i] = prev_cipher_block_bytes[i] ^ known_padding
                    continue

            # According to result of previous rounds, we can make cipher bytes[i+1 ~ 15] into fake, but correct, paddings.
            for j in range(i+1, block_size):
                prev_cipher_block_bytes[j] = current_block_decrypted_bytes[j] ^ correct_padding_guess

            # Remeber original cipher byte[i], and start to guess
            original_cipher_byte = prev_cipher_block_bytes[i]
            for num in range(256):
                prev_cipher_block_bytes[i] = num
                part = bytes(prev_cipher_block_bytes)
                guess_flag_cipher = b''.join(
                    flag_cipher_blocks[0:block_index-1]) + part + flag_cipher_blocks[block_index]

                # Reaction is WRONG_FLAG_CORRECT_PADDING, meaning the guessing is correct
                if reaction(session, urlencode(base64.b64encode(guess_flag_cipher).decode())) == WRONG_FLAG_CORRECT_PADDING:
                    current_block_decrypted_bytes[i] = num ^ correct_padding_guess
                    current_block_plain_bytes[i] = original_cipher_byte ^ current_block_decrypted_bytes[i]
                    break

        print('plain_flag[{}] = {}'.format(
            block_index, bytes(current_block_plain_bytes)))
        plain_flag[block_index] = bytes(current_block_plain_bytes)

    return b''.join(plain_flag)


def main():

    flag = PaddingOracleAttack()
    print(flag)


if __name__ == '__main__':
    main()
