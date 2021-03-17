package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "tipo_entrega")
public class TipoEntrega implements Serializable {
    private static final long serialVersionUID = -2254164060725397878L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_tipo_entrega")
    private Long id;

    @Column(name = "tipo_entrega")
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
