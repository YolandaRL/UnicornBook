package org.unicorn.book.superusuario.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Implementa las operaciones disponibles que tiene el administrador para obtener estadisticas rapidas de la librería web
 */
@Service
@Transactional(readOnly = true)
public class ConsolaServiceImpl implements ConsolaService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ConsolaServiceImpl.class);

}
