package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.UsuarioForm;
import org.unicorn.book.app.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.app.usuario.exception.UsernameDuplicatedException;

/**
 *
 */
public interface UsuarioService {

    /**
     * @param usuarioForm
     * @throws UsernameDuplicatedException
     * @throws EmailDuplicatedException
     */
    void altaUsuario(UsuarioForm usuarioForm) throws UsernameDuplicatedException, EmailDuplicatedException;

    UsuarioForm getFormularioUsuario();

    UsuarioForm actualizarUsuario(UsuarioForm form);

    void altaOActualizarDireccion();

    void eliminarDireccion(Long idDireccion);

}
