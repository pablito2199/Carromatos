<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page session="true" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <a href="index.jsp">
        <figure>
            <img src="Images/logo.png" title="logo" id="logo">
        </figure>
        <h1 id="titulo">
            <em>CARROMATOS</em>
        </h1>
    </a>
    <c:choose>
        <c:when test="${empty usuario}">
            <a href="iniciosesion.jsp">
        </c:when>
        <c:otherwise>
            <a>
        </c:otherwise>
    </c:choose>
        <div id="busqueda" style=" padding-right: 15px;">
            <img src="Images/user.png " title="Buscar" style="padding: 3%; padding-left: 5%;"">
            <c:choose>
                <c:when test="${not empty user}">
                    <span style="color: white; padding-right: 10px;">${user}</span>
                </c:when>
                <c:otherwise>
                    <c:choose>
                        <c:when test="${not empty usuario}">
                            <c:set var="user" value="${usuario}"/>
                            <span style="color: white; padding-right: 10px;">${usuario}</span>
                            <form name="catalogoForm" method="post" action="./inicioSesion">
                                <input type="hidden" name="cerrar" value="1">
                                <button style="cursor: pointer; background: transparent; color: white; width: 60px; height: 50px; text-align:center;" type="submit">Cerrar<br/>Sesión</button>
                            </form>
                        </c:when>
                        <c:otherwise>
                            <span style="padding-left: 5%;">Iniciar Sesión</span>
                        </c:otherwise>
                    </c:choose>
                </c:otherwise>
            </c:choose>
        </div>
    </a>
</header>