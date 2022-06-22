function validar() {
    let valorPoblacion=document.getElementById("pobla")
    let btn = document.getElementById("guardar")
    if (valorPoblacion.value < 0 || valorPoblacion > 2500000){
        alert("PAILAS ESE VALOR NO SE PUEDE INGRESAR"+valorPoblacion);
    }
};