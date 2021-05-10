package org.unicorn.book.libreria.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.unicorn.book.libreria.dto.LibroDto;
import org.unicorn.book.libreria.model.Libro;

@Mapper
public interface LibroMapper {

    @Mapping(target = "sipnosis", source = "sinopsis")
    @Mapping(target = "autor", source = "autor.nombre")
    @Mapping(target = "editorial", source = "editorial.nombre")
    LibroDto libroToDTO(Libro src);
}
