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
    <title>Galería</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">

    <style>
        .contenedor {
            column-count: 3;
            margin: auto;
            width: 90vw;
        }
        
        .contenedor img {
            width: 100%;
            transition: 0.2s ease-in-out;
            border-radius: 4px;
        }
        
        .contenedor img:hover {
            transform: scale(1.05);
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  

    <section>
        <p>
            <h3 align="right"><em>Galería</em></h3>
        </p>
        <div class="contenedor">
            <figure>
                <img class="imagenes" src="Images/gaslyitalia.png" title="Gasly levantando el trofeo de Monza">
            </figure>
            <figure>
                <img class="imagenes" src="Images/Modelos/ferrarif8tributo.jpg" title="Ferrari F8 Tributo">
            </figure>
            <figure>
                <img class="imagenes" src="Images/sochiplano.png" title="Plano del circuito de Sochi">
            </figure>
            <figure>
                <img class="imagenes" src="Images/Modelos/astonmartinrapide.jpg" title="Aston Martin Rapide">
            </figure>
            <figure>
                <img class="imagenes" src="Images/Modelos/bmwm3.jpg" title="BMW M3">
            </figure>
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
</body>

</html>