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
    <title>Carromatos</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/index.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  

    <section>
        <div class="contenedor">
            <div class="columna">
                <a href="ejemplonoticia.jsp ">
                    <figure>
                        <img src="Images/gaslyitalia.png " title="Gasly levantando el trofeo de Monza " width="600 " height="400 ">
                        <figcaption>
                            <h2>Gasly gana por primera vez para Alpha Tauri en el regreso de la F1 a Monza.</h2>
                        </figcaption>
                    </figure>
                </a>
                <figure>
                    <img src="Images/sochiplano.png " title="Plano del circuito de Sochi " align="left " width="600 " height="400 " style="border: 2px solid black; padding: 1%;">
                    <figcaption>
                        <h2>Consulta en este artículo las claves del próximo GP de Rusia. ¿Podrá Hamilton alzarse con la victoria o habrá sorpresa?</h2>
                    </figcaption>
                </figure>
            </div>
            <div class="columna">
                <a href="directoresultados.jsp ">
                    <figure>
                        <img src="Images/banderarusa.png " title="Bandera de Rusia " width="600 " height="191 ">
                    </figure>
                    <p id="directo">Sigue el GP de Rusia en directo</p>
                </a>
                <figure>
                    <img src="Images/astonmartin.png " title="Catálogo de Aston Martin " width="600 " height="700 ">
                    <figcaption>
                        <h2>¡Aston Martin ha sacado sus nuevos modelos para este año 2020! Pincha aquí para descubrirlos.</h2>
                    </figcaption>
                </figure>
                <p id="verde">Aston Martin 2020</p>
            </div>
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
</body>

</html>