/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.vistaPedido;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lVistaPedido {
    public static ArrayList lVisPed = new ArrayList();
    conexion con = new conexion();
    
    public void ListaVistaPedido(){
        try {
            con.consulta("select * from ListaPedido");
            lVisPed.clear();
            while (con.getRs().next()) {                
                vistaPedido temp = new vistaPedido(con.getRs().getString(1), con.getRs().getString(2), con.getRs().getString(3), con.getRs().getString(4), con.getRs().getString(5), con.getRs().getString(6), con.getRs().getString(7));
                lVisPed.add(temp);
            }
        } catch (Exception e) {
        }
    }
    public void ListaVistaPedidoDistrito(String Distrito){
        try {
            con.consulta("select * from ListaPedido where Distrito = '"+Distrito+"'");
            lVisPed.clear();
            while (con.getRs().next()) {                
                vistaPedido temp = new vistaPedido(con.getRs().getString(1), con.getRs().getString(2), con.getRs().getString(3), con.getRs().getString(4), con.getRs().getString(5), con.getRs().getString(6), con.getRs().getString(7));
                lVisPed.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
    public void ListaVistaPedidoID(int ID){
        try {
            con.consulta("select * from ListaPedido where IdPedido = '"+ID+"'");
            lVisPed.clear();
            con.getRs().next();              
            vistaPedido temp = new vistaPedido(con.getRs().getString(1), con.getRs().getString(2), con.getRs().getString(3), con.getRs().getString(4), con.getRs().getString(5), con.getRs().getString(6), con.getRs().getString(7));
            lVisPed.add(temp);
        } catch (Exception e) {
        }
    }
}
