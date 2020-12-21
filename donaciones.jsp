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
    <title>Donaciones</title>
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

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %> 

    <section>
        <p>
            <h3 align="right"><em>Donaciones</em></h3>
        </p>

        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit tortor odio, non accumsan libero vestibulum nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam mollis efficitur eros vitae lobortis.
            Duis sed tempus lectus, et efficitur urna. Pellentesque tristique mi non placerat faucibus. Quisque velit ipsum, faucibus cursus metus eu, vestibulum cursus magna. Aenean venenatis, enim vel aliquam consequat, sapien augue posuere augue, a
            commodo sem magna vitae augue.</p>
        <figure align="center">
            <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank" class="boton">
                <input type="hidden" name="cmd" value="_s-xclick">
                <input type="hidden" name="hosted_button_id" value="7RXRYC8X5XTLW">
                <input type="image" src="https://www.paypalobjects.com/es_ES/ES/i/btn/btn_donateCC_LG.gif" name="submit" title="Donar con Paypal" alt="Dona con el botón de PayPal">
                <img src="https://www.paypal.com/es_ES/i/scr/pixel.gif">
            </form>
        </figure>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/botonRedireccionamiento.js"></script>
    <script src="Scripts/enlaces.js"></script>
</body>

</html>