<?php 
session_start();
include("database.php");
//include("database.php");

$Ubicacion = $_POST["Ubicacion"];

$con = connection();
// $sql = "SELECT Id, NombreHabitacion, CapacidadHuespedes, Precio FROM TC_Ubicacion where NombreHabitacion='".$Ubicacion."'";
$sql = "SELECT Id, Ciudad, Direccion FROM TC_Ubicacion where Ciudad='".$Ubicacion."'";
$result = $con->query($sql);

class localizacion{
    public $Id;
    public $Ciudad;
    public $Direccion;
}

$Ciudad = array();

if ($result->num_rows > 0) {

    
    while ($row = $result->fetch_assoc()) {
        $locacion = new localizacion();
        $locacion->Id = $row["Id"];
        $locacion->Ciudad = $row["Ciudad"];
        $locacion->Direccion = $row["Direccion"];
        
        $locaciones[] = $locacion;
        
    }
    ?>
<script>console.log("<?php echo $locacion->Id?>");</script>
<script>console.log("<?php echo $locacion->Ciudad?>");</script>
<script>console.log("<?php echo $locacion->Direccion?>");</script>

<?php
    $ubi = str_replace(' ', '',$Ubicacion);
    header("Location: ../../Presentacion/HTML/Pantallas/".$ubi.".html");
} else {
?>
<script>console.log("<?php echo $Ubicacion?>");</script>

<?php
    // header("Location: ../../Presentacion/Buscador.html");
    // echo "No se encontraron resultados.";
}

?>