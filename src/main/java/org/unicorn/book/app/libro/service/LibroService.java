package org.unicorn.book.app.libro.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.unicorn.book.app.libro.dto.AutorView;
import org.unicorn.book.app.libro.dto.LibroDto;
import org.unicorn.book.app.libro.dto.LibroView;
import org.unicorn.book.app.libro.dto.MaestroView;
import org.unicorn.book.app.libro.filter.BusquedaFilter;

import java.util.List;

public interface LibroService {

    Page<LibroDto> findLibros(BusquedaFilter filtro, Pageable pageable);

    LibroView getLibro(Long id);

    List<LibroView> getNovedades();

    List<LibroView> getMuestraLibros();

    AutorView getAutor(Long id);

    Integer getMinimoPrecio();

    Integer getMaximoPrecio();

    List<MaestroView> getAllAutores();

    List<MaestroView> getAllTematicas();

    List<MaestroView> getAllColecciones();

    List<MaestroView> getAllEditoriales();

}
