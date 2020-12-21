<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
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
    <title>Inicio de Sesión</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body onload="cargarCatalogo()">

    <section style="padding-bottom: 40px;">
        <p style="margin-top:15%; text-align: center; color: white; font-size: 35px; font-family: 'Courier New', Courier, monospace;">
            <a href="#"><span id="inicioS" style="color: blue;">Inicio Sesión</a> | <a href="#"><span id="registroS">Registro</a>
        </p>

        <div align="center" style="width: 20%;">
            <form name="loginForm" method="get" action="./inicioSesion" id="inicio">
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%" type="email" name="correo" pattern="[a-zA-Z0-9.]{1,}@[a-zA-Z0-9]{1,}\.[a-zA-Z0-9]{2,}" placeholder="Correo Electrónico">
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;margin-top:10px" type="password" name="password" placeholder="Contraseña">
                <br><input style="margin-left:230%" type="Submit" value="Iniciar Sesión" name="iniciarsesion">
                <input type="hidden" value="0" name="opcion">
                <p style="display:block;border:none;width:100%;margin-left:200%;margin-top:20px;color:red;" id="error">${registrado}</p>
            </form>
            <form name="loginForm" method="post" action="./inicioSesion" id="registro">
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%" type="email" maxlength="100" name="correo" pattern="[a-zA-Z0-9.]{1,}@[a-zA-Z0-9]{1,}.[a-zA-Z0-9]{2,}" placeholder="Correo Electrónico*" required>
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;margin-top:10px" type="password" minlength="8" maxlength="30" name="password" placeholder="Contraseña*" required>
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;margin-top:10px" type="text" name="usuario" maxlength="20" placeholder="Nombre de Usuario*" required>
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;margin-top:10px" type="text" name="nombre" pattern="[a-zA-Zá-úÁ-Ú]{2,}" maxlength="20" placeholder="Nombre*" required>
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;margin-top:10px" type="text" name="apellido1" pattern="[a-zA-Zá-úÁ-Ú]{2,}" maxlength="30" placeholder="Apellido 1*" required>
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;margin-top:10px" type="text" name="apellido2" pattern="[a-zA-Zá-úÁ-Ú]{2,}" maxlength="30" placeholder="Apellido 2*" required>
                <p style="display:block;border:none;width:100%;margin-left:200%;margin-top:20px;color:white">Sexo*</p>
                <div style="display:block;border:none;width:100%;margin-left:200%;margin-top:20px;background-color:white; padding: 2%">
                    <input style="display:inline" type="radio" id="hombre" name="sexo" value="h" checked>
                    <label for="todo">Hombre</label>
                    <input style="display:inline" type="radio" id="mujer" name="sexo" value="m">
                    <label for="mujer">Mujer</label>
                    <input style="display:inline" type="radio" id="otro" name="sexo" value="n">
                    <label for="otro">No Binario</label>
                </div>
                <p style="display:block;border:none;width:100%;margin-left:200%;margin-top:20px;color:white">Fecha de Nacimiento*</p>
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;" type="date" max="2016-01-01" placeholder="Fecha de Nacimiento*" name="fechaNacimiento" required>
                <input style="padding:8px;display:block;border:none;border-bottom:1px solid #ccc;width:100%;margin-left:200%;margin-top:10px" type="tel" name="telefono" pattern="[0-9]{9}" placeholder="Teléfono*" required>
                <div style="display:block;border:none;width:100%;margin-left:200%;margin-top:20px;">
                    <input style="display: inline;" id="check" type="checkbox" required>
                    <label for="check" style="color: white;">Aceptar términos y condiciones*</label>
                </div>
                <br><input style="margin-left:230%" type="Submit" value="Registrarse" name="registrarse">
                <input type="hidden" value="1" name="opcion">
            </form>
        </div>
    </section>

    <script src="Scripts/inicioSesion.js"></script>
</body>

</html>