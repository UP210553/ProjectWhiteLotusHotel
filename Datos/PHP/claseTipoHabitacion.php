<?php 
session_start();
include("database.php");
//include("database.php");

$ubi = $_POST["Ubicacion"];

$con = connection();
$sql = "SELECT Id, NombreHabitacion, CapacidadHuespedes, Precio FROM TC_TipoHabitacion where NombreHabitacion='".$ubi."'";
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
    //header("Location: ../../Presentacion/");
} else {
    header("Location: ../../Presentacion/Buscador.html");
    echo "No se encontraron resultados.";
}

?>