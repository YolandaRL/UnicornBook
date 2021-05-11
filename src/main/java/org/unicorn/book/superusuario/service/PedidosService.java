package org.unicorn.book.superusuario.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.unicorn.book.superusuario.dto.PedidoDTO;
import org.unicorn.book.superusuario.filter.PedidoFilter;

import java.util.List;

/**
 * Define las operaciones disponibles que tiene el administrador sobre pedidos
 */
public interface PedidosService {
    /**
     * Obtiene todos los comentarios realizados por usuarios para su moderación. El filtro
     * todavía no tiene opciones
     *
     * @param filtro   el filtro a aplicar, si no se especifica se obtienen todos {@link PedidoFilter}
     * @param pageable la paginación de pedidos {@link Pageable}
     * @return el listado de pedidos paginados {@link List <PedidoDTO>}
     */
    Page<PedidoDTO> getAllPedidosByFilter(PedidoFilter filtro, Pageable pageable);
}
