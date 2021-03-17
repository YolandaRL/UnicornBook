package org.unicorn.book.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "usuario_rol")
public class UsuarioRol implements Serializable {
    private static final long serialVersionUID = 7135515275853642668L;

}
