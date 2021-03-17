package org.unicorn.book.model;

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
@Table(name = "direccion")
public class Direccion implements Serializable {
    private static final long serialVersionUID = -7361302534815017815L;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id_direccion")
    private Long id;

    @Column(name = "nombre_personalizado")
    private String nombrePersonalizado;

    @Column(name = "nombre_receptor")
    private String nombreReceptor;

    @Column(name = "apellido1_receptor")
    private String nombre1Receptor;

    @Column(name = "apellido2_receptor")
    private String nombre2Receptor;

    @Column(name = "direccion")
    private String textoDireccion;

    @Column(name = "codigo_postal")
    private Long codigoPostal;

    @Column(name = "poblacion")
    private String poblacion;

    @Column(name = "provincia")
    private String provincia;

    @Column(name = "pais")
    private String pais;

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

    public String getNombreReceptor() {
        return nombreReceptor;
    }

    public void setNombreReceptor(String nombreReceptor) {
        this.nombreReceptor = nombreReceptor;
    }

    public String getNombre1Receptor() {
        return nombre1Receptor;
    }

    public void setNombre1Receptor(String nombre1Receptor) {
        this.nombre1Receptor = nombre1Receptor;
    }

    public String getNombre2Receptor() {
        return nombre2Receptor;
    }

    public void setNombre2Receptor(String nombre2Receptor) {
        this.nombre2Receptor = nombre2Receptor;
    }

    public String getTextoDireccion() {
        return textoDireccion;
    }

    public void setTextoDireccion(String textoDireccion) {
        this.textoDireccion = textoDireccion;
    }

    public Long getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(Long codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getPoblacion() {
        return poblacion;
    }

    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
