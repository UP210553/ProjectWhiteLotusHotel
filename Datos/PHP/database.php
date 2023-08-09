<?php


function connection(){
    $host = "localhost";
    $user = "d2023p";
    $pass = "RG-1905032121118826";

    $bd = "hotel";

    $connect=mysqli_connect($host, $user, $pass);

    mysqli_select_db($bd);

    return $connect;

}
?>
