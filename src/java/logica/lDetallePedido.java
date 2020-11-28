/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.detallePedido;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lDetallePedido {
    public static ArrayList lDetPed = new ArrayList();
    conexion con = new conexion();
    
    public void InsertarDetallePedido(detallePedido temp){
        try {
            con.getSt().executeUpdate("insert into DetallePedido values("+temp.getID_Pedido()+",'"+temp.getCodigo_Pro()+"',"+temp.getCantidad()+","+temp.getPreVen()+")");
        } catch (Exception e) {
        }
    }
}
