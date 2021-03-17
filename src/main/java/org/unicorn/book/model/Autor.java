package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "autor")
public class Autor implements Serializable {
    private static final long serialVersionUID = 6690440353825378926L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_autor")
    private Long id;
}
