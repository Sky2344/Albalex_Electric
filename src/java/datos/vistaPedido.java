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
public class vistaPedido {
    private String IdPedido, Nombre, Direccion, Distrito, Fecha, MontoTotal, Estado;

    public vistaPedido() {
        this.IdPedido = "NN";
        this.Nombre = "NN";
        this.Direccion = "NN";
        this.Distrito = "NN";
        this.Fecha = "NN";
        this.MontoTotal = "NN";
        this.Estado = "NN";
    }

    public vistaPedido(String IdPedido, String Nombre, String Direccion, String Distrito, String Fecha, String MontoTotal, String Estado) {
        this.IdPedido = IdPedido;
        this.Nombre = Nombre;
        this.Direccion = Direccion;
        this.Distrito = Distrito;
        this.Fecha = Fecha;
        this.MontoTotal = MontoTotal;
        this.Estado = Estado;
    }

    public String getIdPedido() {
        return IdPedido;
    }

    public void setIdPedido(String IdPedido) {
        this.IdPedido = IdPedido;
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

    public String getDistrito() {
        return Distrito;
    }

    public void setDistrito(String Distrito) {
        this.Distrito = Distrito;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getMontoTotal() {
        return MontoTotal;
    }

    public void setMontoTotal(String MontoTotal) {
        this.MontoTotal = MontoTotal;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    @Override
    public String toString() {
        return "vistaPedido{" + "IdPedido=" + IdPedido + ", Nombre=" + Nombre + ", Direccion=" + Direccion + ", Distrito=" + Distrito + ", Fecha=" + Fecha + ", MontoTotal=" + MontoTotal + ", Estado=" + Estado + '}';
    }
    
}
