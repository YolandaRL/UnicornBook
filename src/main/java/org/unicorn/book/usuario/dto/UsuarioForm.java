package org.unicorn.book.usuario.dto;

import org.unicorn.book.configuracion.validation.CorreoElectronico;
import org.unicorn.book.configuracion.validation.CustomScriptAssert;
import org.unicorn.book.configuracion.validation.NifNie;

import javax.validation.constraints.NotEmpty;
import java.util.Date;

@CustomScriptAssert.List({
        @CustomScriptAssert(lang = "javascript", script = "_this.id==null?_this.contrasena!=null:true", field = "contrasena", message = "Las contraseña es obligatoria"),
        @CustomScriptAssert(lang = "javascript", script = "_this.id==null?_this.repetirContrasena!=null:true", field = "repetirContrasena", message = "Las contraseñas indicadas no son iguales"),
        @CustomScriptAssert(lang = "javascript", script = "_this.repetirContrasena!=null&&_this.contrasena==_this.repetirContrasena", field = "repetirContrasena", message = "Las contraseñas indicadas no son iguales")

})
public class UsuarioForm {

    private Long id;
    @NotEmpty(message = "El nombre de usuario es obligatorio")
    private String usuario;
    private String contrasena;
    private String repetirContrasena;
    @NotEmpty(message = "El nombre es obligatorio")
    private String nombre;
    @NotEmpty(message = "El primer apellido es obligatorio")
    private String apellido1;
    @NotEmpty(message = "El segundo apellido es obligatorio")
    private String apellido2;
    @NifNie(message = "El DNI no tiene un formato correcto")
    private String dni;
    private Long telefono1;
    private Long telefono2;
    @NotEmpty(message = "El correo electrónico no es válido")
    @CorreoElectronico
    private String correo;
    private Date fechaNacimiento;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getRepetirContrasena() {
        return repetirContrasena;
    }

    public void setRepetirContrasena(String repetirContrasena) {
        this.repetirContrasena = repetirContrasena;
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

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Long getTelefono1() {
        return telefono1;
    }

    public void setTelefono1(Long telefono1) {
        this.telefono1 = telefono1;
    }

    public Long getTelefono2() {
        return telefono2;
    }

    public void setTelefono2(Long telefono2) {
        this.telefono2 = telefono2;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
}
