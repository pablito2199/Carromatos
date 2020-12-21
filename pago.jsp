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
    <title>Pago</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">

    <style>
        td, th {
        	border: 2px solid #596062;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  
    
    <section>
        <p>
            <h3 align="right"><em>Productos Comprados</em></h3>
        </p>
        
        <div style=" padding-top: 2%; padding-bottom: 2%">
            <table align="center" id="tablaCatalogo" style="padding-left: 40px; text-align: center; font-weight: bold; border:">
                <tr style="color: white; font-size: 20px;">
                    <th style="padding: 3%"><b>Producto</b></th>
                    <th style="padding: 3%"><b>Cantidad</b></th>
                    <th style="padding: 3%"><b>Importe</b></th>
                </tr
                <c:set var="carritoProducto" value="${CarritoProd.lista}" />
                <c:forEach var="actualProducto" items="${carritoProducto}" >
                    <tr style="color: #707070;">
                        <td style="color: #707070;">
                            <figure>
                                <img src="${actualProducto.value.imagen}" title="${actualProducto.value.nombre}" width="50px">
                            </figure>
                            ${actualProducto.value.nombre}
                        </td>
                        <td style="color: #707070;">
                            ${actualProducto.value.cantidad}
                        </td>
                        <td style="color: #707070;">
                            <fmt:formatNumber value="${actualProducto.value.precio}" type="currency"/>
                        </td>
                    </tr>
                </c:forEach>
                <tr style="color: orange;">
                    <td></td>
                    <td style="font-size: 18px"><b>IMPORTE TOTAL</b></td>
                    <td style="font-size: 18px"><input type="hidden" name="importe" value="${CarritoProd.importe}"/><b><fmt:formatNumber value="${CarritoProd.importe}" type="currency"/></b></td>
                </tr>
            </table>
        </div>
        <div style="text-align: center; border: 2px solid #707070; margin-bottom: 2%; width: 30%; margin-left: 36.25%">
            <h2 style="color: white;"><u>Info. de contacto</u></h2>
            <p style="color: #707070; font-weight: bold">Correo: ${initParam['email']}</p>
            <p style="color: #707070; font-weight: bold">Teléfono: ${initParam['telefono']}</p>
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
</body>

</html>