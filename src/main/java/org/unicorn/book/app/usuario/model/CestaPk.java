package org.unicorn.book.app.usuario.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class CestaPk implements Serializable {
    private static final long serialVersionUID = 9167121289514032428L;
    @Column(name = "ID_USUARIO", nullable = false, updatable = false)
    private Long idUsuario;

    @Column(name = "ID_LIBRO", nullable = false, updatable = false)
    private Long idLibro;

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
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
        CestaPk cestaPk = (CestaPk) o;
        return Objects.equals(idUsuario, cestaPk.idUsuario) && Objects.equals(idLibro, cestaPk.idLibro);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idUsuario, idLibro);
    }
}
