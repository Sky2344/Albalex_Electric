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
public class producto {
    private String Codigo,Nombre;
    private int ID_Categoria, Stock;
    private float Precio;

    public producto() {
        this.Codigo = "XXXXXX";
        this.Nombre = "NN";
        this.ID_Categoria = 0;
        this.Stock = 0;
        this.Precio = 0;
    }

    public producto(String Codigo, String Nombre, int ID_Categoria, int Stock, float Precio) {
        if(Codigo.length()>=8)
            Codigo = Codigo.substring(0,7);    
        this.Codigo = Codigo;
        this.Nombre = Nombre;
        this.ID_Categoria = ID_Categoria;
        this.Stock = Stock;
        this.Precio = Precio;
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

    public int getID_Categoria() {
        return ID_Categoria;
    }

    public void setID_Categoria(int ID_Categoria) {
        this.ID_Categoria = ID_Categoria;
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
        return "Producto{" + "Codigo=" + Codigo + ", Nombre=" + Nombre + ", ID_Categoria=" + ID_Categoria + ", Stock=" + Stock + ", Precio=" + Precio + '}';
    }
    
}
