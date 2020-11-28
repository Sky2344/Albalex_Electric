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
public class distrito {
    private int IdDIstrito;
    private String Distrito;

    public distrito() {
        this.IdDIstrito = 0;
        this.Distrito = "NN";
    }

    public distrito(int IdDIstrito, String Distrito) {
        this.IdDIstrito = IdDIstrito;
        this.Distrito = Distrito;
    }
    
    public int getIdDIstrito() {
        return IdDIstrito;
    }

    public void setIdDIstrito(int IdDIstrito) {
        this.IdDIstrito = IdDIstrito;
    }

    public String getDistrito() {
        return Distrito;
    }

    public void setDistrito(String Distrito) {
        this.Distrito = Distrito;
    }
    
    @Override
    public String toString() {
        return "distrito{" + "IdDIstrito=" + IdDIstrito + ", Distrito=" + Distrito + '}';
    }
    
}
