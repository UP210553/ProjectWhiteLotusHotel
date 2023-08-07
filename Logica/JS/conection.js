const API = 'http://localhost:5000'
function Hola() {
    const cuenta = document.getElementById('count').value;
    const clave = document.getElementById('ping').value;
    
    const pagar = async () => {
        try {
            const pago = await fetch(`${API}/pago`, {
                method:'POST',
                headers:{
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    cuenta,
                    clave
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data == "Cuenta no registrada"){
                    alert(data);
                }
                else{
                    alert("¡Pago procesado!");
                    console.log(data);
                }
            })
        } catch (err) {
            alert("Error: " + err.message);
        }
    }
    pagar();
}