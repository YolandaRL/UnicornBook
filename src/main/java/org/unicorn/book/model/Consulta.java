package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "consulta")
public class Consulta implements Serializable {
    private static final long serialVersionUID = 7304051981479345163L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_consulta")
    private Long id;
}
