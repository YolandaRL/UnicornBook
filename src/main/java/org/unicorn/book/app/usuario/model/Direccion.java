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
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "DIRECCION")
public class Direccion implements Serializable {
    private static final long serialVersionUID = -7361302534815017815L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NOMBRE_PERSONALIZADO")
    private String nombrePersonalizado;

    @Column(name = "NOMBRE_RECEPTOR")
    private String nombreReceptor;

    @Column(name = "APELLIDO1_RECEPTOR")
    private String nombre1Receptor;

    @Column(name = "APELLIDO2_RECEPTOR")
    private String nombre2Receptor;

    @Column(name = "DIRECCION")
    private String textoDireccion;

    @Column(name = "CODIGO_POSTAL")
    private Integer codigoPostal;

    @Column(name = "POBLACION")
    private String poblacion;

    @Column(name = "PROVINCIA")
    private String provincia;

    @Column(name = "PAIS")
    private String pais;

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

    public Integer getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(Integer codigoPostal) {
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
