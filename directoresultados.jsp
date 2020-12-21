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
    <title>Motorsport</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="Stylesheets/principal.css">
    <link rel="stylesheet" href="Stylesheets/directoresultados.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <%@ include file="Contenedores/header.jsp" %>

    <%@ include file="Contenedores/nav.jsp" %>  

    <section>
        <p>
            <h3 align="right"><em>Directo/Resultados</em></h3>
        </p>
        <div align="center">
            <figure>
                <img id="bandera" src="Images/banderarusa.png" title="Bandera de Rusia" width="1300" height="100">
            </figure>
            <div id="textoEncima"><strong>GP RUSIA 2020 - SOCHI AUTODROM</strong></div>
        </div>
        <div align="center">
            <table>
                <tr align="left">
                    <th>POS</th>
                    <th>PILOTO</th>
                    <th>Nº</th>
                    <th>EQUIPO</th>
                    <th>TIEMPO</th>
                    <th>D. LÍDER</th>
                    <th>VUELTAS</th>
                </tr>
                <tr id="mercedes1">
                    <td>1</td>
                    <td>L. HAMILTON</td>
                    <td>44</td>
                    <td>MERCEDES-AMG</td>
                    <td>1'33"519</td>
                    <td>+0"000</td>
                    <td>38</td>
                </tr>
                <tr id="redbull1">
                    <td>2</td>
                    <td>M. VERSTAPPEN</td>
                    <td>33</td>
                    <td>REDBULL HONDA</td>
                    <td>1'33"678</td>
                    <td>+2"358</td>
                    <td>38</td>
                </tr>
                <tr id="mercedes2">
                    <td>3</td>
                    <td>V. BOTTAS</td>
                    <td>77</td>
                    <td>MERCEDES-AMG</td>
                    <td>1'33"678</td>
                    <td>+8"781</td>
                    <td>38</td>
                </tr>
                <tr id="renault1">
                    <td>4</td>
                    <td>D. RICCIARDO</td>
                    <td>3</td>
                    <td>RENAULT F1 TEAM</td>
                    <td>1'33"678</td>
                    <td>+15"869</td>
                    <td>38</td>
                </tr>
                <tr id="mclaren1">
                    <td>5</td>
                    <td>C. SAINZ</td>
                    <td>55</td>
                    <td>MCLAREN RENAULT</td>
                    <td>1'33"678</td>
                    <td>+15"941</td>
                    <td>38</td>
                </tr>
                <tr id="mclaren2">
                    <td>6</td>
                    <td>L. NORRIS</td>
                    <td>4</td>
                    <td>MCLAREN RENAULT</td>
                    <td>1'33"678</td>
                    <td>+17"000</td>
                    <td>38</td>
                </tr>
                <tr id="redbull2">
                    <td>7</td>
                    <td>A. ALBON</td>
                    <td>23</td>
                    <td>REDBULL HONDA</td>
                    <td>1'33"678</td>
                    <td>+21"369</td>
                    <td>38</td>
                </tr>
                <tr id="renault2">
                    <td>8</td>
                    <td>E. OCON</td>
                    <td>31</td>
                    <td>RENAULT F1 TEAM</td>
                    <td>1'33"678</td>
                    <td>+26"384</td>
                    <td>38</td>
                </tr>
                <tr id="rp1">
                    <td>9</td>
                    <td>S. PÉREZ</td>
                    <td>11</td>
                    <td>RACING POINT</td>
                    <td>1'33"678</td>
                    <td>+38"597</td>
                    <td>38</td>
                </tr>
                <tr id="ferrari1">
                    <td>10</td>
                    <td>C. LECLERC</td>
                    <td>16</td>
                    <td>SCUDERIA FERRARI</td>
                    <td>1'33"678</td>
                    <td>+50"214</td>
                    <td>38</td>
                </tr>
                <tr id="tauri1">
                    <td>11</td>
                    <td>P. GASLY</td>
                    <td>10</td>
                    <td>ALPHA TAURI</td>
                    <td>1'33"678</td>
                    <td>+51"255</td>
                    <td>38</td>
                </tr>
                <tr id="alpha2">
                    <td>12</td>
                    <td>K. RÄIKKÖNEN</td>
                    <td>7</td>
                    <td>ALFA ROMEO</td>
                    <td>1'33"678</td>
                    <td>+1'25"655</td>
                    <td>38</td>
                </tr>
                <tr id="rp2">
                    <td>13</td>
                    <td>L. STROLL</td>
                    <td>18</td>
                    <td>RACING POINT</td>
                    <td>1'33"678</td>
                    <td>+1 LAP</td>
                    <td>37</td>
                </tr>
                <tr id="williams1">
                    <td>14</td>
                    <td>G. RUSSELL</td>
                    <td>63</td>
                    <td>WILLIAMS</td>
                    <td>1'33"678</td>
                    <td>+1 LAP</td>
                    <td>37</td>
                </tr>
                <tr id="tauri2">
                    <td>15</td>
                    <td>D. KVYAT</td>
                    <td>26</td>
                    <td>ALPHA TAURI</td>
                    <td>1'33"678</td>
                    <td>+1 LAP</td>
                    <td>37</td>
                </tr>
                <tr id="alpha1">
                    <td>16</td>
                    <td>A. GIOVINAZZI</td>
                    <td>99</td>
                    <td>ALFA ROMEO</td>
                    <td>1'33"678</td>
                    <td>+1 LAP</td>
                    <td>37</td>
                </tr>
                <tr id="williams2">
                    <td>17</td>
                    <td>N. LATIFI</td>
                    <td>6</td>
                    <td>WILLIAMS</td>
                    <td>1'33"678</td>
                    <td>+1 LAP</td>
                    <td>37</td>
                </tr>
                <tr id="haas1">
                    <td>18</td>
                    <td>R. GROSJEAN</td>
                    <td>8</td>
                    <td>HAAS F1 TEAM</td>
                    <td>-------</td>
                    <td>DNF</td>
                    <td>7</td>
                </tr>
                <tr id="haas2">
                    <td>19</td>
                    <td>K. MAGNUSSEN</td>
                    <td>20</td>
                    <td>HAAS F1 TEAM</td>
                    <td>-------</td>
                    <td>DNF</td>
                    <td>0</td>
                </tr>
                <tr id="ferrari2">
                    <td>20</td>
                    <td>S. VETTEL</td>
                    <td>5</td>
                    <td>SCUDERIA FERRARI</td>
                    <td>-------</td>
                    <td>DNF</td>
                    <td>0</td>
                </tr>
            </table>
        </div>
    </section>

    <%@ include file="Contenedores/footer.jsp" %>
    
    <script src="Scripts/color_tabla.js"></script>
    <script src="Scripts/enlaces.js"></script>
</body>

</html>