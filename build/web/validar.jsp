<%-- 
    Document   : validar
    Created on : 6/09/2018, 09:42:54 PM
    Author     : Danilo
--%>

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String usuario=request.getParameter("usuario");
String clave=request.getParameter("clave");

Usuario datos=new Usuario("'"+usuario+"'","'"+clave+"'");

if (datos.getUsuario()!=null){
    
    HttpSession sesion=request.getSession();
    sesion.setAttribute("usuario", usuario);
    response.sendRedirect("principal.jsp");
}else{
    response.sendRedirect("index.jsp");
}

%>

