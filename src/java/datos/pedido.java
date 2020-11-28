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
public class pedido {
    private String DNI_RUC, fecha, Direccion;
    private float MontoTotal;
    private int IdDistrito,IdEstado;

    public pedido() {
        this.DNI_RUC = "NN";
        this.fecha = "NN/NN/NN";
        this.Direccion = "NN";
        this.MontoTotal = 0;
        this.IdDistrito = 0;
        this.IdEstado = 0;
    }

    public pedido(String DNI_RUC, String fecha, String Direccion, float MontoTotal, int IdDistrito, int IdEstado) {
        this.DNI_RUC = DNI_RUC;
        this.fecha = fecha;
        this.Direccion = Direccion;
        this.MontoTotal = MontoTotal;
        this.IdDistrito = IdDistrito;
        this.IdEstado = IdEstado;
    }

    public String getDNI_RUC() {
        return DNI_RUC;
    }

    public void setDNI_RUC(String DNI_RUC) {
        this.DNI_RUC = DNI_RUC;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public float getMontoTotal() {
        return MontoTotal;
    }

    public void setMontoTotal(float MontoTotal) {
        this.MontoTotal = MontoTotal;
    }

    public int getIdDistrito() {
        return IdDistrito;
    }

    public void setIdDistrito(int IdDistrito) {
        this.IdDistrito = IdDistrito;
    }

    public int getIdEstado() {
        return IdEstado;
    }

    public void setIdEstado(int IdEstado) {
        this.IdEstado = IdEstado;
    }

    @Override
    public String toString() {
        return "pedido{" + "DNI_RUC=" + DNI_RUC + ", fecha=" + fecha + ", Direccion=" + Direccion + ", MontoTotal=" + MontoTotal + ", IdDistrito=" + IdDistrito + ", IdEstado=" + IdEstado + '}';
    }
    
    
}
