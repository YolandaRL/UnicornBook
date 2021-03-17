package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "rol")
public class Rol implements Serializable {
    private static final long serialVersionUID = -6418520097494559841L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_rol")
    private Long id;
}
