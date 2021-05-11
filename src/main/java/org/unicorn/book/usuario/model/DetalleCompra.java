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
@Table(name = "DETALLE_COMPRA")
public class DetalleCompra implements Serializable {
    private static final long serialVersionUID = 5282636708737363596L;

    @EmbeddedId
    private DetalleCompraPk pk;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_COMPRA", insertable = false, updatable = false)
    private Compra compra;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_LIBRO", insertable = false, updatable = false)
    private Libro libro;

    @Column(name = "CANTIDAD")
    private Integer cantidad;

    @Column(name = "PORCENTAJE_DESCUENTO", columnDefinition = "decimal", precision = 18, scale = 3)
    private Double pocentajeDescuento;

    public DetalleCompraPk getPk() {
        return pk;
    }

    public void setPk(DetalleCompraPk pk) {
        this.pk = pk;
    }

    public Compra getCompra() {
        return compra;
    }

    public void setCompra(Compra compra) {
        this.compra = compra;
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

    public Double getPocentajeDescuento() {
        return pocentajeDescuento;
    }

    public void setPocentajeDescuento(Double pocentajeDescuento) {
        this.pocentajeDescuento = pocentajeDescuento;
    }
}
