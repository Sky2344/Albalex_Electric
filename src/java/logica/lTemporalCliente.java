/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.temporalCliente;
import java.util.ArrayList;

/**
 *
 * @author Ramiro
 */
public class lTemporalCliente {
    public static ArrayList lTempCli = new ArrayList();
    conexion con = new conexion();
    
    
    public void BuscarCliente(String RUC_DNI){
        try {
            con.consulta("EXECUTE BusquedaPorDni_Ruc '"+ RUC_DNI +"'");
            lTempCli.clear();
            con.getRs().next();              
                temporalCliente temp = new temporalCliente(con.getRs().getString(1), con.getRs().getString(2));
                lTempCli.add(temp);
        } catch (Exception e) {
        }
    }
    
}
