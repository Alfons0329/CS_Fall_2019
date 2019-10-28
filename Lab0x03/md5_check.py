import crypto
import hashlib

with open('shell.txt') as f:
    all_content = f.read()
    print(all_content)
    m = hashlib.md5()
    m.update(all_content.encode('utf-8'))
    print(m.hexdigest())
