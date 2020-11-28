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
public class detallePedido {
    private int ID_Pedido, cantidad;
    private String Codigo_Pro;
    private float PreVen;

    public detallePedido() {
        this.ID_Pedido = 00;
        this.cantidad = 0;
        this.Codigo_Pro = "NN";
        this.PreVen = 0;
    }

    public detallePedido(int ID_Pedido, int cantidad, String Codigo_Pro, float PreVen) {
        this.ID_Pedido = ID_Pedido;
        this.cantidad = cantidad;
        this.Codigo_Pro = Codigo_Pro;
        this.PreVen = PreVen;
    }

    public int getID_Pedido() {
        return ID_Pedido;
    }

    public void setID_Pedido(int ID_Pedido) {
        this.ID_Pedido = ID_Pedido;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getCodigo_Pro() {
        return Codigo_Pro;
    }

    public void setCodigo_Pro(String Codigo_Pro) {
        this.Codigo_Pro = Codigo_Pro;
    }

    public float getPreVen() {
        return PreVen;
    }

    public void setPreVen(float PreVen) {
        this.PreVen = PreVen;
    }

    @Override
    public String toString() {
        return "detallePedido{" + "ID_Pedido=" + ID_Pedido + ", cantidad=" + cantidad + ", Codigo_Pro=" + Codigo_Pro + ", PreVen=" + PreVen + '}';
    }
    
    
}
