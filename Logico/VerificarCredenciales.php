<?php
function VerificarCredenciales(){
include("Datos/PHP/database.php");
$con = connection();

if ($con->connect_error) {
    die("Error de conexión a la base de datos: " . $con->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Email = $_POST["Email"];
    $password = $_POST["password"];

    $sql = "SELECT * FROM tr_datoshuespedes WHERE Email = '$Email' AND Contrasena = '$password'";
    $result = $con->query($sql);

    if ($result->num_rows == 1) {
     return true;
    } else {
     return false;
    }
}

$con->close();
}

?>


