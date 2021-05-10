package org.unicorn.book.superusuario.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.unicorn.book.superusuario.dto.ComentarioDTO;
import org.unicorn.book.superusuario.filter.ComentarioFilter;

import java.util.List;

/**
 * Define las operaciones disponibles que tiene el administrador sobre comentarios y valoraciones de clientes
 */
public interface ComentariosService {

    /**
     * Obtiene todos los comentarios realizados por usuarios para su moderación. El filtro
     * posibilita la búsqueda por el estado del comentario
     *
     * @param filtro   el filtro a aplicar, si no se especifica se obtienen todos {@link ComentarioFilter}
     * @param pageable la paginación de comentarios {@link Pageable}
     * @return el listado de comentarios paginados {@link List<ComentarioDTO>}
     */
    Page<ComentarioDTO> getAllComentarioByFilter(ComentarioFilter filtro, Pageable pageable);

    /**
     * Actualiza el estado de un comentario
     *
     * @param idLibro   el ID del libro {@link Long}
     * @param idUsuario el ID del usuario que realizó la valoración {@link Long}
     * @param idEstado  el ID del estado {@link Long}
     * @return el comentario actualizado {@link ComentarioDTO}
     */
    ComentarioDTO actualizarEstadoComentario(Long idLibro, Long idUsuario, Long idEstado);
}
