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
    <title>Victoria de Gasly en Monza</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">

    <style>
        section p {
            color: #707070;
            text-align: justify;
            text-indent: 40px;
        }
        
        h2 {
            font-size: 50px;
        }
        
        h5 {
            font-size: 20px;
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
            <h3 align="right"><em>Victoria de Gasly en Monza</em></h3>
        </p>
        <br clear="all">

        <article>
            <div align="center">
                <figure>
                    <img src="Images/gaslyitalia.png" title="Gasly levantando el trofeo de Monza" width="700" height="500">
                    <br clear="all">
                    <figcaption style="color: white;">
                        <h2>Gasly gana por primera vez para Alpha Tauri en el regreso de la F1 a Monza.</h2>
                    </figcaption>
                </figure>
                <div class="contenido">
                    <h5 style="color: white;">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit tortor odio, non accumsan libero vestibulum nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam mollis efficitur eros vitae lobortis. Duis
                        sed tempus lectus, et efficitur urna. Pellentesque tristique mi non placerat faucibus.
                    </h5>

                    <p>Integer arcu nibh, volutpat in fringilla quis, pulvinar at metus. Donec et mi sed nisi feugiat bibendum. In aliquet pulvinar risus, non bibendum erat vulputate eget. Phasellus laoreet ullamcorper odio, ac gravida tortor tempus quis.
                        Suspendisse potenti. Pellentesque vehicula tellus ut erat sollicitudin commodo. Ut ultricies libero ac sem semper, at vestibulum justo tincidunt. Sed gravida maximus ipsum a dignissim. Nunc tincidunt feugiat sem, nec convallis
                        libero porta sit amet. Morbi vel faucibus magna. Curabitur mollis eleifend purus. Nulla a fermentum purus.</p>

                    <p>Etiam convallis purus at faucibus volutpat. Maecenas sed metus non metus dictum mattis. Sed ullamcorper elementum leo, quis pellentesque lorem iaculis eu. Phasellus commodo arcu id felis feugiat fringilla. Curabitur ligula turpis,
                        viverra nec turpis ac, sollicitudin rhoncus metus. Mauris eu mauris nisi. Nullam vel justo magna. Fusce fermentum, justo eget tempus consectetur, elit libero maximus augue, sit amet finibus urna velit vitae odio. Pellentesque sit
                        amet vulputate metus. Donec a tincidunt massa. Morbi pellentesque, ligula in pellentesque tincidunt, odio nisi pharetra sem, non pharetra elit massa in purus. Integer venenatis nunc a ultricies varius. Donec sed bibendum nisl.
                        Nunc eu elit id nulla gravida efficitur.</p>

                    <p>Proin lobortis tortor in massa dapibus mattis. Duis eu erat sit amet ligula rhoncus feugiat at pretium ex. Aliquam turpis sapien, venenatis id suscipit venenatis, sollicitudin vel ligula. Nam aliquet ligula lacus, eu porttitor eros
                        ultricies in. Suspendisse eleifend quam sed ultricies suscipit. Vestibulum ut convallis massa. Donec id posuere metus, non finibus est. Morbi tempus justo viverra erat scelerisque lacinia. Curabitur sagittis mi convallis, congue
                        felis ut, semper velit. Nullam ut justo ullamcorper, maximus nisi eget, aliquet erat. Integer ut diam in orci blandit ultrices. Fusce vel viverra metus. Curabitur sed risus sem. Curabitur aliquam dolor sit amet nulla commodo suscipit.</p>

                    <p>Suspendisse at erat vel sapien egestas finibus. Nullam massa magna, suscipit sit amet magna eu, lacinia viverra elit. Fusce scelerisque sem ut volutpat condimentum. Maecenas sodales, justo quis interdum ornare, eros ante iaculis nulla,
                        vel euismod purus felis et eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis aliquet ultrices diam nec ornare. Sed posuere in dolor et fringilla. Cras pellentesque id nisi
                        quis vehicula. Quisque pretium dictum mollis. Sed leo eros, tempus sit amet vulputate eu, elementum nec sem. Aliquam non efficitur sapien, at rhoncus nulla. Sed in ornare diam, in fermentum lorem. Fusce venenatis lectus turpis,
                        sit amet lacinia ligula efficitur pellentesque.</p>
                </div>
            </div>
        </article>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>

    <script src="Scripts/enlaces.js"></script>
</body>

</html>