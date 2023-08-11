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






