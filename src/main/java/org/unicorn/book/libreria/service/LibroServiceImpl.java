package org.unicorn.book.libreria.service;

import org.mapstruct.factory.Mappers;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.autenticacion.AutenticacionUtils;
import org.unicorn.book.libreria.dto.AutorView;
import org.unicorn.book.libreria.dto.ComentarioDto;
import org.unicorn.book.libreria.dto.LibroDto;
import org.unicorn.book.libreria.dto.LibroView;
import org.unicorn.book.libreria.dto.MaestroView;
import org.unicorn.book.libreria.filter.BusquedaFilter;
import org.unicorn.book.libreria.mapper.LibroMapper;
import org.unicorn.book.libreria.model.Libro;
import org.unicorn.book.libreria.repository.AutorRepository;
import org.unicorn.book.libreria.repository.ColeccionRepository;
import org.unicorn.book.libreria.repository.ComentarioRepository;
import org.unicorn.book.libreria.repository.EditorialRepository;
import org.unicorn.book.libreria.repository.LibroRepository;
import org.unicorn.book.libreria.repository.TematicaRepository;
import org.unicorn.book.libreria.specifications.BusquedaSpecifications;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class LibroServiceImpl implements LibroService {

    private static final LibroMapper MAPPER = Mappers.getMapper(LibroMapper.class);

    private final LibroRepository libroRepository;
    private final AutorRepository autorRepository;
    private final TematicaRepository tematicaRepository;
    private final ColeccionRepository coleccionRepository;
    private final EditorialRepository editorialRepository;
    private final ComentarioRepository comentarioRepository;

    public LibroServiceImpl(LibroRepository libroRepository, AutorRepository autorRepository,
            TematicaRepository tematicaRepository, ColeccionRepository coleccionRepository,
            EditorialRepository editorialRepository, ComentarioRepository comentarioRepository) {
        this.libroRepository = libroRepository;
        this.autorRepository = autorRepository;
        this.tematicaRepository = tematicaRepository;
        this.coleccionRepository = coleccionRepository;
        this.editorialRepository = editorialRepository;
        this.comentarioRepository = comentarioRepository;
    }

    @Override
    public Page<LibroDto> findLibros(BusquedaFilter filtro, Pageable pageable) {
        Page<Libro> libros = libroRepository.findAll(new BusquedaSpecifications(filtro), pageable);
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
        return libroRepository.findTop10ByVisibleIsTrueOrderByFechaDisponibleDesc();
    }

    @Override
    public AutorView getAutor(Long id) {
        return autorRepository.findAutorById(id);
    }

    @Override
    public Integer getMinimoPrecio() {
        return libroRepository.getMinimoPrecio();
    }

    @Override
    public Integer getMaximoPrecio() {
        return libroRepository.getMaximoPrecio();
    }

    @Override
    public List<MaestroView> getAllAutores() {
        return autorRepository.findAllAutores();
    }

    @Override
    public List<MaestroView> getAllTematicas() {
        return tematicaRepository.findAllTematicas();
    }

    @Override
    public List<MaestroView> getAllColecciones() {
        return coleccionRepository.findAllColecciones();
    }

    @Override
    public List<MaestroView> getAllEditoriales() {
        return editorialRepository.findAllEditoriales();
    }

    @Override
    public List<ComentarioDto> getAllComentariosByIdLibros(Long... idLibro) {
        List<ComentarioDto> comentarios = new ArrayList<>();
        for (Long id : idLibro) {
            comentarioRepository.findAllByLibroId(id).forEach(dt -> {
                ComentarioDto comentarioDto = new ComentarioDto();
                comentarioDto.setIdLibro(dt.getLibro().getId());
                comentarioDto.setVisible(dt.getEstado().getId().equals(3L) || dt.getUsuario().getId()
                        .equals(AutenticacionUtils.getIdUsuario()));
                comentarioDto.setIdEstado(dt.getEstado().getId());
                comentarioDto.setDescricionEstado(dt.getEstado().getNombre());
                comentarioDto.setComentario(dt.getTextoComentario());
                comentarioDto.setEstrellas(dt.getEstrellas());
                comentarioDto.setFecha(dt.getFechaComentario());
                comentarioDto.setNombreUsuario(dt.isAnonimo() ? "Anónimo" : dt.getUsuario().getUsuario());
                comentarioDto.setEditable(dt.getUsuario().getId().equals(AutenticacionUtils.getIdUsuario()));
                comentarios.add(comentarioDto);
            });
        }
        return comentarios;
    }
}
