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
        <link rel="stylesheet" href="indexcss.css">
    <title>Página Principal</title>
    <style>
        body { font-family: Arial; background-color: #f2f2f2; padding: 20px; }
        .container { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: auto; }
    </style>
</head>
<body>
              <video autoplay muted loop id="videoFondo">
        <source src="video.mp4" type="video/mp4">
        Tu navegador no soporta video en HTML5.
    </video>
    <div class="infocardContainer">
          <div id="main">
 <img src="perfil.jpg" alt="elon">
  </div>
         <div id="textbois">
        <h1>Bienvenido, <%= usuario %>!</h1>
        <p>Esta es tu página principal, ¡disfrútala!</p>
        <a href="index.jsp">Volver al inicio</a> |
        <a href="logout.jsp">Cerrar sesión</a>
    </div>
    </div>
</body>
</html>
