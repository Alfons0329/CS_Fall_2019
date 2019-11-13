<?php

   for($i = 0; ; $i++)
   {
       if(substr(md5("kaibro" . $i), 0, 5) === "b2784")
       {
           print($i);
           break;
       }
   }

?>
