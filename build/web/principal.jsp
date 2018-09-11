<%-- 
    Document   : principal
    Created on : 6/09/2018, 10:32:26 PM
    Author     : Danilo
--%>

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <% 
            HttpSession sesion=request.getSession();
            Usuario user=new Usuario(sesion.getAttribute("usuario").toString());
       out.println(" Bienvenido "+sesion.getAttribute("usuario"));
   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="lib/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="lib/amcharts/serial.js" type="text/javascript"></script>
        <script src="lib/amcharts/pie.js" type="text/javascript"></script>
        <script src="lib/funciones.js" type="text/javascript"></script>
        <script type="text/javascript" src="lib/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="lib/jspdf.js"></script>
        <script type="text/javascript" src="lib/pdfFromHTML.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="banner">
            <h1>Campeonato</h1>
            
        </div>
        <div class="menu">
            <a href="principal.jsp?CONTENIDO=equipos.jsp">Equipos</a>
            <a href="principal.jsp?CONTENIDO=partido.jsp">Registrar Partidos</a>
            <a href="principal.jsp?CONTENIDO=resultados.jsp">Resultados</a>
            <a href="index.jsp">Salir</a>
            
        </div>
        <div class="Contenido"><jsp:include page="<%=request.getParameter("CONTENIDO")%>" flush="true"/></div>
        
          
        
      
    </body>
</html>
