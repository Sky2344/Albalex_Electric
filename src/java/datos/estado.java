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
public class estado {
    private String IdEstado, NomEstado;

    public estado() {
    }

    public estado(String IdEstado, String NomEstado) {
        this.IdEstado = IdEstado;
        this.NomEstado = NomEstado;
    }

    public String getIdEstado() {
        return IdEstado;
    }

    public void setIdEstado(String IdEstado) {
        this.IdEstado = IdEstado;
    }

    public String getNomEstado() {
        return NomEstado;
    }

    public void setNomEstado(String NomEstado) {
        this.NomEstado = NomEstado;
    }

    @Override
    public String toString() {
        return "estado{" + "IdEstado=" + IdEstado + ", NomEstado=" + NomEstado + '}';
    }
    
}
