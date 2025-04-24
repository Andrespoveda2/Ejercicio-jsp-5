<%-- 
    Document   : index
    Created on : 11/04/2025, 11:52:55 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Bienvenido</title>
    <link rel="stylesheet" href="styles.css">
    
</head>
    <body>
       <video autoplay muted loop id="videoFondo">
        <source src="video.mp4" type="video/mp4">
        Tu navegador no soporta video en HTML5.
    </video>
    <div>
          <h1>Bienvenido al sistema</h1>
          <img src="OIP.jpg" alt="cohete">
         <p style="color:gray;">Inicia sesión para acceder a la página principal.</p>
        <%
            String usuario = (String) session.getAttribute("usuario");

            if (usuario != null) {
        %>
        <p>Has iniciado sesión como: <strong><%= usuario %></strong></p>
            <form action="principal.jsp" method="get">
                <input type="submit" value="Ir a Página Principal" />
            </form>
            <form action="logout.jsp" method="post">
                <input type="submit" value="Cerrar Sesión" />
            </form>
        <%
            } else {
        %>
        <form action="login.jsp" method="get">
            <input type="submit" value="Ingresar" />
        </form>
        
        <%
            }
        %>
    </div>
    </body>
</html>
