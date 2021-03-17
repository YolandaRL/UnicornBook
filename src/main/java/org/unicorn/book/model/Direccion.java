package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "direccion")
public class Direccion implements Serializable {
    private static final long serialVersionUID = -7361302534815017815L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_direccion")
    private Long id;
}
