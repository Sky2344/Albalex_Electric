/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;
import java.sql.*;

public class conexion {
    private Connection con;
    private Statement st;
    private ResultSet rs;
    private String url;

    public conexion() {
        
        url="jdbc:sqlserver://albalexelectric.database.windows.net:1433;database=albalexelectric;user=ramiro@albalexelectric;password=Sa123456;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30; "+";user=sa;password=sa";
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con=DriverManager.getConnection(url);
            st=con.createStatement();
            System.out.println("Exito");
        } catch (Exception e) {
            System.out.println("Fracaso");
        }
    }
    public conexion(String url) {
        this.url = url;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con=DriverManager.getConnection(url);
            st=con.createStatement();
            
        } catch (Exception e) {
            
        }
    }
    public void consulta(String qry){
        try {
            rs=st.executeQuery(qry);
        } catch (Exception e) {
        }
    }
    public Connection getCon() {
        return con;
    }
    public void setCon(Connection con) {
        this.con = con;
    }
    public Statement getSt() {
        return st;
    }
    public void setSt(Statement st) {
        this.st = st;
    }
    public ResultSet getRs() {
        return rs;
    }
    public void setRs(ResultSet rs) {
        this.rs = rs;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }   
}
