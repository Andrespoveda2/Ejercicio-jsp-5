<%-- 
    Document   : principal
    Created on : 11/04/2025, 11:56:39 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = (String) session.getAttribute("usuario");
    if (usuario == null) {
        response.sendRedirect("index.jsp"); // redirige si no está logeado
        return;
    }
%>
<html>
<head>
    <title>Página Principal</title>
    <style>
        body { font-family: Arial; background-color: #f2f2f2; padding: 20px; }
        .container { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: auto; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bienvenido, <%= usuario %>!</h1>
        <p>Esta es tu página principal, ¡disfrútala!</p>
        <a href="index.jsp">Volver al inicio</a> |
        <a href="logout.jsp">Cerrar sesión</a>
    </div>
</body>
</html>
