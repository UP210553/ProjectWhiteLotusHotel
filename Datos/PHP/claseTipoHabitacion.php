<?php 
session_start();
include("database.php");
//include("database.php");

$TipoHab = $_POST["Ubicacion"];

$con = connection();
$sql = "SELECT Id, NombreHabitacion, CapacidadHuespedes, Precio FROM tc_tipohabitacion where NombreHabitacion='$TipoHab'";
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
<script>
    var selectElement = document.getElementById("Ubicacion");

function llevarUbicacion(){
    var ciudad=selectElement.value;
    var url;
    
    if(ciudad=="BajaNorte")
    {
        url="../Presentacion/HTML/BajaCaliforniaNorte.html";
    }
    else if(ciudad=="BajaSur"){
        url="../Presentacion/HTML/BajaCaliforniaSur.html";
    }
    else if(ciudad=="Guerrero"){
        url="../Presentacion/HTML/Guerrero.html";
    }
    else if(ciudad=="Jalico"){
        url="../Presentacion/HTML/Jalisco.html";
    }
    else if(ciudad=="Nayarit"){
        url="../Presentacion/HTML/Nayarit.html";
    }
    else if(ciudad=="QuintanaRoo"){
        url="../Presentacion/HTML/QuintanaRoo.html";
    }
    else if(ciudad=="Sinaloa"){
        url="../Presentacion/HTML/Sinaloa.html";
    }
    else if(ciudad=="Yucatan"){
        url="../Presentacion/HTML/yucatan.html";
    }
    else {
        url="../Presentacion/index.html";
    }
    
    window.location.href=url;
    
}
</script>

<?php
    //header("Location: ../../Presentacion/");
} else {
    header("Location: ../../Presentacion/Buscador.html");
    echo "No se encontraron resultados.";
}

?>