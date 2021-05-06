package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.ComentarioForm;
import org.unicorn.book.app.usuario.exception.LibroYaComentadoException;

public interface ComentarioService {

    void nuevoComentario(ComentarioForm comentarioForm) throws LibroYaComentadoException;
}
