<?php
/*require_once ("database.php");
echo "Sifunciona";


$connect = connection();

if ($connect->connect_error) {
    die("Error de conexión a la base de datos: " . $connect->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //$Email = $_POST["email"];
    //$password = $_POST["password"];

    $sql = "SELECT * FROM tr_datoshuespedes";//WHERE Email = '$Email' AND Contrasena = '$password"'";
    $result = msqli_query($connect,$sql);
    $connect->set_charset("utf8");
    $json = array();
    while ($resultado = msqli_fetch_assoc($result)){
        $json[] = $resultado;
    }
    echo json_encode($json);

    
}
msqli_free_result($result);

$connect->close();

//TraerDatosHuespedes()/*