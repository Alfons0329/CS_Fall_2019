<?php

   for($i = 0; ; $i++)
   {
       if(substr(md5("kaibro" . $i), 0, 5) === "3b439")
       {
           print($i);
           break;
       }
   }

?>
