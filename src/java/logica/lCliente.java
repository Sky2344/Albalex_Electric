/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.cliente;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lCliente {
    public static ArrayList lCli = new ArrayList();
    conexion con = new conexion();
    
    public void InsertarCliente(cliente temp){
        try {
            con.getSt().executeUpdate("EXECUTE InsertarCliente '"+temp.getDNI_RUC()+"','"+temp.getNombre()+"','"+temp.getDireccion()+"','"+temp.getTelefono()+"','"+temp.getEmail()+"'");
        } catch (Exception e) {
        }
    }
    
    public void ListaCliente(){
        try {
            con.consulta("select * from Cliente");
            lCli.clear();
            while (con.getRs().next()) {                
                cliente temp = new cliente(con.getRs().getString(1), con.getRs().getString(2), con.getRs().getString(3), con.getRs().getString(4), con.getRs().getString(5));
                lCli.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
    
}
