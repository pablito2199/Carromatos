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
    <title>Concesionario</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/concesionario.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %> 

    <section>
        <p>
            <h3 align="right"><em>Concesionario</em></h3>
        </p>
        <div class="concesionario">
            <div class="columna">
                <a href="marcas.jsp">
                    <figure>
                        <img src="Images/fondomarcas.jpg" title="Marcas" width="600" height="450">
                    </figure>
                    <div class="texto_encimai">MARCAS</div>
                </a>
            </div>
            <div class="columna">
                <a href="catalogo.jsp">
                    <figure>
                        <img src="Images/fondocatalogo.jpg" title="Catálogo" width="600" height="450">
                    </figure>
                    <div class="texto_encimad">CATÁLOGO</div>
                </a>
            </div>
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
</body>

</html>