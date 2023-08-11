<?php
session_start();
include("VerificarCredenciales.php");
//include("database.php");

$Email = $_SESSION['mail'];
$password = $_SESSION['pass'];

$con = connection();
$sql = "SELECT id, NombreHuesped, Email FROM TR_DatosHuespedes where Email='".$Email."' and Contrasena='".$password."'";
$result = $con->query($sql);

class Usuario {
    public $id;
    public $nombre;
    public $correo;
}

$usuarios = array();

if ($result->num_rows > 0) {

    
    while ($row = $result->fetch_assoc()) {
        $usuario = new Usuario();
        $usuario->id = $row["id"];
        $usuario->nombre = $row["NombreHuesped"];
        $usuario->correo = $row["Email"];
        
        $usuarios[] = $usuario;
        
    }
    
    $_SESSION = [];
    header ("Location: ../../Presentacion/Buscador.html");
} else {
    echo "No se encontraron resultados.";
}


?>

