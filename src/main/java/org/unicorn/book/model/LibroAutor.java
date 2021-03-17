package org.unicorn.book.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "libro_autor")
public class LibroAutor implements Serializable {
    private static final long serialVersionUID = 1793275581468225401L;
    @EmbeddedId
    private LibroAutorPk pk;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_libro", insertable = false, updatable = false)
    private Libro libro;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_autor", insertable = false, updatable = false)
    private Autor autor;

    public LibroAutorPk getPk() {
        return pk;
    }

    public void setPk(LibroAutorPk pk) {
        this.pk = pk;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public Autor getAutor() {
        return autor;
    }

    public void setAutor(Autor autor) {
        this.autor = autor;
    }
}
