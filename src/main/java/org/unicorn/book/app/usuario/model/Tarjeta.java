package org.unicorn.book.app.usuario.model;

import org.unicorn.book.app.usuario.model.Usuario;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "tarjeta")
public class Tarjeta implements Serializable {
    private static final long serialVersionUID = -5868846461317082440L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_tarjeta")
    private Long id;

    @Column(name = "nombre_personalizado")
    private String nombrePersonalizado;

    @Column(name = "numero")
    private Long numero;

    @Column(name = "tipo_tarjeta")
    private String tipoTarjeta;

    @Column(name = "mes_caducidad")
    private Integer mesCaducidad;

    @Column(name = "ano_caducidad")
    private Integer anoCaducidad;

    @Column(name = "cvv")
    private Integer cvv;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombrePersonalizado() {
        return nombrePersonalizado;
    }

    public void setNombrePersonalizado(String nombrePersonalizado) {
        this.nombrePersonalizado = nombrePersonalizado;
    }

    public Long getNumero() {
        return numero;
    }

    public void setNumero(Long numero) {
        this.numero = numero;
    }

    public String getTipoTarjeta() {
        return tipoTarjeta;
    }

    public void setTipoTarjeta(String tipoTarjeta) {
        this.tipoTarjeta = tipoTarjeta;
    }

    public Integer getMesCaducidad() {
        return mesCaducidad;
    }

    public void setMesCaducidad(Integer mesCaducidad) {
        this.mesCaducidad = mesCaducidad;
    }

    public Integer getAnoCaducidad() {
        return anoCaducidad;
    }

    public void setAnoCaducidad(Integer anoCaducidad) {
        this.anoCaducidad = anoCaducidad;
    }

    public Integer getCvv() {
        return cvv;
    }

    public void setCvv(Integer cvv) {
        this.cvv = cvv;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
