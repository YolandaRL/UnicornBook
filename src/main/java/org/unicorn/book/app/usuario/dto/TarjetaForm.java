package org.unicorn.book.app.usuario.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class TarjetaForm {

    private Long id;
    @NotEmpty(message = "Campo obligatorio")
    private String nombrePersonalizado;
    @NotNull(message = "Campo obligatorio")
    private Long numero;
    @NotEmpty(message = "Campo obligatorio")
    private String tipoTarjeta;
    @NotNull(message = "Campo obligatorio")
    private Integer mesCaducidad;
    @NotNull(message = "Campo obligatorio")
    private Integer anoCaducidad;
    @NotNull(message = "Campo obligatorio")
    private Integer cvv;

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
}
