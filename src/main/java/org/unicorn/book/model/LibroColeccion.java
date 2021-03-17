package org.unicorn.book.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "libro_coleccion")
public class LibroColeccion implements Serializable {
    private static final long serialVersionUID = -3366804597363193737L;

}
