<%-- 
    Document   : partido
    Created on : 9/09/2018, 09:47:35 PM
    Author     : Danilo
--%>

<%@page import="clases.Equipo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Equipo[] datos = Equipo.getDatosEnObjetos(null);
    
    
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Partidos!</h1>
        <div>
            <form action="grabarPartido.jsp" method="post">
                <table>
                    <tr>
                        <td>Fecha</td>
                        <td><input type="date" name="fecha" id="fecha"/></td>
                    </tr>
                    <tr>
                        <td>Hora</td>
                        <td><input type="time" name="hora" id="hora"/></td>
                    </tr>
                     <tr>
                        <td>Lugar</td>
                        <td><input type="text" name="lugar" id="lugar"/></td>
                    </tr>
                    <tr>
                        <td>Equipo Local</td>
                        <td><select name="elocal" id="elocal" required="true"> 
                                <option value="-1">Seleccione</option>
                            <%
                                for (int i = 0; i < datos.length; i++) {
                                       Equipo equipo=datos[i];
                                       %>
                                       <option value="<%=equipo.getCodigo()%>"><%=equipo.getNombre()%></option>;
                                        <%
                                    }
                                %>
                            
                            
                            
                            </select></td>
                    </tr>
                    <tr>
                        <td>Equipo Visitante</td>
                        <td><select name="evisitante" id="evisitante" required="true">
                                <option value="-1">Seleccione</option>
                            <%
                                for (int i = 0; i < datos.length; i++) {
                                       Equipo equipo=datos[i];
                                       %>
                                       <option value="<%=equipo.getCodigo()%>"><%=equipo.getNombre()%></option>;
                                        <%
                                    }
                                %>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Goles local</td>
                        <td><input type="number" name="glocal" id="glocal"/></td>
                    </tr>
                    <tr>
                        <td>Goles Visitante</td>
                        <td><input type="number" name="gvisitante" id="gvisitante"/></td>
                    </tr>
                    <tr>
                        
                        <td><input type="submit"></td>
                    </tr>
                </table>
                
            </form>
        </div>
        
    </body>
</html>
