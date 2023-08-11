<?php 
session_start();

$Ubicacion = $_POST['Ubicacion'];
$_SESSION['playa'] = $Ubicacion;

if($Ubicacion=="BajaNorte")
{
    header("Location: ../../Presentacion/HTML/BajaCaliforniaNorte.html");
}
else if($Ubicacion=="BajaSur"){
    header("Location: ../../Presentacion/HTML/BajaCaliforniaSur.html");
}
else if($Ubicacion=="Guerrero"){
    header("Location: ../../Presentacion/HTML/Guerrero.html");
}
else if($Ubicacion=="Jalisco"){
    header("Location: ../../Presentacion/HTML/Jalisco.html");
}
else if($Ubicacion=="Nayarit"){
    header("Location: ../../Presentacion/HTML/Nayarit.html");
}
else if($Ubicacion=="QuintanaRoo"){
    header("Location: ../../Presentacion/HTML/QuintanaRoo.html");
}
else if($Ubicacion=="Sinaloa"){
    header("Location: ../../Presentacion/HTML/Sinaloa.html");
}
else if($Ubicacion=="Yucatan"){
    header("Location: ../../Presentacion/HTML/yucatan.html");
}
else {
    header("Location: ../../Presentacion/Buscador.html");
}

?>