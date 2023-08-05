class Ubicacion{
    constructor(){
        this.id_ubicacion=0;
        this.Ciudad='';
        this.Direccion='';
    }

    setCiudad(Ciudad){
        debugger;
        this.Ciudad=Ciudad;
        return this;
    }
    getCiudad(){
        return this.Ciudad;
    }
    setDireccion(Direccion){
        debugger;
        this.Direccion=Direccion;
        return this;
    }

    GetDireccion(){
        return this.Direccion;

    }

  

    GuardarProducto(clave){

         alert("El producto ha sido guardado");
        return this;
    }

}