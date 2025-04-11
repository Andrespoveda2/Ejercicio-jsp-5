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
</head>
    <body>
    <h1>Bienvenido al sistema</h1>
    
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
            <p style="color:gray;">Inicia sesión para acceder a la página principal.</p>
        <%
            }
        %>
    </body>
</html>
