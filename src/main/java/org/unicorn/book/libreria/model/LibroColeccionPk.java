package org.unicorn.book.libreria.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class LibroColeccionPk implements Serializable {
    private static final long serialVersionUID = 3992605682557428283L;
    @Column(name = "ID_LIBRO", nullable = false, updatable = false)
    private Long idLibro;

    @Column(name = "ID_COLECCION", nullable = false, updatable = false)
    private Long idColeccion;

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }

    public Long getIdColeccion() {
        return idColeccion;
    }

    public void setIdColeccion(Long idColeccion) {
        this.idColeccion = idColeccion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        LibroColeccionPk that = (LibroColeccionPk) o;
        return Objects.equals(idLibro, that.idLibro) && Objects.equals(idColeccion, that.idColeccion);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idLibro, idColeccion);
    }
}
