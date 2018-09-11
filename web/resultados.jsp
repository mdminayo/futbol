<%-- 
    Document   : resultados
    Created on : 10/09/2018, 09:13:00 PM
    Author     : Danilo
--%>

<%@page import="clases.Partido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String vinculos="";
    if(request.getParameter("tipo")!=null){
        if (!request.getParameter("tipo").equals("pdf")) {
            
            String tipo=request.getParameter("tipo");
            String extension="xls";
           
                response.setContentType("application/vnd.ms-"+tipo);
                response.setHeader("Content-Disposition","inline;filename=reporte."+extension);
            }
        
    
    }else{
        vinculos="<a href='resultados.jsp?tipo=excel'>Exportar a excel </a>";
        vinculos+="<a href='#' onClick='convertir()'>  PDF</a>";
    }
    
    
    Partido [] datos=Partido.getDatosEnObjetos();
    String lista="";
    for (int i = 0; i < datos.length; i++) {
           Partido partido=datos[i];
           lista+="<tr>";
                lista+="<td>"+partido.getFecha()+"</td>";
                lista+="<td>"+partido.getHora()+"</td>";
                lista+="<td>"+partido.getLugar()+"</td>";
                lista+="<td>"+partido.getLolcal()+"</td>";
                lista+="<td>"+partido.getGlocal()+"</td>";
                lista+="<td>"+partido.getPuntoslocal()+"</td>";
                lista+="<td>"+partido.getVisitante()+"</td>";
                lista+="<td>"+partido.getGvisitante()+"</td>";
                lista+="<td>"+partido.getPuntosvisitante()+"</td>";
           lista+="</tr>";
            
        }
    
%>


    
       
        <script type="text/javascript" src="/lib/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="/lib/jspdf.js"></script>
        <div id="HTMLtoPDF">
        <h1>Resultados!</h1>
        <div id="vinculos"> <%= vinculos %> </div>
        <table border ="1">
            <tr>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Lugar</th>
                <th>Equipo local</th>
                <th>Goles local</th>
                <th>Puntos local</th>
                <th>Equipo Visitante</th>
                <th>Goles Visitante</th>
                <th>Puntos Visitante</th>
            </tr>
            <%=lista%>
            
        </table>
  
    </div>

    <script type="text/javascript">
            
            function convertir(){
                document.getElementById("vinculos").innerHTML="";
                HTMLtoPDF();
                document.getElementById("vinculos").innerHTML="<%= vinculos %>";
            }
            
         
        </script>