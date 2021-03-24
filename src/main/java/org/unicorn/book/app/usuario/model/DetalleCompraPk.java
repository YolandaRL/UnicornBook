package org.unicorn.book.app.usuario.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class DetalleCompraPk implements Serializable {
    private static final long serialVersionUID = 3224038079275634952L;
    @Column(name = "id_compra", nullable = false, updatable = false)
    private Long idCompra;

    @Column(name = "id_libro", nullable = false, updatable = false)
    private Long idLibro;

    public Long getIdCompra() {
        return idCompra;
    }

    public void setIdCompra(Long idCompra) {
        this.idCompra = idCompra;
    }

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }
}
