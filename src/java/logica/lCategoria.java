/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.categoria;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lCategoria {
    public static ArrayList lCat = new ArrayList();
    conexion con = new conexion();
    
    public void ListaCategoria(){
        try {
            con.consulta("select * from Categoria");
            lCat.clear();
            while (con.getRs().next()) {                
                categoria temp = new categoria(Integer.parseInt(con.getRs().getString(1)),con.getRs().getString(2));
                lCat.add(temp);
            }
        } catch (Exception e) {
        }
    }
}
