<?php 
    $host = "localhost";
    $database = "hotel";
    $user = "d2023p";
    $password = "RG-1905032121118826";
    $connection = mysqli_connect($host,$user,$password,$database,'3306') or trigger_error(mysql_error(),E_USER_ERROR);//die("Couldn't connect to" . $host . "/" . $database . "/");
    //header('Location: ./consulta.php?conection=$conection');
?>