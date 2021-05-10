package org.unicorn.book.usuario.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "TIPO_OPERACION")
public class TipoOperacion implements Serializable {
    private static final long serialVersionUID = -5129575253735745179L;

    @Id
    @Column(name = "ID")
    private Long id;

    @Column(name = "TIPO_OPERACION")
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
