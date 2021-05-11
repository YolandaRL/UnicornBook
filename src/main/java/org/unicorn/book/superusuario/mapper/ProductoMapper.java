package org.unicorn.book.superusuario.mapper;

import org.mapstruct.AfterMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.unicorn.book.libreria.model.Libro;
import org.unicorn.book.superusuario.dto.ProductoForm;

import java.util.ArrayList;

@Mapper
public interface ProductoMapper {

    @Mapping(target = "autor", ignore = true)
    @Mapping(target = "coleccion", ignore = true)
    @Mapping(target = "editorial", ignore = true)
    @Mapping(target = "tematicas", ignore = true)
    Libro toLibro(ProductoForm src);

    @Mapping(target = "autor", source = "autor.id")
    @Mapping(target = "coleccion", source = "coleccion.id")
    @Mapping(target = "editorial", source = "editorial.id")
    @Mapping(target = "tematicas", ignore = true)
    ProductoForm toProductoForm(Libro src);

    @AfterMapping
    default void toProductoForm(@MappingTarget ProductoForm target, Libro src) {
        target.setTematicas(new ArrayList<>());
        src.getTematicas().forEach(t -> target.getTematicas().add(t.getId()));
    }
}
