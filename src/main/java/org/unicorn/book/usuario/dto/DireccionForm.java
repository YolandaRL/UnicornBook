package org.unicorn.book.usuario.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class DireccionForm {

    private Long id;
    @NotEmpty(message = "Campo obligatorio")
    private String nombrePersonalizado;
    @NotEmpty(message = "Campo obligatorio")
    private String nombre;
    @NotEmpty(message = "Campo obligatorio")
    private String apellido1;
    @NotEmpty(message = "Campo obligatorio")
    private String apellido2;
    @NotEmpty(message = "Campo obligatorio")
    private String direccion;
    @NotNull(message = "Campo obligatorio")
    private Integer codigoPostal;
    @NotEmpty(message = "Campo obligatorio")
    private String poblacion;
    @NotEmpty(message = "Campo obligatorio")
    private String provincia;
    @NotEmpty(message = "Campo obligatorio")
    private String pais;

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

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
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
}
