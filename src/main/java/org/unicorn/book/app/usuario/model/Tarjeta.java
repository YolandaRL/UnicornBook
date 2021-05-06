package org.unicorn.book.app.usuario.model;

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
@Table(name = "TARJETA")
public class Tarjeta implements Serializable {
    private static final long serialVersionUID = -5868846461317082440L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NOMBRE_PERSONALIZADO")
    private String nombrePersonalizado;

    @Column(name = "NUMERO")
    private Long numero;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TIPO_TARJETA")
    private TipoTarjeta tipoTarjeta;

    @Column(name = "MES_CADUCIDAD")
    private Integer mesCaducidad;

    @Column(name = "ANO_CADUCIDAD")
    private Integer anoCaducidad;

    @Column(name = "CVV")
    private Integer cvv;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_USUARIO")
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

    public TipoTarjeta getTipoTarjeta() {
        return tipoTarjeta;
    }

    public void setTipoTarjeta(TipoTarjeta tipoTarjeta) {
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
