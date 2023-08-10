<?php
session_start();
$email = $_SESSION["email"];
$contrasena = $_SESSION["pass"];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"];
    $contrasena = $_POST["password"];
    //$miVariable = $_POST["mi_variable"];

    // Destino 1
    $urlDestino1 = "VerificarCredenciales.php";
    $data1 = array("email" => $email,"password"=> $contrasena);
    

    $ch1 = curl_init($urlDestino1);
    curl_setopt($ch1, CURLOPT_POST, 1);
    curl_setopt($ch1, CURLOPT_POSTFIELDS, http_build_query($data1));
    curl_setopt($ch1, CURLOPT_RETURNTRANSFER, true);
    $response1 = curl_exec($ch1);
    curl_close($ch1);

    // Destino 2
    $urlDestino2 = "ejemploclase.php";
    $data2 = array("email" => $email,"password"=> $contrasena);

    $ch2 = curl_init($urlDestino2);
    curl_setopt($ch2, CURLOPT_POST, 1);
    curl_setopt($ch2, CURLOPT_POSTFIELDS, http_build_query($data2));
    curl_setopt($ch2, CURLOPT_RETURNTRANSFER, true);
    $response2 = curl_exec($ch2);
    curl_close($ch2);
    
    header("Location: VerificarCredenciales.php");
    // Puedes hacer algo con las respuestas si es necesario
}

?>
