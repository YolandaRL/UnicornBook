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
}
