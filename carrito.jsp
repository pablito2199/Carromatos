<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="formula1, carrera, motor, coche, competicion">
    <meta name="description" content="Sitio web con contenido para los más aficionados al motor">
    <title>Carrito</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/catalogo.css">

    <style>
        td, th {
        	border: 2px solid #596062;
        }

        .eliminar {
            background: transparent;
            margin: 0px 20px 0px 15px;
            font-size: 20px;
            font-family: "Modern No. 20"; 
            cursor: pointer; 
            outline: none; 
            border: none;
            padding: 15px; 
            color: white;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  
    
    <section>
        <p>
            <h3 align="right"><em>Carrito</em></h3>
        </p>

        <p style="display:block;border:none;width:100%;color:red; text-align:center;" id="error">${registrado}</p>

        <div style=" padding-top: 2%; padding-bottom: 2%" class="contenedor">
            <form name="carritoFormElim" method="get" action="./carrito">
                <table align="center" id="tablaCatalogo" style="padding-left: 40px; text-align: center; font-weight: bold; border:">
                    <tr style="color: white; font-size: 20px;">
                        <th style="padding: 3%"><b>Producto</b></th>
                        <th style="padding: 3%"><b>Cantidad</b></th>
                        <th style="padding: 3%"><b>Importe</b></th>
                        <c:set var="carritoTamano" value="${CarritoProductos.numTotalProductos}" />
                        <c:choose>
                            <c:when test="${carritoTamano!=0}">
                                <td></td>
                            </c:when>
                        </c:choose>
                    </tr>
    
                    <c:set var="carritoProducto" value="${CarritoProductos.lista}" />
                    <c:forEach var="actualProducto" items="${carritoProducto}" >
                    <tr style="color: #707070;">
                        <td>
                            <figure>
                                <img src="${actualProducto.value.imagen}" title="${actualProducto.value.nombre}" width="50px">
                            </figure>
                            ${actualProducto.value.nombre}
                        </td>
                        <td>
                            ${actualProducto.value.cantidad}
                        </td>
                        <td>
                            <fmt:formatNumber value="${actualProducto.value.precio}" type="currency"/>
                        </td>
                        <c:choose>
                            <c:when test="${carritoTamano!=0}">
                                <td><input type="radio" name="seleccion" value="${actualProducto.key}"/></td>
                            </c:when>
                        </c:choose>
                    </tr>
                    </c:forEach>
                    <tr style="color: orange;">
                        <td></td>
                        <td style="font-size: 18px"><b>IMPORTE TOTAL</b></td>
                        <td style="font-size: 18px"><input type="hidden" name="importe" value="${CarritoProductos.importe}"/><b><fmt:formatNumber value="${CarritoProductos.importe}" type="currency"/></b></td>
                        <c:choose>
                            <c:when test="${CarritoProductos.importe!=0}">
                                    <td style="background-color: red;"><input type="Submit" value="Eliminar" class="eliminar" name="eliminar"></td>
                            </c:when>
                        </c:choose>
                    </tr>
                </table>
            </form>
            <c:choose>
                <c:when test="${CarritoProductos.importe!=0}">
                    <div style="margin-left: 175px; border: 2px solid #596062; padding: 2%; text-align: center;">
                        <a href="./pago">
                            <img src="Images/pago.png" align="center" width="100px">
                            <br>
                            <hr>
                            <p>Pagar</p>
                        </a>
                    </div>
                </c:when>
            </c:choose>
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
        $("input").click(function() {
            $("#error").hide(1);
        });
    </script>
</body>

</html>