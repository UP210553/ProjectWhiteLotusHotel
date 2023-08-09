<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>
<body>
<div>
<h1>Iniciar sesión</h1>
<span><a href="Presentacion/HTML/signup.php">Registrate</a></span>
</div>
<div>
    <form action="Logico/VerificarCredenciales.php" method="post">
        <input type="text" name="email" placeholder="Ingresa el correo electronico">
        <input type="password" name="password" placeholder="Ingresa la contraseña">
        <input type="submit" value="Iniciar sesión">
    </form>
</div>

<?php 
/*require_once __DIR__."/Logico/VerificarCredenciales.php";
$inicioSecion = VerificarCredenciales();
if($inicioSecion==true){
?>
<p>inicio exitoso</p>

<?php 

}else{
?>
<p>esta mal</p>
<?php 

};*/
?>

</body>
</html>