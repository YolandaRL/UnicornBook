package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "usuario")
public class Usuario implements Serializable {
    private static final long serialVersionUID = -5725589544729774593L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_usuario")
    private Long id;
}
