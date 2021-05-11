package org.unicorn.book.superusuario.service;

import org.mapstruct.factory.Mappers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.superusuario.dto.PedidoDTO;
import org.unicorn.book.superusuario.filter.PedidoFilter;
import org.unicorn.book.superusuario.mapper.PedidoMapper;
import org.unicorn.book.superusuario.specification.PedidoSpecification;
import org.unicorn.book.usuario.model.DetalleCompra;
import org.unicorn.book.usuario.repository.DetalleCompraRepository;

/**
 * Implementa las operaciones disponibles que tiene el administrador sobre pedidos
 */
@Service
@Transactional(readOnly = true)
public class PedidosServiceImpl implements PedidosService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PedidosServiceImpl.class);
    private static final PedidoMapper MAPPER = Mappers.getMapper(PedidoMapper.class);

    private final DetalleCompraRepository detalleCompraRepository;

    /**
     * Contructor
     *
     * @param detalleCompraRepository el repositorio que relaciona compras y libros {@link DetalleCompraRepository}
     */
    public PedidosServiceImpl(DetalleCompraRepository detalleCompraRepository) {
        this.detalleCompraRepository = detalleCompraRepository;
    }

    @Override
    public Page<PedidoDTO> getAllPedidosByFilter(PedidoFilter filtro, Pageable pageable) {
        LOGGER.info("Obteniendo el listado de pedidos registrados en la aplicación");
        Page<DetalleCompra> compras = detalleCompraRepository.findAll(new PedidoSpecification(filtro), pageable);
        return compras.map(MAPPER::pedidoToDTO);
    }
}
