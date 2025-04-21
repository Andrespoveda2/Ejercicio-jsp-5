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
         <video autoplay muted loop id="videoFondo">
        <source src="video.mp4" type="video/mp4">
        Tu navegador no soporta video en HTML5.
    </video>
    <div class="error">
    <h1>Error de autenticación</h1>
    <p style="color:red;"><%= session.getAttribute("errorLogin") %></p>
    <a href="login.jsp">Intentar de nuevo</a>
    </div>
</body>
</html>
