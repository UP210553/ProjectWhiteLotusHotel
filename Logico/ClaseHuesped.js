class Huespedes{
    constructor(){
        this.id_huesped=0;
        this.Nombre='';
        this.FechaNacimiento='';
        this.Correo='';
        this.NumeroTelefonico=''; 

    }

    setNombre(Nombre){
        debugger;
        this.Nombre=Nombre;
        return this;
    }
    getNombre(){
        return this.Nombre;
    }
    setFechaNacimiento(FechaNacimiento){
        debugger;
        this.FechaNacimiento=FechaNacimiento;
        return this;
    }

    GetFechaNacimiento(){
        return this.FechaNacimiento;

    }

    setCorreo(Correo){
        debugger;
        this.Correo=Correo;
        return this;
    }

    GetCorreo(){
        return this.Correo;

    }

    setNumeroTelefonico(NumeroTelefonico){
        debugger;
        this.NumeroTelefonico=NumeroTelefonico;
        return this;
    }

    GetNumeroTelefonico(){
        return this.NumeroTelefonico;

    }

    GuardarProducto(clave){

         alert("El producto ha sido guardado");
        return this;
    }

}