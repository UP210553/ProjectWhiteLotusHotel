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
function GuardarProductoAjax() {
    $.ajax({
        url: 'php/insert.php',
        type: 'POST',
        data: {
            nombre: 'Hello',
            marca: 'World',

        },
        contentType: 'application/json; charset=utf8',
        success: function(response){
            alert(response.status);
        },
        error: function(error){
            alert("error: " + error);
        }
    })
}