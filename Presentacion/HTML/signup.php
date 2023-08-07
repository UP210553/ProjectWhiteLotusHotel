
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar</title>
</head>
<body>

    <div>
    <h1>Registrate</h1>
    <span><a href="..\..\index.php">Iniciar sesión</a></span>
    </div>
<div>
    <form action="InsertSignup.php" method="post">
        <input type="text" name="Nombrehuesped" placeholder="Ingresa tu nombre">
        <input type="text" name="Apellidos" placeholder="Ingresa tus Apellidos">
        <input type="date" name="FechaNacimiento" placeholder="Ingreasa tu fecha de nacimiento">
        <input type="text" name="Email" placeholder="Ingresa el correo electronico">
        <input type="text" name="NumeroTelefono" placeholder="Ingresa tu numero de telefono">
        <input type="password" name="Contrasena" placeholder="Ingresa la contraseña">
        <input type="submit" value="Registrar">
    </form>
</div>
    
</body>
</html>