package org.unicorn.book.superusuario.mapper;

import org.mapstruct.AfterMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.unicorn.book.superusuario.dto.ClienteDTO;
import org.unicorn.book.usuario.model.Rol;
import org.unicorn.book.usuario.model.Usuario;

@Mapper
public interface ClienteMapper {

    @Mapping(target = "roles", ignore = true)
    ClienteDTO clienteToDTO(Usuario src);

    @AfterMapping
    default void clienteToDTO(@MappingTarget ClienteDTO target, Usuario src) {
        String[] roles = src.getRoles().stream().map(Rol::getNombre).toArray(String[]::new);
        target.setRoles(String.join(", ", roles));
    }
}
