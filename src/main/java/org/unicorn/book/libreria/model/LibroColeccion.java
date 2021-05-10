package org.unicorn.book.libreria.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "LIBRO_COLECCION")
public class LibroColeccion implements Serializable {
    private static final long serialVersionUID = -3366804597363193737L;
    @EmbeddedId
    private LibroColeccionPk pk;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_LIBRO", insertable = false, updatable = false)
    private Libro libro;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_COLECCION", insertable = false, updatable = false)
    private Coleccion coleccion;

    public LibroColeccionPk getPk() {
        return pk;
    }

    public void setPk(LibroColeccionPk pk) {
        this.pk = pk;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public Coleccion getColeccion() {
        return coleccion;
    }

    public void setColeccion(Coleccion coleccion) {
        this.coleccion = coleccion;
    }
}
