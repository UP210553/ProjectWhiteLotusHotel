<?php require_once('conexion.php');
   /* $sql = "insert into tr_producto (nombre, marca, existencia) values ('".$_POST['nombre']."',".$_POST['marca'].", ".$_POST['existencia'].")";

    $name = $_POST['Name'];

    if(mysql_query($connection, $sql)) {
        echo "Registro ingresado correctamente ".date("Y/m/d");
        $sql = "Select * from Usuarios where Name = ". $name;
    } else{
        echo "Error: ".$sql." ".mysql_error($connection);
    }

    mysqli_close($connection);

    header("Location: /ProjectWhiteLotusHotel/index.php");+/

?>