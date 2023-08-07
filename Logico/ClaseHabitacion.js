class Habitacion{
    constructor(){
        this.id_habitacion=0;
        this.NombreHabitacion='';
        this.CapacidadHuespedes=0;
        this.Precio=0;
    }

    setNombreHabitacion(NombreHabitacion){
        debugger;
        this.NombreHabitacion=NombreHabitacion;
        return this;
    }
    getNombreHabitacion(){
        return this.NombreHabitacion;
    }
    setCapacidadHuespedes(CapacidadHuespedes){
        debugger;
        this.CapacidadHuespedes=CapacidadHuespedes;
        return this;
    }

    GetCapacidadHuespedes(){
        return this.CapacidadHuespedes;

    }

    setPrecio(Precio){
        debugger;
        this.Precio=Precio;
        return this;
    }

    GetPrecio(){
        return this.Precio;

    }

    GuardarProducto(clave){

         alert("El producto ha sido guardado");
        return this;
    }

}