<%-- 
    Document   : index
    Created on : 9/04/2025, 8:54:06 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ingreso de Usuario</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
    <div>Ingreso Usuario</div>
    <form name="Ingreso" action="ValidarUsuario" method="post">
        <br><br>
        Usuario: <input type="text" name="usuario" value="" />
        <br><br>
        Clave: <input type="password" name="clave" value="" />
        <br><br>
        <input type="submit" value="Ingresar" />
        <br><br>
    </form>
</body>
</html>

