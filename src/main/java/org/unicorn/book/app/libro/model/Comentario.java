package org.unicorn.book.app.libro.model;

import org.unicorn.book.app.usuario.model.Estado;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "COMENTARIO")
public class Comentario implements Serializable {
    private static final long serialVersionUID = 1650837254265550705L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "FECHA_COMENTARIO")
    private Date fechaComentario;

    @Column(name = "HORA_COMENTARIO")
    @Temporal(TemporalType.TIME)
    private Date horaComentario;

    @Column(name = "COMENTARIO")
    private String textoComentario;

    @Column(name = "ESTRELLAS")
    private Integer estrellas;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_ESTADO")
    private Estado estado;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getFechaComentario() {
        return fechaComentario;
    }

    public void setFechaComentario(Date fechaComentario) {
        this.fechaComentario = fechaComentario;
    }

    public Date getHoraComentario() {
        return horaComentario;
    }

    public void setHoraComentario(Date horaComentario) {
        this.horaComentario = horaComentario;
    }

    public String getTextoComentario() {
        return textoComentario;
    }

    public void setTextoComentario(String textoComentario) {
        this.textoComentario = textoComentario;
    }

    public Integer getEstrellas() {
        return estrellas;
    }

    public void setEstrellas(Integer estrellas) {
        this.estrellas = estrellas;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }
}
