package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "detalle_compra")
public class DetalleCompra implements Serializable {
    private static final long serialVersionUID = 5282636708737363596L;

    id_compra
    id_libro

    @Column(name = "cantidad")
    private Integer cantidad;

    @Column(name = "porcentaje_descuento")
    private Double pocentajeDescuento;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_comentario")
    private Comentario comentario;
}
