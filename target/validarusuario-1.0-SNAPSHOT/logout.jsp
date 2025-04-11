<%-- 
    Document   : logout
    Created on : 11/04/2025, 11:58:35 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session="true" %>
<%
    session.invalidate(); // cerrar sesión
    response.sendRedirect("index.jsp");
%>
