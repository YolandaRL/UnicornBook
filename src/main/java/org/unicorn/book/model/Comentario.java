package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "comentario")
public class Comentario implements Serializable {
    private static final long serialVersionUID = 1650837254265550705L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_comentario")
    private Long id;
}
