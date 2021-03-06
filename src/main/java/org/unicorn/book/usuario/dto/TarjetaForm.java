package org.unicorn.book.usuario.dto;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class TarjetaForm {

    private Long id;
    @NotEmpty(message = "Campo obligatorio")
    private String nombrePersonalizado;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 19, max = 19, message = "El número de tarjeta debe ser de 16 dígitos numéricos")
    private String numero;
    @NotNull(message = "Campo obligatorio")
    private Long tipoTarjeta;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 1, max = 2, message = "El mes debe ser de 2 dígitos")
    private String mesCaducidad;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 1, max = 2, message = "El año deben ser los 2 últimos dígitos")
    private String anoCaducidad;
    @NotEmpty(message = "Campo obligatorio")
    @Length(min = 2, max = 3, message = "El CVV debe ser de 3 dígitos numéricos")
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

    public Long getTipoTarjeta() {
        return tipoTarjeta;
    }

    public void setTipoTarjeta(Long tipoTarjeta) {
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
