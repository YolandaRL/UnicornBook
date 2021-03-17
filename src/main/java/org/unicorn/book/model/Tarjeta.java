package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "tarjeta")
public class Tarjeta implements Serializable {
    private static final long serialVersionUID = -5868846461317082440L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_tarjeta")
    private Long id;
}
