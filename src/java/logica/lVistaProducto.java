/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.vistaProducto;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lVistaProducto {
    public static ArrayList lVisPro = new ArrayList();
    conexion con = new conexion();
    
    public void ListaVistaProducto(){
        try {
            con.consulta("select * from ListaProducto");
            lVisPro.clear();
            while (con.getRs().next()) {                
                vistaProducto temp = new vistaProducto(con.getRs().getString(1), con.getRs().getString(2), con.getRs().getString(3), Integer.parseInt(con.getRs().getString(4)), Float.parseFloat(con.getRs().getString(5)));
                lVisPro.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
    public void BuscarProducto(String Codigo){
        try {
            lVisPro.clear();
            con.consulta("select * from ListaProducto where CodigoPro = '"+Codigo+"'");
            
            con.getRs().next();
            vistaProducto temp = new vistaProducto(con.getRs().getString(1), con.getRs().getString(2), con.getRs().getString(3), Integer.parseInt(con.getRs().getString(4)), Float.parseFloat(con.getRs().getString(5)));
            lVisPro.add(temp);
        } catch (Exception e) {
        }
    }
    
    public void ListaVistaProductoCategoria(String Categoria){
        try {
            lVisPro.clear();
            con.consulta("select * from ListaProducto where NombreCategoria = '"+Categoria+"'");
            
            while (con.getRs().next()) {                
                vistaProducto temp = new vistaProducto(con.getRs().getString(1), con.getRs().getString(2), con.getRs().getString(3), Integer.parseInt(con.getRs().getString(4)), Float.parseFloat(con.getRs().getString(5)));
                lVisPro.add(temp);
            }
        } catch (Exception e) {
        }
    }
}
