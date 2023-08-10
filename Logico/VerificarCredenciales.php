<?php
require_once __DIR__."/../Datos/PHP/database.php";

function VerificarCredenciales(){

$con = connection();

if ($con->connect_error) {
    die("Error de conexión a la base de datos: " . $con->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Email = $_POST["email"];
    $password = $_POST["password"];

    $sql = "SELECT * FROM tr_datoshuespedes WHERE Email = '$Email' AND Contrasena = '$password'";
    $result = $con->query($sql);

    if ($result->num_rows == 1) {
        header("Location: ..\Presentacion/Buscador.html");
        //return true;

    } else {
        echo ("no se pudo");
      //return false;
    }
}

$con->close();

}

VerificarCredenciales();


/*class Habitacion {
    public $habitacion;

    public function __contruct($habitacion) {
        $this->habitacion = $habitacion;
    }

    public function register() {

    }
    
    public function get($attribute) {
        return $this->$atributte;
    }

    public function set($attribute, $value) {
        $this->$attribute = $value;

    }
}


$habit = new Habitacion("hola");*/

?>


