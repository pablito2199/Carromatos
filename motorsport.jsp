<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="formula1, carrera, motor, coche, competicion">
    <meta name="description" content="Sitio web con contenido para los más aficionados al motor">
    <title>Motorsport</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/motorsport.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  

    <section>
        <p>
            <h3 align="right"><em>Motorsport</em></h3>
        </p>

        <div class="contenedor">
            <div id="desplegable">
                <p><u>Categorías</u></p>
                <select id="mySelect" name="Categorías" style="background-color: #00FF2B; color: #2A2789; font-weight: bold;">
                    <option id="opf1" selected="yes" style=" font-weight: bold;">F1</option>
                    <option id="opf2" style=" font-weight: bold;">F2</option>
                    <option id="opwec" style=" font-weight: bold;">WEC</option>
                </select>
            </div>
            <div id="content">
                <div id="f1">
                    <div align="center">
                        <a href="directoresultados.jsp">
                            <figure>
                                <img src="Images/banderarusa.png" title="Bandera de Rusia" width="1100" height="100">
                            </figure>
                            <p id="directo">Sigue el GP de Rusia en directo</p>
                        </a>
                    </div>
                    <div id="noticia">
                        <a href="ejemplonoticia.jsp">
                            <figure>
                                <img src="Images/gaslyitalia.png" title="Gasly levantando el trofeo de Monza" width="800" height="575">
                                <br clear="all">
                                <figcaption>
                                    <h2>Gasly gana por primera vez para Alpha Tauri en el regreso de la F1 a Monza.</h2>
                                </figcaption>
                            </figure>
                        </a>
                    </div>
                </div>

                <div id="f2">
                    <div id="noticia">
                        <figure>
                            <img src="Images/f2.jpg" title="Robert Shwartzman se acerca a la F1." width="800" height="575">
                            <br clear="all">
                            <figcaption>
                                <h2 style="color: white;">Robert Shwartzman se acerca al equipo Haas de F1 según informan los medios.</h2>
                            </figcaption>
                        </figure>
                    </div>
                </div>

                <div id="wec">
                    <div id="noticia">
                        <figure>
                            <img src="Images/wec.jpg" title="Toyota TS050" width="950" height="575">
                            <br clear="all">
                            <figcaption>
                                <h2 style="color: white;">El Toyota TS050 de 2020 está a una carrera de ganar el título del WEC por segundo año consecutivo.</h2>
                            </figcaption>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
    <script>
        $(document).ready(function() {
            $("#f2").hide(1);
            $("#wec").hide(1);
        })

        $("#mySelect").change(function() {
            var value = $(this).val();
            if (value == 'F1') {
                $("#wec").hide(500);
                $("#f2").hide(500);
                $("#f1").show(500);
            } else if (value == 'F2') {
                $("#wec").hide(500);
                $("#f1").hide(500);
                $("#f2").show(500);
            } else {
                $("#f1").hide(500);
                $("#f2").hide(500);
                $("#wec").show(500);
            }
        })
    </script>
</body>

</html>