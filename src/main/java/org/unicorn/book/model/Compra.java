package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "compra")
public class Compra implements Serializable {
    private static final long serialVersionUID = 3883639187176623693L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_compra")
    private Long id;
}
