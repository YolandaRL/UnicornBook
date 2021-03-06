package org.unicorn.book.libreria.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "LIBRO_TEMATICA")
public class LibroTematica implements Serializable {
    private static final long serialVersionUID = 6643464978109678721L;
    @EmbeddedId
    private LibroTematicaPk pk;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_LIBRO", insertable = false, updatable = false)
    private Libro libro;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TEMATICA", insertable = false, updatable = false)
    private Tematica tematica;

    public LibroTematicaPk getPk() {
        return pk;
    }

    public void setPk(LibroTematicaPk pk) {
        this.pk = pk;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public Tematica getTematica() {
        return tematica;
    }

    public void setTematica(Tematica tematica) {
        this.tematica = tematica;
    }
}
