/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.pedido;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author Ramiro
 */
public class lPedido {
    public static ArrayList lPed = new ArrayList();
    conexion con = new conexion();
    
    public void InsertarPedido(pedido temp){
        try {
            con.getSt().executeUpdate("execute InsertarPedido '"+temp.getDNI_RUC()+"','"+temp.getFecha()+"','"+temp.getMontoTotal()+"','"+temp.getDireccion()+"','"+temp.getIdDistrito()+"','"+temp.getIdEstado()+"'");
        } catch (Exception e) {
        }
    }
    public String ObtenerIdPedido(){
        
        try {
            con.consulta("Select max(idpedido) from pedido");
            con.getRs().next();
            String Id = con.getRs().getString(1);
            return Id;
        } catch (Exception e) {
            return "NN";
        }
        
    }
    
    public void ModificarPedido(String Codigo, String ID){
        try {
           con.getSt().execute("exec ModificarEstadoPedido " +Codigo+ ","+ ID);
        } catch (Exception e) {
        }
    }
}
