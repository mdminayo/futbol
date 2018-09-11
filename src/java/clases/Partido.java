/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Danilo
 */
public class Partido {
    
    public String fecha;
    public String hora;
    public String lugar;
    public String lolcal;    
    public String codElocal;
    public String codEvisitante;
    public String glocal;
    public String visitante;
    public String gvisitante;
    public String puntoslocal;
    public String puntosvisitante;

      

    public Partido() {
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getLugar() {
        return lugar;
    }

    public String getLolcal() {
        return lolcal;
    }

    public void setLolcal(String lolcal) {
        this.lolcal = lolcal;
    }

    public String getVisitante() {
        return visitante;
    }

    public void setVisitante(String visitante) {
        this.visitante = visitante;
    }
    

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getCodElocal() {
        return codElocal;
    }

    public void setCodElocal(String codElocal) {
        this.codElocal = codElocal;
    }

    public String getCodEvisitante() {
        return codEvisitante;
    }

    public void setCodEvisitante(String codEvisitante) {
        this.codEvisitante = codEvisitante;
    }

    public String getGlocal() {
        return glocal;
    }

    public void setGlocal(String glocal) {
        this.glocal = glocal;
    }

    public String getGvisitante() {
        return gvisitante;
    }

    public void setGvisitante(String gvisitante) {
        this.gvisitante = gvisitante;
    }

    public String getPuntoslocal() {
        return puntoslocal;
    }

    public void setPuntoslocal(String puntoslocal) {
        this.puntoslocal = puntoslocal;
    }

    public String getPuntosvisitante() {
        return puntosvisitante;
    }

    public void setPuntosvisitante(String puntosvisitante) {
        this.puntosvisitante = puntosvisitante;
    }
    
    public void grabar(){
        System.out.println(" "+this.codElocal+","+this.codEvisitante+","+this.glocal+","+this.gvisitante+ this.fecha);
        String cadenaSQL="insert into partido (fecha,hora,lugar,codigoEquipoLocal,codigoEquipoVisitante,golesLocal,golesVisitante)"
                + "values('"+this.fecha+"','"+this.hora+"','"+this.lugar+"', "+this.codElocal+", "+this.codEvisitante+", "+this.glocal+", "+this.gvisitante+" )";
        ConectorBD.actualizarDatos(cadenaSQL);
        
        
    }
    
    public static String [][] getDatos(){
        String cadenaSQL="select fecha,hora,lugar,local.nombre as local,goleslocal, visitante.nombre as visitante, golesvisitante, local.codigo as codlocal, visitante.codigo as codvisitante\n" +
                        "from equipo as local, equipo as visitante, partido \n" +
                        "where codigoequipolocal=local.codigo\n" +
                        "and codigoequipovisitante=visitante.codigo;";
        String datos[][] =ConectorBD.getDatos(cadenaSQL);        
        return datos;
    }
    public static Partido [] getDatosEnObjetos(){
        
        String datos[][]=Partido.getDatos();
        Partido partidos[]=new Partido[datos.length];
        for (int i = 0; i < datos.length; i++) {
            Partido partido = new Partido();
            
            partido.setFecha(datos[i][0]);
            partido.setHora(datos[i][1]);
            partido.setLugar(datos[i][2]);
            partido.setLolcal(datos[i][3]);
            partido.setGlocal(datos[i][4]);
            partido.setVisitante(datos[i][5]);
            partido.setGvisitante(datos[i][6]);
            partido.setCodElocal(datos[i][7]);
            partido.setCodEvisitante(datos[i][8]);
            
            int goleslocal=Integer.parseInt(datos[i][4]);
            int golesvisitante=Integer.parseInt(datos[i][6]);
            if (goleslocal==golesvisitante) {
                partido.setPuntoslocal("1");
                partido.setPuntosvisitante("1");
                
            } else{
                if (goleslocal>golesvisitante) {
                 partido.setPuntoslocal("3");
                partido.setPuntosvisitante("0");
                
            } else {
                partido.setPuntoslocal("0");
                partido.setPuntosvisitante("3");
            }
                
            }
            
            partidos[i]=partido;
            
            
        }
       return partidos; 
    }
    
    
}
