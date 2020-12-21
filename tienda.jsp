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
    <title>Tienda</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">

    <style>
        .contenedor {
            column-count: 4;
            margin: auto;
            width: 90vw;
            text-align: center;
            margin-top: 4%;
        }
        
        .contenedor img {
            width: 100%;
        }

        .anadir {
            margin: 0px 20px 0px 15px;
            font-size: 20px;
            font-family: "Modern No. 20"; 
            cursor: pointer; 
            background-color: green; 
            border-color: white; 
            border-style: solid;
            outline: none; 
            padding: 15px; 
            color: white;
        }

        #carrito {
            text-align: center;
            background-color: orange;
            font-size: 20px;
            font-family: "Modern No. 20";
            color: white;
            border-color: white;
            border-style: solid;
            width: 150px;
        }

        .botones {
            display: flex;
            align-items: flex-start;
            justify-content: center;
            position: sticky;
            top: 0px;
            background-color: #222222;
        }

        .carro {
            display: flex;
            align-items: flex-start;
            justify-content: center;
            position: sticky;
            top: 0px;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  
    
    <section>
        <h3 align="right"><em>Tienda</em></h3>

            <div class="botones">
                <div id="carrito">
                    <a href="./carrito">
                        <div class="carro">
                            <img src="Images/carrito.png " title="Carrito" style="padding: 1%; padding-left: 5%; padding-top: 3%;" width="50px">
                            <span style="padding-left: 5%; margin-top: 10%">Carrito</span>
                        </div>
                    </a>
                </div>
            </div>
             
            <div class="contenedor">
                <c:forEach var="actualProducto" items="${productos}">
                    <form name="catalogoForm" method="post" action="./tienda">
                        <figure>
                            <img class="imagenes" src="${actualProducto.value.imagen}" title="${actualProducto.value.nombre}" width="175px">
                            <input type="hidden" name="imagen" value="${actualProducto.value.imagen}">
                            <figcaption style="color: white; margin-bottom: 65px;">
                                <p style="font-size: 20px;">${actualProducto.value.nombre}</p>
                                <input type="hidden" name="nombre" value="${actualProducto.value.nombre}">
                                <c:choose>
                                    <c:when test="${actualProducto.value.cantidad != 0}">
                                        <p>En stock: <span style="color: orange;">${actualProducto.value.cantidad}</span></p>
                                    </c:when>
                                    <c:otherwise>
                                        <p style="color: red;">Sin stock</p>
                                    </c:otherwise>
                                </c:choose>
                                <p style="font-weight: bold; color: #707070">${actualProducto.value.precio} €</p>
                                <input type="hidden" name="precio" value="${actualProducto.value.precioNum}">
                                <span style="color: #707070">Cantidad: </span><input style="width: 40px; border-radius: 4px;" type="number" name="cantidad" min="1" max="${actualProducto.value.cantidad}" value="1">
                                <input class="anadir" type="Submit" value="Añadir" name="anadir">
                            </figcaption>
                        </figure>
                    </form>
                </c:forEach>
            </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
    <script>
        $("input").mouseover(function() {
            $(this).css("text-decoration", "underline");
        });
        $("input").mouseout(function() {
            $(this).css("text-decoration", "none");
        });
    </script>
</body>

</html>