<?php 
    $host = "";
    $database = "hotel";
    $user = "";
    $password = "";
    $conection = mysqli_connect($host, $database, $user, $password) or die("Couldn't connect to" . $host . "/" . $database . "/");
?>