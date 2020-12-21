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
    <title>Marcas</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/columnas.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  

    <section>
        <p>
            <h3 align="right"><em>Marcas</em></h3>
        </p>
        <div class="contenedor">
            <div class="columna">
                <figure>
                    <img src="Images/Logos/astonmartinlogo.png" title="Aston Martin" width="280" height="330">
                    <figcaption>
                        <p>Aston Martin</p>
                    </figcaption>
                </figure>
            </div>
            <div class="columna">
                <figure>
                    <img src="Images/Logos/bmwlogo.png" title="BMW" width="280" height="330">
                    <figcaption>
                        <p>BMW</p>
                    </figcaption>
                </figure>
                <figure>
                    <img src="Images/Logos/audilogo.png" title="Audi" width="320" height="160" style="margin-top: 15%;">
                    <figcaption>
                        <p>Audi</p>
                    </figcaption>
                </figure>
            </div>
            <div class="columna">
                <figure>
                    <img src="Images/Logos/ferrarilogo.png" title="Ferrari" width="280" height="330">
                    <figcaption>
                        <p style="margin-left: 40px;">Ferrari</p>
                    </figcaption>
                </figure>
            </div>
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
</body>

</html>