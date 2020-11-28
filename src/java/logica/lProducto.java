/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.producto;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lProducto {
    public static ArrayList lPro = new ArrayList();
    conexion con = new conexion();
    
    public void InsertarProducto(producto temp){
        try {
            con.getSt().executeUpdate("execute InsertarProducto '"+temp.getCodigo()+"','"+temp.getNombre()+"',"+temp.getID_Categoria()+","+temp.getStock()+","+temp.getPrecio());
        } catch (Exception e) {
        }
    }
    
    public void ModificarProducto(String Codigo, int Stock, float Precio){
        try {
            con.getSt().executeUpdate("execute ModificarProducto '"+Codigo+"','"+Stock+"','"+Precio+"'");
        } catch (Exception e) {
        }
    }
}
