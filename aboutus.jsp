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
    <title>About Us</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">

    <style>
        section p {
            color: white;
            text-align: justify;
            text-indent: 40px;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body onload="cargarTrabajadores()">

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  

    <section style="margin-bottom: 3%;">
        <p>
            <h3 align="right"><em>About Us</em></h3>
        </p>

        <div id="trabajadores"></div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/trabajadores.js "></script>
    <script src="Scripts/enlaces.js"></script>
</body>

</html>