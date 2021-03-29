package org.unicorn.book.app.libro.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class LibroAutorPk implements Serializable {
    private static final long serialVersionUID = 7486385177846977749L;
    @Column(name = "ID_LIBRO", nullable = false, updatable = false)
    private Long idLibro;

    @Column(name = "ID_AUTOR", nullable = false, updatable = false)
    private Long idAutor;

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }

    public Long getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(Long idAutor) {
        this.idAutor = idAutor;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        LibroAutorPk that = (LibroAutorPk) o;
        return Objects.equals(idLibro, that.idLibro) && Objects.equals(idAutor, that.idAutor);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idLibro, idAutor);
    }
}

