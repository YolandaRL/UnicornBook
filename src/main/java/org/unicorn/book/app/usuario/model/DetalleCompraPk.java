package org.unicorn.book.app.usuario.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class DetalleCompraPk implements Serializable {
    private static final long serialVersionUID = 3224038079275634952L;
    @Column(name = "ID_COMPRA", nullable = false, updatable = false)
    private Long idCompra;

    @Column(name = "ID_LIBRO", nullable = false, updatable = false)
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

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        DetalleCompraPk that = (DetalleCompraPk) o;
        return Objects.equals(idCompra, that.idCompra) && Objects.equals(idLibro, that.idLibro);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idCompra, idLibro);
    }
}
