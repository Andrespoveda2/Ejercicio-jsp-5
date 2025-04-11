/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package validar;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ValidarUsuario", urlPatterns = {"/ValidarUsuario"})
public class validar extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener parámetros
        String user = request.getParameter("usuario");
        String password = request.getParameter("clave");
        
        // Obtener la sesión y el contador de intentos
        HttpSession session = request.getSession();
        
        Integer intentosFallidos = (Integer) session.getAttribute("intentosFallidos");
        if (intentosFallidos==null) {
            intentosFallidos = 0;
        }
        
        // Validar credenciales (3 usuarios válidos)
        boolean esValido = false;
        
         if ("admin1".equals(user) && "1234".equals(password)) {
            esValido = true;
        } else if("admin2".equals(user) && "1234".equals(password)){
            esValido = true;
        } else if ("admin3".equals(user) && "2222".equals(password)){
            esValido = true;
            
        } else {
            // Aumentar contador de intentos fallidos
            intentosFallidos++;
            session.setAttribute("intentosFallidos", intentosFallidos);
        }
        
        // Configurar la respuesta
        response.setContentType("text/html;charset=UTF-8");
        
        // Enviar respuesta al cliente
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Resultado de la Validación</title>");
            out.println("</head>");
            out.println("<body>");
            
            if(esValido) {
                out.println("<h1>Registro Exitoso</h1>");
                out.println("<p>Bienvenido, " + user + "!</p>");
            } else {
                out.println("<h1>Registro Inválido</h1>");
                out.println("<p>Usuario o contraseña incorrectos.</p>");
                out.println("<p>Intentos fallidos: " + intentosFallidos + "</p>");
                out.println("<a href='index.jsp'>Volver a intentar</a>");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }
}

