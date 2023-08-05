class Producto{
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

    set(marca){
        debugger;
        this.marca=marca;
        return this;
    }

    GetMarca(){
        return this.marca;

    }

    GuardarProducto(clave){

         alert("El producto ha sido guardado");
        return this;
    }

}