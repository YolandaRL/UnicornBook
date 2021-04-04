package org.unicorn.book.app.libro.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.unicorn.book.app.libro.dto.LibroDto;
import org.unicorn.book.app.libro.dto.LibroView;
import org.unicorn.book.app.libro.filter.BusquedaSimpleFilter;

import java.util.List;

public interface LibroService {

    Page<LibroDto> findLibros(BusquedaSimpleFilter filtro, Pageable pageable);

    LibroView getLibro(Long id);

    List<LibroView> getNovedades();

    List<LibroView> getMuestraLibros();
}
