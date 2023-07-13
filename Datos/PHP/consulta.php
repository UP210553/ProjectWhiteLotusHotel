<?php
function InicioSesion(){
    $user=$_POST['btnUsuario'];
    $pass=$_POST['btnPassword'];
    if(ControlEntrada($user, $pass) == true)
    {
        session_start();
    }
}

function ControlEntrada($user, $pass){
    $conection=$_POST['connection'];
    $query = "SELECT id FROM Usuarios WHERE Password = '". $pass . "' and User = '" . $user . "';";
    $result = mysqli_query($connection, $query);
    if (!$result) {
        die($connection->error_log);
        return false;
    }
    else 
    {
        die($connection);
        return true;
    }
}

?>