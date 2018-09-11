<%-- 
    Document   : equipos
    Created on : 8/09/2018, 02:58:01 PM
    Author     : Danilo
--%>

<%@page import="clases.Equipo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Equipo[] datos=Equipo.getDatosEnObjetos(null);
    String lista="";
    for (int i = 0; i < datos.length; i++) {
        Equipo equipo=datos[i];
        lista+="<tr>";
         lista+="<td>"+equipo.getCodigo()+"</td>";
         lista+="<td>"+equipo.getNombre()+"</td>";
                    
        lista+="</tr>";
            
        }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Equipos!</h1>
        <table>
            <tr>
                <th>Codigo</th>
                <th>Nombre</th>
                <th><a href="principal.jsp?CONTENIDO=actualizarEquipo.jsp">Aadicionar</a></th>
            </tr>
            <%=lista%>
        </table>
        
    </body>
</html>
