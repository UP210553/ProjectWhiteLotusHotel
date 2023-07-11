function GuardarProducto(){
    debugger;
let variable=document.getElementById("").value;
    const formData = new FormData();
    formData.append("");
    formData.append("");
    formData.append("");

    fetch('php/insert.php', {
        method: 'POST',
        body: formData
    })
    .then(res=>{
        debugger;
    })
}