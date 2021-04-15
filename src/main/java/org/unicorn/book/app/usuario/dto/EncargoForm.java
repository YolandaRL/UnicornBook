package org.unicorn.book.app.usuario.dto;

import org.unicorn.book.app.validation.CustomScriptAssert;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@CustomScriptAssert.List({
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null?_this.nombre!='':true", field = "nombre", message = "Campo oblicatorio"),
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null?_this.apellido1!='':true", field = "apellido1", message = "Campo oblicatorio"),
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null&&_this.telefono==null?_this.email!='':true", field = "email", message = "Campo oblicatorio"),
        @CustomScriptAssert(lang = "javascript", script = "_this.idUsuario==null&&_this.email==null?_this.telefono!=null:true", field = "telefono", message = "Campo oblicatorio"),

        @CustomScriptAssert(lang = "javascript", script = "_this.tipoEntragaId==-1?_this.tipoEntragaId:true", field = "tipoEntragaId", message = "Seleccione una opción") })
public class EncargoForm {

    private final Long idUsuario = AuthenticationUtils.getIdUsuario();

    private final TipoOperacion tipoOperacion;

    private Long id;

    private String nombre;

    private String apellido1;

    private String apellido2;

    private String email;

    private Long telefono;

    private String notas;

    @NotNull(message = "Campo obligatorio")
    private Long isbn;

    @NotNull(message = "Campo obligatorio")
    private Integer cantidad;

    @NotEmpty(message = "Campo obligatorio")
    private String titulo;

    @NotNull(message = "Campo obligatorio")
    private Long tipoEntragaId;

    private Long idLibro;

    public EncargoForm() {
        this.tipoOperacion = TipoOperacion.ENCARGO;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public TipoOperacion getTipoOperacion() {
        return tipoOperacion;
    }

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Long getTipoEntragaId() {
        return tipoEntragaId;
    }

    public void setTipoEntragaId(Long tipoEntragaId) {
        this.tipoEntragaId = tipoEntragaId;
    }

    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }
}
