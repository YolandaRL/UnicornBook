package org.unicorn.book.app.usuario.dto;

import org.unicorn.book.app.validation.CustomScriptAssert;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.validation.constraints.NotEmpty;

@CustomScriptAssert.List({
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null?_this.nombre!='':true", field = "nombre", message = "Campo oblicatorio"),
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null?_this.apellido1!='':true", field = "apellido1", message = "Campo oblicatorio"),
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null&&_this.telefono==null?_this.email!='':true", field = "email", message = "Campo oblicatorio"),
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null&&_this.email==null?_this.telefono!=null:true", field = "telefono", message = "Campo oblicatorio"), })
public class ConsultaForm {

    private final Long idUsuario = AuthenticationUtils.getIdUsuario();

    private final TipoOperacion tipoOperacion;

    private Long id;

    private String nombre;

    private String apellido1;

    private String apellido2;

    private String email;

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

    public Long getIdUsuario() {
        return idUsuario;
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
