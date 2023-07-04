<?php 
    $host = "localhost";
    $database = "hotel";
    $user = "root";
    $password = "";
    $connection = mysqli_connect($host, $database, 
    $user, $password) or trigger_error(mysql_error(),E_USER_ERROR);//die("Couldn't connect to" . $host . "/" . $database . "/");
    $_POST['connection'] = $connection;
    //header('Location: ./consulta.php?conection=$conection');
?>