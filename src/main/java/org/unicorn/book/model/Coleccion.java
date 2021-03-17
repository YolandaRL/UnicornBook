package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "coleccion")
public class Coleccion implements Serializable {
    private static final long serialVersionUID = -8551031498586845139L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_coleccion")
    private Long id;
}
