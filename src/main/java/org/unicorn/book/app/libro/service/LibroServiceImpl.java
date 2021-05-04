package org.unicorn.book.app.libro.service;

import org.mapstruct.factory.Mappers;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.libro.dto.AutorView;
import org.unicorn.book.app.libro.dto.ComentarioDto;
import org.unicorn.book.app.libro.dto.LibroDto;
import org.unicorn.book.app.libro.dto.LibroView;
import org.unicorn.book.app.libro.dto.MaestroView;
import org.unicorn.book.app.libro.filter.BusquedaFilter;
import org.unicorn.book.app.libro.mapper.LibroMapper;
import org.unicorn.book.app.libro.model.Libro;
import org.unicorn.book.app.libro.repository.AutorRepository;
import org.unicorn.book.app.libro.repository.ColeccionRepository;
import org.unicorn.book.app.libro.repository.EditorialRepository;
import org.unicorn.book.app.libro.repository.LibroRepository;
import org.unicorn.book.app.libro.repository.TematicaRepository;
import org.unicorn.book.app.libro.specifications.BusquedaSpecifications;
import org.unicorn.book.app.usuario.repository.DetalleCompraRepository;
import org.unicorn.book.autenticacion.AuthenticationUtils;

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
    private final DetalleCompraRepository detalleCompraRepository;

    public LibroServiceImpl(LibroRepository libroRepository, AutorRepository autorRepository,
            TematicaRepository tematicaRepository, ColeccionRepository coleccionRepository,
            EditorialRepository editorialRepository, DetalleCompraRepository detalleCompraRepository) {
        this.libroRepository = libroRepository;
        this.autorRepository = autorRepository;
        this.tematicaRepository = tematicaRepository;
        this.coleccionRepository = coleccionRepository;
        this.editorialRepository = editorialRepository;
        this.detalleCompraRepository = detalleCompraRepository;
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
            detalleCompraRepository.findAllByLibroId(id).forEach(dt -> {
                if (dt.getComentario() != null) {
                    ComentarioDto comentarioDto = new ComentarioDto();
                    comentarioDto.setId(dt.getComentario().getId());
                    comentarioDto.setIdLibro(id);
                    comentarioDto.setComentario(dt.getComentario().getTextoComentario());
                    comentarioDto.setEstrellas(dt.getComentario().getEstrellas());
                    comentarioDto.setFecha(dt.getComentario().getFechaComentario());
                    comentarioDto.setNombreUsuario(dt.getComentario().isAnonimo() ? "Anónimo" : dt.getCompra().getUsuario().getUsuario());
                    comentarioDto.setEditable(dt.getCompra().getUsuario().getId().equals(AuthenticationUtils.getIdUsuario()));
                    comentarios.add(comentarioDto);
                }
            });
        }
        return comentarios;
    }
}
