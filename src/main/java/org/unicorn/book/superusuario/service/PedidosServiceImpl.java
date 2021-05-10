package org.unicorn.book.superusuario.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Implementa las operaciones disponibles que tiene el administrador sobre pedidos
 */
@Service
@Transactional(readOnly = true)
public class PedidosServiceImpl implements PedidosService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PedidosServiceImpl.class);

}
