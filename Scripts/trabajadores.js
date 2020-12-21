function cargarTrabajadores() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var jsonObj = JSON.parse(this.responseText)
            var trabajador = '';
            for (x in jsonObj.Trabajadores) {
                var imagen = jsonObj.Trabajadores[x].Imagen;
                var nombre = jsonObj.Trabajadores[x].Nombre;
                var edad = jsonObj.Trabajadores[x].Edad;
                var nacimiento = jsonObj.Trabajadores[x].Nacimiento;
                var cualidad = jsonObj.Trabajadores[x].Cualidad;
                trabajador += `<div style="display: flex; align-items: center; margin-top: 3%; align-items: flex-start; margin-left: 10%">
                    <div>
                        <img src="${imagen}" width="300" height="300">
                    </div>
                    <div style="flex: 1 0 auto; display: flex; flex-flow: column; padding: 0em 2em;">
                        <h2 style="color: white">${nombre}</h2>
                        <div style="color: #707070; font-size: 17px; font-weight: bold">
                            <ul>
                                <li>Edad: ${edad} años</li>
                                <li>Lugar de nacimiento: ${nacimiento}</li>
                                <li>${cualidad}</li>
                            </ul>
                        </div>
                    </div>
                </div>`;
            }
            document.getElementById('trabajadores').innerHTML = trabajador;
        }
    };
    xhttp.open("GET", "./Data/trabajadores.json", true);
    xhttp.send();
}