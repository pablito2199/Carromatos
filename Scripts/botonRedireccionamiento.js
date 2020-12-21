function accionboton() {
    document.querySelector(".boton").onclick = aviso;
}

function aviso() {
    alert("Será redireccionado a otra página. ¿Desea continuar?");
}

window.onload = accionboton;