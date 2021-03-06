package org.unicorn.book.usuario.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "USUARIO_ROL")
public class UsuarioRol implements Serializable {
    private static final long serialVersionUID = 7135515275853642668L;

    @EmbeddedId
    private UsuarioRolPk pk;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_USUARIO", insertable = false, updatable = false)
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_ROL", insertable = false, updatable = false)
    private Rol rol;

    public UsuarioRolPk getPk() {
        return pk;
    }

    public void setPk(UsuarioRolPk pk) {
        this.pk = pk;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }
}
