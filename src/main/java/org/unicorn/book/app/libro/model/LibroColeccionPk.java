package org.unicorn.book.app.libro.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class LibroColeccionPk implements Serializable {
    private static final long serialVersionUID = 3992605682557428283L;
    @Column(name = "id_libro", nullable = false, updatable = false)
    private Long idLibro;

    @Column(name = "id_coleccion", nullable = false, updatable = false)
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
}
