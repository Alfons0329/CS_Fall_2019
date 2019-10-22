<?php

    if(isset($_GET['src']))
        highlight_file(__FILE__);

    function waf($s, $type) {
        if($type == 0) {
            if(stripos($s, ".") !== FALSE) die(bye());
            if(stripos($s, "/") !== FALSE) die(bye());
            if(stripos($s, "-") !== FALSE) die(bye());
        } else if($type == 1) {
            if(strlen($s) > 20) die(bye());
        } else {
            if(stripos($s, "ph") !== FALSE) die(bye());
        }
    }

    function bye() {
        header("Location: https://youtu.be/dQw4w9WgXcQ");
    }

    $sandbox = '/var/www/html/sandbox/' . @md5("kaibro" . $_SERVER['REMOTE_ADDR'] . $_SERVER['HTTP_USER_AGENT']);
    @mkdir($sandbox);
    @chdir($sandbox);

    $f = $_GET{'f'};
    $c = $_GET{'c'};
    $i = $_GET{'i'};

    waf($f, 0, 1, 2, 3);
    waf($c, 1, 2, 3, 0);
    waf($i, 2, 3, 0 ,1);

    @system("mkdir " . escapeshellarg($sandbox . "/" . $f));
    @chdir($sandbox . "/" . $f);

    @file_put_contents("meow", $c);

    @chdir($sandbox);
    if(isset($i) && stripos(file_get_contents($i), '<') === FALSE) {
        echo "<div class='container'>";
        echo "<h2>Here is your file content:</h2>";
        @include($i);
        echo "</div>";
    }


    @chdir(__DIR__);
    $md5dir = @md5("kaibro" . $_SERVER['REMOTE_ADDR'] . $_SERVER['HTTP_USER_AGENT']);
    @system('rm -rf sandbox/' . $md5dir );

    echo "<hr>";
?>

<head>
<link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/flatly/bootstrap.min.css">
</head>
<div class="container">

<h1>Safe R/W</h1>
<br>
<a href="/?src=1">Source Code</a><br>
<br>
<form>
    Directory Name: <input type="text" class="form-control" name="f" value="mydir"><br>
    File Name: <input type="text" class="form-control" name="i" value="mydir/meow"><br>
    File Content: <input type="text" class="form-control" name="c" placeholder="say something..."><br>
    <input type="submit" class="btn btn-info">
</form>