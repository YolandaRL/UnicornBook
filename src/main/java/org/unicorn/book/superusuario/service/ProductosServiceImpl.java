package org.unicorn.book.superusuario.service;

import org.mapstruct.factory.Mappers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.unicorn.book.libreria.model.Libro;
import org.unicorn.book.libreria.repository.LibroRepository;
import org.unicorn.book.superusuario.dto.ProductoForm;
import org.unicorn.book.superusuario.mapper.ProductoMapper;

import javax.persistence.EntityManager;

/**
 * Implementa las operaciones disponibles que tiene el administrador sobre productos
 */
@Service
@Transactional(readOnly = true)
public class ProductosServiceImpl implements ProductosService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ProductosServiceImpl.class);
    private static final ProductoMapper MAPPER = Mappers.getMapper(ProductoMapper.class);

    private final LibroRepository libroRepository;
    private final EntityManager entityManager;

    /**
     * Constructor
     *
     * @param libroRepository el repositorio de libros {@link LibroRepository}
     * @param entityManager   el manejador generico de entidades {@link EntityManager}
     */
    public ProductosServiceImpl(LibroRepository libroRepository, EntityManager entityManager) {
        this.libroRepository = libroRepository;
        this.entityManager = entityManager;
    }

    @Override
    public ProductoForm getFormularioEdicion(Long idProducto) {
        if (ObjectUtils.isEmpty(idProducto)) {
            return new ProductoForm();
        }
        return MAPPER.toProductoForm(libroRepository.findById(idProducto).orElse(null));
    }

    @Override
    @Transactional
    public ProductoForm saveUpdateLibro(ProductoForm form) {
        return null;
    }

    @Override
    @Transactional
    public void eliminarLibro(Long idProducto) {
        Libro libro = libroRepository.getOne(idProducto);
        libro.setVisible(Boolean.FALSE);
        libroRepository.saveAndFlush(libro);
    }
}
