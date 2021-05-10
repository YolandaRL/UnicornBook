package org.unicorn.book.libreria.model;

import org.unicorn.book.aplicacion.model.Estado;
import org.unicorn.book.usuario.model.Usuario;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "COMENTARIO")
public class Comentario implements Serializable {
    private static final long serialVersionUID = 1650837254265550705L;

    @EmbeddedId
    private ComentarioPk pk;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_USUARIO", insertable = false, updatable = false)
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_LIBRO", insertable = false, updatable = false)
    private Libro libro;

    @Column(name = "FECHA_COMENTARIO")
    private Date fechaComentario;

    @Column(name = "COMENTARIO")
    private String textoComentario;

    @Column(name = "ESTRELLAS")
    private Integer estrellas;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_ESTADO")
    private Estado estado;

    @Column(name = "ANONIMO")
    private boolean anonimo;

    public ComentarioPk getPk() {
        return pk;
    }

    public void setPk(ComentarioPk pk) {
        this.pk = pk;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public Date getFechaComentario() {
        return fechaComentario;
    }

    public void setFechaComentario(Date fechaComentario) {
        this.fechaComentario = fechaComentario;
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

    public boolean isAnonimo() {
        return anonimo;
    }

    public void setAnonimo(boolean anonimo) {
        this.anonimo = anonimo;
    }
}
