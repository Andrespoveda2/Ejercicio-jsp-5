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

        String user = request.getParameter("usuario");
        String password = request.getParameter("clave");

        HttpSession session = request.getSession();
        Integer intentosFallidos = (Integer) session.getAttribute("intentosFallidos");

        if (intentosFallidos == null) {
            intentosFallidos = 0;
        }

        boolean esValido = false;

        if (("admin1".equals(user) && "1234".equals(password)) ||
            ("admin2".equals(user) && "1234".equals(password)) ||
            ("admin3".equals(user) && "2222".equals(password))) {
            esValido = true;
        } else {
            intentosFallidos++;
            session.setAttribute("intentosFallidos", intentosFallidos);
        }

        if (esValido) {
            session.setAttribute("usuario", user);
            session.removeAttribute("intentosFallidos"); // limpiar intentos
            response.sendRedirect("principal.jsp");
        } else {
            session.setAttribute("errorLogin", "Usuario o contraseña incorrectos. Intentos: " + intentosFallidos);
            response.sendRedirect("loginError.jsp");
        }
    }
}
