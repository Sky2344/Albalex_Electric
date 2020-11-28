/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.distrito;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lDistrito {
    public static ArrayList lDis = new ArrayList();
    conexion con = new conexion();
    
    public void ListaDistrito(){
        try {
            con.consulta("select * from Distrito");
            lDis.clear();
            while (con.getRs().next()) {                
                distrito temp = new distrito(Integer.parseInt(con.getRs().getString(1)), con.getRs().getString(2));
                lDis.add(temp);
            }
        } catch (Exception e) {
        }
    }
}
