<?php 
session_start();
include("database.php");
//include("database.php");

$Ubicacion = $_POST["Ubicacion"];

$con = connection();
$sql = "SELECT Id, NombreHabitacion, CapacidadHuespedes, Precio FROM tc_ubicacion where NombreHabitacion='$TipoHab'";
$result = $con->query($sql);

class TipoHabitacion{
    public $Id;
    public $Tipo;
    public $Capacidad;
    public $Precio;
}

$habitacion = array();

if ($result->num_rows > 0) {

    
    while ($row = $result->fetch_assoc()) {
        $habitacion = new TipoHabitacion();
        $habitacion->Id = $row["Id"];
        $habitacion->Tipo = $row["NombreHabitacion"];
        $habitacion->Capacidad = $row["CapacidadHuespedes"];
        $habitacion->Precio = $row["Precio"];
        
        $habitaciones[] = $habitacion;
        
    }
    ?>
<script>console.log("<?php echo $habitacion->Id?>");</script>
<script>console.log("<?php echo $habitacion->Tipo?>");</script>
<script>console.log("<?php echo $habitacion->Capacidad?>");</script>
<script>console.log("<?php echo $habitacion->Precio?>");</script>

<?php
    $ubi = trim($Ubicacion);
    header("Location: ..\..\Hoteljsjs/$ubi.html");
} else {
    header("Location: ../../Presentacion/Buscador.html");
    echo "No se encontraron resultados.";
}

?>