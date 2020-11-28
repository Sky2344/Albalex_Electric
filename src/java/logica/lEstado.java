/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.estado;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lEstado {
    public static ArrayList lEst = new ArrayList();
    conexion con = new conexion();
    
    public void ListarEstado(){
        try {
            con.consulta("select * from estado");
            lEst.clear();
            while (con.getRs().next()) {                
                estado temp = new estado(con.getRs().getString(1), con.getRs().getString(2));
                lEst.add(temp);
            }
        } catch (Exception e) {
        }
    }
}
