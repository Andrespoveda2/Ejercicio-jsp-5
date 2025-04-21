<%-- 
    Document   : loginError
    Created on : 11/04/2025, 11:55:53 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error de Login</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Error de autenticación</h1>
    <p style="color:red;"><%= session.getAttribute("errorLogin") %></p>
    <a href="login.jsp">Intentar de nuevo</a>
</body>
</html>
