package org.unicorn.book.app.usuario.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "ESTADO")
public class Estado implements Serializable {
    private static final long serialVersionUID = 5425510610884752179L;

    @Id
    @Column(name = "ID")
    private Long id;

    @Column(name = "ESTADO")
    private String nombre;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
