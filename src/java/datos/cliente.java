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
public class cliente {
    private String DNI_RUC, Nombre, Direccion, Telefono, Email;

    public cliente() {
        this.DNI_RUC = "NN";
        this.Nombre = "NN";
        this.Direccion = "NN";
        this.Telefono = "NN";
        this.Email = "NN";
    }

    public cliente(String DNI_RUC, String Nombre, String Direccion, String Telefono, String Email) {
        this.DNI_RUC = DNI_RUC;
        this.Nombre = Nombre;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Email = Email;
    }

    public String getDNI_RUC() {
        return DNI_RUC;
    }

    public void setDNI_RUC(String DNI_RUC) {
        this.DNI_RUC = DNI_RUC;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    @Override
    public String toString() {
        return "cliente{" + "DNI_RUC=" + DNI_RUC + ", Nombre=" + Nombre + ", Direccion=" + Direccion + ", Telefono=" + Telefono + ", Email=" + Email + '}';
    }
    
}
