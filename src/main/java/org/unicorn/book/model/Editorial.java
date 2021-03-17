package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "editorial")
public class Editorial implements Serializable {
    private static final long serialVersionUID = -2707321631041381174L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_editorial")
    private Long id;
}
