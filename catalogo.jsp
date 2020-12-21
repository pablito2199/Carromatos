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
    <title>Catálogo</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/catalogo.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body onload="cargarCatalogo()">

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %> 

    <section style="padding-bottom: 40px;">
        <p>
            <h3 align="right"><em>Catálogo</em></h3>
        </p>

        <div>
            <div class="contenedor">
                <div class="filtrado">
                    <input type="text" id="miFiltrado" placeholder="Marcas">
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="filtro" id="todo" checked onclick="cargarCatalogo()">
                                <label for="todo">Todo</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="radio" name="filtro" id="audi" onclick="cargarCatalogo('Audi')">
                                <label for="audi">Audi</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="radio" name="filtro" id="astonmartin" onclick="cargarCatalogo('Aston Martin')">
                                <label for="astonmartin">Aston Martin</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="radio" name="filtro" id="bmw" onclick="cargarCatalogo('BMW')">
                                <label for="bmw">BMW</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="radio" name="filtro" id="ferrari" onclick="cargarCatalogo('Ferrari')">
                                <label for="ferrari">Ferrari</label>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="contenedor">
                    <table id="tablaCatalogo" style="padding-left: 40px; text-align: center; font-weight: bold;"></table>
                </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/catalogo.js "></script>
    <script src="Scripts/enlaces.js"></script>
</body>

</html>