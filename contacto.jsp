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
    <title>Contacto</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/contacto.css">

    <style>
        .contenedor {
            display: flex;
            align-items: flex-start;
            justify-content: center;
        }
        
        .columna {
            padding-left: 2%;
            width: 100%;
            border: 2px solid black;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %> 

    <section>
        <p>
            <h3 align="right"><em>Contacto</em></h3>
        </p>
        <div class="contenedor">
            <div class="columna" id="izquierda">
                <p>
                    <h4><strong><u>Miembros</u></strong></h4>
                </p>
                <p><em>Pablo Tarrío Otero</em></p>
                <p><em>Antonio Lobato Porras</em></p>
                <p><em>Cristóbal Rosaleny Cerveró</em></p>
            </div>
            <div class="columna" id="derecha">
                <p>
                    <h4><strong><u>Contáctanos</u></strong></h4>
                </p>
                <p><address><em>carromatos@gmail.com</em></address></p>
                <p><address><em>+34 678542221</em></address></p>
                <p><address><em>Calle Motor 21, Santiago de Compostela, España</em></address></p>
                <p id="contacta"><a href="https://gmail.com" target="_blank"><strong>Contacta</strong></a></p>
            </div>
        </div>
        <div class="centro">
            <p>
                <h4><strong><u>FAQ - Deja aquí tu pregunta</u></strong></h4>
            </p>
            <input type="text" placeholder="Inserta aquí tu pregunta.">
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>
    
    <script src="Scripts/contacta.js"></script>
    <script src="Scripts/enlaces.js"></script>
</body>

</html>