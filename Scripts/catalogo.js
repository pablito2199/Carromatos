function cargarCatalogo(marca) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            colocarCatalogo(this, marca);
        }
    };
    xhttp.open("GET", "./Data/catalogo.xml", true);
    xhttp.send();
}

function colocarCatalogo(xml, marca) {
    var i;
    var XMLdocumento = xml.responseXML;
    var tabla = '<tr style="color: white; font-size: 20px;"><th></th><th style="padding-bottom: 30px; padding-left: 40px;">Marca</th><th style="padding-bottom: 30px; padding-left: 40px;">Modelo</th><th style="padding-bottom: 30px; padding-left: 40px;">Precio</th><th style="padding-bottom: 30px; padding-left: 40px;">Motor</th><th style="padding-bottom: 30px; padding-left: 40px;">Año de Salida</th></tr>';
    var x = XMLdocumento.getElementsByTagName("MODELO");
    if (marca != null) {
        for (i = 0; i < x.length; i++) {
            if (marca == x[i].getElementsByTagName("NOMBREMARCA")[0].childNodes[0].nodeValue) {
                var im1 = new Image();
                im1.src = x[i].getElementsByTagName("IMAGEN1")[0].childNodes[0].nodeValue;
                var im2 = new Image();
                im2.src = x[i].getElementsByTagName("IMAGEN2")[0].childNodes[0].nodeValue;
                var ancho1 = x[i].getElementsByTagName("ANCHO1")[0].childNodes[0].nodeValue;
                var ancho2 = x[i].getElementsByTagName("ANCHO2")[0].childNodes[0].nodeValue;
                var nombremarca = x[i].getElementsByTagName("NOMBREMARCA")[0].childNodes[0].nodeValue;
                var nombremodelo = x[i].getElementsByTagName("NOMBREMODELO")[0].childNodes[0].nodeValue;
                var precio = x[i].getElementsByTagName("PRECIO")[0].childNodes[0].nodeValue;
                var motor = x[i].getElementsByTagName("MOTOR")[0].childNodes[0].nodeValue;
                var ano = x[i].getElementsByTagName("ANO")[0].childNodes[0].nodeValue;

                tabla += `<tr style="color: #707070;">
                    <td style="padding-left: 40px; padding-bottom: 10px;"><img src=${im1.src} width=${ancho1} /></td>
                    <td style="padding-left: 40px;"><img src=${im2.src} width=${ancho2} /><br>${nombremarca}</td>
                    <td style="padding-left: 40px;">${nombremodelo}</td>
                    <td style="padding-left: 40px;">${precio}</td>
                    <td style="padding-left: 40px;">${motor}</td>
                    <td style="padding-left: 40px;">${ano}</td>
                </tr>`;
            }
        }
    } else {
        for (i = 0; i < x.length; i++) {
            var im1 = new Image();
            im1.src = x[i].getElementsByTagName("IMAGEN1")[0].childNodes[0].nodeValue;
            var im2 = new Image();
            im2.src = x[i].getElementsByTagName("IMAGEN2")[0].childNodes[0].nodeValue;
            var ancho1 = x[i].getElementsByTagName("ANCHO1")[0].childNodes[0].nodeValue;
            var ancho2 = x[i].getElementsByTagName("ANCHO2")[0].childNodes[0].nodeValue;
            var nombremarca = x[i].getElementsByTagName("NOMBREMARCA")[0].childNodes[0].nodeValue;
            var nombremodelo = x[i].getElementsByTagName("NOMBREMODELO")[0].childNodes[0].nodeValue;
            var precio = x[i].getElementsByTagName("PRECIO")[0].childNodes[0].nodeValue;
            var motor = x[i].getElementsByTagName("MOTOR")[0].childNodes[0].nodeValue;
            var ano = x[i].getElementsByTagName("ANO")[0].childNodes[0].nodeValue;

            tabla += `<tr style="color: #707070;">
                <td style="padding-left: 40px; padding-bottom: 10px;"><img src=${im1.src} width=${ancho1} /></td>
                <td style="padding-left: 40px;"><img src=${im2.src} width=${ancho2} /><br>${nombremarca}</td>
                <td style="padding-left: 40px;">${nombremodelo}</td>
                <td style="padding-left: 40px;">${precio}</td>
                <td style="padding-left: 40px;">${motor}</td>
                <td style="padding-left: 40px;">${ano}</td>
            </tr>`;
        }
    }
    document.getElementById("tablaCatalogo").innerHTML = tabla;
}