package org.unicorn.book.app.usuario.dto;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotEmpty;

public class TarjetaForm {

    private Long id;
    @NotEmpty(message = "Campo obligatorio")
    private String nombrePersonalizado;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 19, max = 19, message = "Campo obligatorio")
    private String numero;
    @NotEmpty(message = "Campo obligatorio")
    private String tipoTarjeta;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 1, max = 2, message = "Campo obligatorio")
    private String mesCaducidad;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 4, max = 4, message = "Campo obligatorio")
    private String anoCaducidad;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 2, max = 3, message = "Campo obligatorio")
    private String cvv;

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

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getTipoTarjeta() {
        return tipoTarjeta;
    }

    public void setTipoTarjeta(String tipoTarjeta) {
        this.tipoTarjeta = tipoTarjeta;
    }

    public String getMesCaducidad() {
        return mesCaducidad;
    }

    public void setMesCaducidad(String mesCaducidad) {
        this.mesCaducidad = mesCaducidad;
    }

    public String getAnoCaducidad() {
        return anoCaducidad;
    }

    public void setAnoCaducidad(String anoCaducidad) {
        this.anoCaducidad = anoCaducidad;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }
}
