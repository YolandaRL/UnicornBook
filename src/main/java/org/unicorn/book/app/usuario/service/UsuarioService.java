package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.RegistroForm;
import org.unicorn.book.app.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.app.usuario.exception.UsernameDuplicatedException;

/**
 *
 */
public interface UsuarioService {

    /**
     *
     * @param registroForm
     * @throws UsernameDuplicatedException
     * @throws EmailDuplicatedException
     */
    void altaUsuario(RegistroForm registroForm) throws UsernameDuplicatedException, EmailDuplicatedException;
}
