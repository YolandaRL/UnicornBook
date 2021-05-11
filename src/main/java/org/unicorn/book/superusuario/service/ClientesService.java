package org.unicorn.book.superusuario.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.unicorn.book.superusuario.dto.ClienteDTO;
import org.unicorn.book.superusuario.filter.ClienteFilter;

import java.util.List;

/**
 * Define las operaciones disponibles que tiene el administrador sobre usuario registrados
 */
public interface ClientesService {
    /**
     * Obtiene todos los comentarios realizados por usuarios para su moderación. El filtro
     * todavía no tiene opciones
     *
     * @param filtro   el filtro a aplicar, si no se especifica se obtienen todos {@link ClienteFilter}
     * @param pageable la paginación de clientes {@link Pageable}
     * @return el listado de clientes paginados {@link List <ComentarioDTO>}
     */
    Page<ClienteDTO> getAllClientesByFilter(ClienteFilter filtro, Pageable pageable);
}
