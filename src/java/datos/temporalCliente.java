/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author Ramiro
 */
public class temporalCliente {
    private String RUN_DNI,Nombre;

    public temporalCliente() {
        this.RUN_DNI = "NN";
        this.Nombre = "NN";
    }

    public temporalCliente(String RUN_DNI, String Nombre) {
        this.RUN_DNI = RUN_DNI;
        this.Nombre = Nombre;
    }

    public String getRUN_DNI() {
        return RUN_DNI;
    }

    public void setRUN_DNI(String RUN_DNI) {
        this.RUN_DNI = RUN_DNI;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    @Override
    public String toString() {
        return "temporalCliente{" + "RUN_DNI=" + RUN_DNI + ", Nombre=" + Nombre + '}';
    }
    
}
