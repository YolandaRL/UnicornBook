package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "encargo")
public class Encargo implements Serializable {
    private static final long serialVersionUID = -2921603864552360304L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_encargo")
    private Long id;
}
