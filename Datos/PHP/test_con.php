<?php 
require_once('conexion.php');

//Verificar conexión
echo "Conexión exitosa";

if($conection->connect_error){
    die("Error: ".$conection->connect_error);
}

echo "Conexión exitosa";

// Cerrar conexión
$conection->close();

?>