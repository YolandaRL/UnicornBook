package org.unicorn.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "tematica")
public class Tematica implements Serializable {
    private static final long serialVersionUID = -7394652279387016203L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_tematica")
    private Long id;
}
