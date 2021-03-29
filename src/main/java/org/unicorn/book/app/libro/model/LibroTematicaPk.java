package org.unicorn.book.app.libro.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class LibroTematicaPk implements Serializable {
    private static final long serialVersionUID = 4030808603252023506L;
    @Column(name = "ID_LIBRO", nullable = false, updatable = false)
    private Long idLibro;

    @Column(name = "ID_TEMATICA", nullable = false, updatable = false)
    private Long idTelematica;

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }

    public Long getIdTelematica() {
        return idTelematica;
    }

    public void setIdTelematica(Long idTelematica) {
        this.idTelematica = idTelematica;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        LibroTematicaPk that = (LibroTematicaPk) o;
        return Objects.equals(idLibro, that.idLibro) && Objects.equals(idTelematica, that.idTelematica);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idLibro, idTelematica);
    }
}
