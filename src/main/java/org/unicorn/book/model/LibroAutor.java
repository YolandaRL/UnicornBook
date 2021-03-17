package org.unicorn.book.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "libro_autor")
public class LibroAutor implements Serializable {
    private static final long serialVersionUID = 1793275581468225401L;
    id_libro
    id_autor
}
