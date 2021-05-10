package org.unicorn.book.libreria.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class ComentarioPk implements Serializable {

    private static final long serialVersionUID = 303319519763225516L;

    @Column(name = "ID_LIBRO", nullable = false, updatable = false)
    private Long idLibro;

    @Column(name = "ID_USUARIO", nullable = false, updatable = false)
    private Long idUsuario;

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        ComentarioPk that = (ComentarioPk) o;
        return Objects.equals(idLibro, that.idLibro) && Objects.equals(idUsuario, that.idUsuario);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idLibro, idUsuario);
    }
}

