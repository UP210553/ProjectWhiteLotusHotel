<?php
include("database.php");
$con = connection();

$NombreHuesped = $_POST['Nombrehuesped'];
$Apellidos = $_POST['Apellidos'];
$FechaNacimiento = $_POST['FechaNacimiento'];
$Email = $_POST['Email'];
$NumeroTelefono = $_POST['NumeroTelefono'];
$Contrasena = $_POST['Contrasena'];


$sql = "INSERT INTO tr_datoshuespedes(NombreHuesped,Apellidos,FechaNacimiento,Email,NumeroTelefono,Contrasena) VALUES('$NombreHuesped','$Apellidos','$FechaNacimiento','$Email','$NumeroTelefono','$Contrasena')";
$query = mysqli_query($con, $sql);

if($query){
   
 Header("Location: ..\..\index.php");
}else{

}
?>
