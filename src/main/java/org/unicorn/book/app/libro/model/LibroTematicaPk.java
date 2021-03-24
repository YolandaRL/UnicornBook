package org.unicorn.book.app.libro.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class LibroTematicaPk implements Serializable {
    private static final long serialVersionUID = 4030808603252023506L;
    @Column(name = "id_libro", nullable = false, updatable = false)
    private Long idLibro;

    @Column(name = "id_tematica", nullable = false, updatable = false)
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
}
