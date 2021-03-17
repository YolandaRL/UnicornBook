package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "tipo_operacion")
public class TipoOperacion implements Serializable {
    private static final long serialVersionUID = -5129575253735745179L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_tipo_operacion")
    private Long id;
}
