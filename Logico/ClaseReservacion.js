class Reservacion{
    constructor(){
        this.id_reservacion=0;
        this.id_huesped=0;
        this.id_habitacion=0;
        this.id_ubicacion=0;
        this.id_paquetes=0;
        this.FechaInicio='';
        this.FechaFinal='';
    }

    setid_resevacion(id_reservacion){
        debugger;
        this.id_reservacion=id_reservacion;
        return this;
    }
    getid_reservacion(){
        return this.id_reservacion;
    }
    setid_huesped(id_huesped){
        debugger;
        this.id_huesped=id_huesped;
        return this;
    }

    Getid_huesped(){
        return this.id_huesped;

    }

        setid_habitacion(id_habitacion){
        debugger;
        this.id_habitacion=id_habitacion;
        return this;
    }

    Getid_habitacion(){
        return this.id_habitacion;

    }

    setid_ubicacion(id_ubicacion){
        debugger;
        this.id_ubicacion=id_ubicacion;
        return this;
    }

    Getid_ubicacion(){
        return this.id_ubicacion;

    }

       setid_paquetes(id_paquetes){
        debugger;
        this.id_paquetes=id_paquetes;
        return this;
    }

    Getid_paquetes(){
        return this.id_paquetes;

    }

       set_FechaInicio(FechaInicio){
        debugger;
        this.FechaInicio=this.FechaInicio;
        return this;
    }

    Get_FechaInicio(){
        return this.FechaInicio;

    }

       set_FechaFinal(FechaFinal){
        debugger;
        this.FechaFinal=FechaFinal;
        return this;
    }

    Get_FechaFinal(){
        return this.FechaFinal;

    }

   

    GuardarProducto(clave){

         alert("El producto ha sido guardado");
        return this;
    }

}