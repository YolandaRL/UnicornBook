package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "estado")
public class Estado implements Serializable {
    private static final long serialVersionUID = 5425510610884752179L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_estado")
    private Long id;
}
