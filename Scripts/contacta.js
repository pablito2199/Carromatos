var boton;

function accionboton() {
    boton = document.getElementById("contacta");
    boton.addEventListener("mouseover", colorNuevo, false);
    boton.addEventListener("mouseout", colorAntiguo, false);
    document.querySelector("#derecha p:last-child").onclick = redireccion;
}

function colorNuevo() {
    boton.style.backgroundColor = "green";
    boton.style.fontSize = "25px";
}

function colorAntiguo() {
    boton.style.backgroundColor = "#2A2789";
    boton.style.fontSize = "20px";
}

function redireccion() {
    alert("Será redireccionado a otra página. ¿Desea continuar?");
}

window.onload = accionboton;