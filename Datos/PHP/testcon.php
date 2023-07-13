<?php 
require_once('conexion.php');

if($connection->connect_error){
    die("Error: ".$connection->connect_error);
}else{
    echo "Conexion fallida";
}

echo "Conexion exitosa";

// Cerrar conexion
$connection->close();

?>
