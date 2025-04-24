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
    <link rel="stylesheet" href="estilos.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
     <video autoplay muted loop id="videoFondo">
        <source src="video.mp4" type="video/mp4">
        Tu navegador no soporta video en HTML5.
    </video>

    <form name="Ingreso" action="ValidarUsuario" method="post">
        <h3>Inicie sesion</h3>
        <label for="usuario">Usuario: </label>
        <input type="text" name="usuario" value=""placeholder="inserte su Usuario:" />
    
        <label for="clave">Clave: </label>
        <input type="password" name="clave" value="" placeholder="inserte su clave:"/>
        <br><br>
        <input type="submit" value="Ingresar" />
        <div class="social">
          <div class="go"><i class="fab fa-google"></i>  Google</div>
          <div class="fb"><i class="fab fa-facebook"></i>  Facebook</div>
        </div>
    </form>
</body>
</html>

