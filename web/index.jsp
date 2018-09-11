<%-- 
    Document   : index
    Created on : 6/09/2018, 09:18:23 PM
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
        
        <div aling="center">
        <h1>Futbol Colombiano</h1>
        
        <form method="post" action="validar.jsp" name="login">
        <table border ="1" aling="left">
            <tr>
                <td>Usuario</td><td><input type="text" name="usuario" id="usuario"></td>
            </tr>
            <tr>
                <td>Contraseña</td><td><input type="password" name="clave" id="clave"></td>
            </tr>
            <tr>
                <td><input type="submit" name="enviar"></td>
                <td   ><a href="registrarUsuario.jsp">Registrate</a></td>

            </tr>
            
           
            
            
        </table>
            
        </form>
           </div>
    </body>
</html>
