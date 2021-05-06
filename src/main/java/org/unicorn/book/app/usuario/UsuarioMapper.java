package org.unicorn.book.app.usuario;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.unicorn.book.app.usuario.dto.DireccionForm;
import org.unicorn.book.app.usuario.dto.TarjetaForm;
import org.unicorn.book.app.usuario.dto.UsuarioForm;
import org.unicorn.book.app.usuario.model.Direccion;
import org.unicorn.book.app.usuario.model.Tarjeta;
import org.unicorn.book.app.usuario.model.Usuario;

@Mapper
public interface UsuarioMapper {

    @Mapping(target = "roles", ignore = true)
    @Mapping(target = "password", ignore = true)
    @Mapping(target = "email", source = "correo")
    @Mapping(target = "direcciones", ignore = true)
    Usuario toUsuario(UsuarioForm src);

    @Mapping(target = "repetirContrasena", ignore = true)
    @Mapping(target = "correo", source = "email")
    @Mapping(target = "contrasena", ignore = true)
    UsuarioForm toUsuarioForm(Usuario src);

    @Mapping(target = "usuario", ignore = true)
    @Mapping(target = "textoDireccion", source = "direccion")
    @Mapping(target = "nombreReceptor", source = "nombre")
    @Mapping(target = "nombre2Receptor", source = "apellido2")
    @Mapping(target = "nombre1Receptor", source = "apellido1")
    Direccion toDireccion(DireccionForm src);

    @Mapping(target = "direccion", source = "textoDireccion")
    @Mapping(target = "nombre", source = "nombreReceptor")
    @Mapping(target = "apellido2", source = "nombre2Receptor")
    @Mapping(target = "apellido1", source = "nombre1Receptor")
    DireccionForm toDireccionForm(Direccion srd);

    @Mapping(target = "usuario", source = "")
    @Mapping(target = "tipoTarjeta", ignore = true)
    Tarjeta toTarjeta(TarjetaForm src);

    @Mapping(target = "tipoTarjeta", source = "tipoTarjeta.id")
    TarjetaForm toTarjetaForm(Tarjeta src);
}
