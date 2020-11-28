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
public class temporalProductos {
    private String Codigo, Nombre;
    private float Precio_Unitario, PrecioTotal;
    private int Cantidad;

    public temporalProductos() {
        this.Codigo = "NN";
        this.Nombre = "NN";
        this.Precio_Unitario = 0;
        this.Cantidad = 0;
        this.PrecioTotal = 0;
    }

    public temporalProductos(String Codigo, String Nombre, float Precio_Unitario, float PrecioTotal, int Cantidad) {
        this.Codigo = Codigo;
        this.Nombre = Nombre;
        this.Precio_Unitario = Precio_Unitario;
        this.Cantidad = Cantidad;
        this.PrecioTotal = PrecioTotal;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public float getPrecio_Unitario() {
        return Precio_Unitario;
    }

    public void setPrecio_Unitario(float Precio_Unitario) {
        this.Precio_Unitario = Precio_Unitario;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public float getPrecioTotal() {
        return PrecioTotal;
    }

    public void setPrecioTotal(float PrecioTotal) {
        this.PrecioTotal = PrecioTotal;
    }

    @Override
    public String toString() {
        return "temporalProductos{" + "Codigo=" + Codigo + ", Nombre=" + Nombre + ", Precio_Unitario=" + Precio_Unitario + ", Cantidad=" + Cantidad + ", PrecioTotal=" + PrecioTotal + '}';
    }

    
}
