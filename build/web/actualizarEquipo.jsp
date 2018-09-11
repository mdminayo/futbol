<%-- 
    Document   : actualizarEquipo
    Created on : 8/09/2018, 03:24:56 PM
    Author     : Danilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Adicionar Equipo!</h1>
        
        <form method="post" action="grabarEquipo.jsp" >
            <table>
                <tr>
                    <td>Nombre</td><td><input type="text" name="equipo"></td>
                    <td><input type="submit" value="grabar"></td>
                    
                </tr>
            </table>
                
            
        </form>
    </body>
</html>
