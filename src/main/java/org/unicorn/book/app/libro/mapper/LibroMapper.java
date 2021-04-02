package org.unicorn.book.app.libro.mapper;

import org.mapstruct.Mapper;
import org.unicorn.book.app.libro.dto.LibroDto;
import org.unicorn.book.app.libro.model.Libro;

@Mapper
public interface LibroMapper {

    LibroDto libroToDTO(Libro src);
}
