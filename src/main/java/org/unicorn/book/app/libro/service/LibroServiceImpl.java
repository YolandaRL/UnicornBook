package org.unicorn.book.app.libro.service;

import org.mapstruct.factory.Mappers;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.libro.dto.LibroDto;
import org.unicorn.book.app.libro.dto.LibroView;
import org.unicorn.book.app.libro.filter.BusquedaSimpleFilter;
import org.unicorn.book.app.libro.mapper.LibroMapper;
import org.unicorn.book.app.libro.model.Libro;
import org.unicorn.book.app.libro.repository.LibroRepository;
import org.unicorn.book.app.libro.specifications.BusquedaSimpleSpecifications;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class LibroServiceImpl implements LibroService {

    private static final LibroMapper MAPPER = Mappers.getMapper(LibroMapper.class);

    private final LibroRepository libroRepository;

    public LibroServiceImpl(LibroRepository libroRepository) {
        this.libroRepository = libroRepository;
    }

    @Override
    public Page<LibroDto> findLibros(BusquedaSimpleFilter filtro, Pageable pageable) {
        Page<Libro> libros = libroRepository.findAll(new BusquedaSimpleSpecifications(filtro), pageable);
        return libros.map(MAPPER::libroToDTO);
    }

    @Override
    public LibroView getLibro(Long id) {
        return libroRepository.findLibroById(id);
    }

    @Override
    public List<LibroView> getNovedades() {
        return libroRepository.findTop3ByVisibleIsTrueOrderByFechaDisponibleDesc();
    }

    @Override
    public List<LibroView> getMuestraLibros() {
        return libroRepository.findTop20ByVisibleIsTrueOrderByFechaDisponibleDesc();
    }
}
