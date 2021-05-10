package org.unicorn.book.usuario.model;

import org.unicorn.book.libreria.model.Libro;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "CESTA")
public class Cesta implements Serializable {

    @EmbeddedId
    private CestaPk pk;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_USUARIO", insertable = false, updatable = false)
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_LIBRO", insertable = false, updatable = false)
    private Libro libro;

    @Column(name = "CANTIDAD")
    private Integer cantidad;

    public CestaPk getPk() {
        return pk;
    }

    public void setPk(CestaPk pk) {
        this.pk = pk;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
}
