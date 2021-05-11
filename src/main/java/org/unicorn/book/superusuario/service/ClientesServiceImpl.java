package org.unicorn.book.superusuario.service;

import org.mapstruct.factory.Mappers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.superusuario.dto.ClienteDTO;
import org.unicorn.book.superusuario.filter.ClienteFilter;
import org.unicorn.book.superusuario.mapper.ClienteMapper;
import org.unicorn.book.superusuario.specification.ClienteSpecification;
import org.unicorn.book.usuario.model.Usuario;
import org.unicorn.book.usuario.repository.UsuarioRepository;

/**
 * Implementa las operaciones disponibles que tiene el administrador sobre usuario registrados
 */
@Service
@Transactional(readOnly = true)
public class ClientesServiceImpl implements ClientesService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ClientesServiceImpl.class);
    private static final ClienteMapper MAPPER = Mappers.getMapper(ClienteMapper.class);

    private final UsuarioRepository usuarioRepository;

    /**
     * Constructor
     *
     * @param usuarioRepository el repositorio de usuarios {@link UsuarioRepository}
     */
    public ClientesServiceImpl(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @Override
    public Page<ClienteDTO> getAllClientesByFilter(ClienteFilter filtro, Pageable pageable) {
        LOGGER.info("Obteniendo el listado de clientes registrados en la aplicación");
        Page<Usuario> usuarios = usuarioRepository.findAll(new ClienteSpecification(filtro), pageable);
        return usuarios.map(MAPPER::clienteToDTO);
    }
}
