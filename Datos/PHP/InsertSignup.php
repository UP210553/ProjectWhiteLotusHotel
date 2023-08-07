<?php
include("database.php");
$con = connection();

$NombreHuesped = $_POST['Nombrehuesped'];
$Apellidos = $_POST['Apellidos'];
$FechaNacimiento = $_POST['FechaNacimiento'];
$Email = $_POST['Email'];
$NumeroTelefono = $_POST['NumeroTelefono'];
$Contrasena = $_POST['Contrasena'];


$sql = "INSERT INTO tr_usuarios(Nombre,Apellidos,Email,Contraseña) VALUES('$Nombre','$Apellidos','$Email','$Contrasena')";
$query = mysqli_query($con, $sql);

if($query){
   
 Header("Location: login.php");
}else{

}
?>
