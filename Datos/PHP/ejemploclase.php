<?php
include("database.php");



$con = connection();
$sql = "SELECT id, NombreHuesped, Email FROM tr_datoshuespedes where Email='osvi@gmail.com' and Contrasena='1234'";
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
} else {
    echo "No se encontraron resultados.";
}

foreach ($usuarios as $usuario) {
    echo "ID: " . $usuario->id . "<br>";
    echo "Nombre: " . $usuario->nombre . "<br>";
    echo "Correo: " . $usuario->correo . "<br><br>";
}
?>

