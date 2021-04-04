package org.unicorn.book.app.libro.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.unicorn.book.app.libro.dto.LibroDto;
import org.unicorn.book.app.libro.model.Libro;

@Mapper
public interface LibroMapper {

    @Mapping(target = "sipnosis", source = "sinopsis")
    @Mapping(target = "autor", source = "autor.nombre")
    @Mapping(target = "editorial", source = "editorial.nombre")
    LibroDto libroToDTO(Libro src);
}
