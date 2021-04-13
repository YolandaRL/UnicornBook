package org.unicorn.book.app.usuario.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class ConsultaForm {

    private final TipoOperacion tipoOperacion;

    private Long id;

    @NotEmpty(message = "Campo obligatorio")
    private String nombre;

    @NotEmpty(message = "Campo obligatorio")
    private String apellido1;

    @NotEmpty(message = "Campo obligatorio")
    private String apellido2;

    @NotEmpty(message = "Campo obligatorio")
    private String email;

    @NotNull(message = "Campo obligatorio")
    private Long telefono;

    @NotEmpty(message = "Campo obligatorio")
    private String detalleConsulta;

    public ConsultaForm() {
        this.tipoOperacion = TipoOperacion.CONSULTA;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public TipoOperacion getTipoOperacion() {
        return tipoOperacion;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getTelefono() {
        return telefono;
    }

    public void setTelefono(Long telefono) {
        this.telefono = telefono;
    }

    public String getDetalleConsulta() {
        return detalleConsulta;
    }

    public void setDetalleConsulta(String detalleConsulta) {
        this.detalleConsulta = detalleConsulta;
    }
}
