package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "libro")
public class Libro implements Serializable {
    private static final long serialVersionUID = -4739214424066830932L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_libro")
    private Long id;
}
