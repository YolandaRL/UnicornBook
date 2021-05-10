package org.unicorn.book.superusuario.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.unicorn.book.libreria.model.Comentario;
import org.unicorn.book.superusuario.dto.ComentarioDTO;

@Mapper
public interface ComentarioMapper {

    @Mapping(target = "nombreUsuario", source = "usuario.nombre")
    @Mapping(target = "nombreLibro", source = "libro.titulo")
    @Mapping(target = "anonimo", source = "anonimo")
    @Mapping(target = "idUsuario", source = "usuario.id")
    @Mapping(target = "idLibro", source = "libro.id")
    @Mapping(target = "idEstado", source = "estado.id")
    @Mapping(target = "comentario", source = "textoComentario")
    ComentarioDTO comentarioToDTO(Comentario src);
}
