package org.unicorn.book.app.libro.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class LibroAutorPk implements Serializable {
    private static final long serialVersionUID = 7486385177846977749L;
    @Column(name = "id_libro", nullable = false, updatable = false)
    private Long idLibro;

    @Column(name = "id_autor", nullable = false, updatable = false)
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
}

