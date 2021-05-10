package org.unicorn.book.superusuario.service;

import org.mapstruct.factory.Mappers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.aplicacion.model.Estado;
import org.unicorn.book.libreria.model.Comentario;
import org.unicorn.book.libreria.repository.ComentarioRepository;
import org.unicorn.book.superusuario.dto.ComentarioDTO;
import org.unicorn.book.superusuario.filter.ComentarioFilter;
import org.unicorn.book.superusuario.mapper.ComentarioMapper;
import org.unicorn.book.superusuario.specification.ComentarioSpecification;

import javax.persistence.EntityManager;

/**
 * Implementa las operaciones disponibles que tiene el administrador sobre comentarios y valoraciones de clientes
 */
@Service
@Transactional(readOnly = true)
public class ComentariosServiceImpl implements ComentariosService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ComentariosServiceImpl.class);
    private static final ComentarioMapper MAPPER = Mappers.getMapper(ComentarioMapper.class);

    private final ComentarioRepository comentarioRepository;
    private final EntityManager entityManager;

    /**
     * Constructor
     *
     * @param comentarioRepository el repositorio de comentarios {@link ComentarioRepository}
     * @param entityManager        el manejador de entidades {@link EntityManager}
     */
    public ComentariosServiceImpl(ComentarioRepository comentarioRepository, EntityManager entityManager) {
        this.comentarioRepository = comentarioRepository;
        this.entityManager = entityManager;
    }

    @Override
    public Page<ComentarioDTO> getAllComentarioByFilter(ComentarioFilter filtro, Pageable pageable) {
        LOGGER.info("Obteniendo el listado de comentarios registrados en la aplicación");
        Page<Comentario> comentarios = comentarioRepository.findAll(new ComentarioSpecification(filtro), pageable);
        return comentarios.map(MAPPER::comentarioToDTO);
    }

    @Override
    @Transactional
    public ComentarioDTO actualizarEstadoComentario(Long idLibro, Long idUsuario, Long idEstado) {
        Comentario comentario = comentarioRepository.getFirstByLibroIdAndUsuarioId(idLibro, idUsuario);
        comentario.setEstado(entityManager.getReference(Estado.class, idEstado));
        comentario = comentarioRepository.saveAndFlush(comentario);
        return MAPPER.comentarioToDTO(comentario);
    }
}
