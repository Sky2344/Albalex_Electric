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
public class vistaProducto {
    private String CodProducto,Nombre,NomCategoria;
    private int Stock;
    private float Precio;

    public vistaProducto() {
        this.CodProducto = "NN";
        this.Nombre = "NN";
        this.NomCategoria = "NN";
        this.Stock = 0;
        this.Precio = 0;
    }

    public vistaProducto(String CodProducto, String Nombre, String NomCategoria, int Stock, float Precio) {   
        this.CodProducto = CodProducto;
        this.Nombre = Nombre;
        this.NomCategoria = NomCategoria;
        this.Stock = Stock;
        this.Precio = Precio;
    }

    public String getCodProducto() {
        return CodProducto;
    }

    public void setCodProducto(String CodProducto) {
        this.CodProducto = CodProducto;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNomCategoria() {
        return NomCategoria;
    }

    public void setNomCategoria(String NomCategoria) {
        this.NomCategoria = NomCategoria;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public float getPrecio() {
        return Precio;
    }

    public void setPrecio(float Precio) {
        this.Precio = Precio;
    }

    @Override
    public String toString() {
        return "vistaProducto{" + "CodProducto=" + CodProducto + ", Nombre=" + Nombre + ", NomCategoria=" + NomCategoria + ", Stock=" + Stock + ", Precio=" + Precio + '}';
    }

}
