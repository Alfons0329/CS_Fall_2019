# CatHub v2 solution step by step


## Step 1. DB syntax comparison

DB Type | LIMIT  | IF     | SLEEP  | OR     | AND    | *      | +      | #      | /**/   | --     |
--------|:------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|
mySQL   |   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
MSSQL   |  TOP   |   O    |  DELAY | O      |  O     |  O     | STRCAT | X      |   O    |  O    |
OracleDB|   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
mySQL   |   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |

## Step 2 trial and error to determine DB type

### White space banned

`https://edu-ctf.csie.org:10159/video.php?vid=1%20SLEEP(3)` does not work (waf protection for space characters) --> bad cat!

### Check function

`https://edu-ctf.csie.org:10159/video.php?vid=1/**/SLEEP(3)` work --> error!: sleep unusable -> mySQL(X)

`https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/1=1/**/LIMIT/**/1,1` work --> error!: limit unusable --> mySQL(X)

`https://edu-ctf.csie.org:10159/video.php?vid=1/**/IF/**/1=1` work --> error!: if unusable

### Check comments

So sleep(X), --> it is MariaDB