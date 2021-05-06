package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.ComentarioForm;
import org.unicorn.book.app.usuario.exception.LibroNoCompradoException;
import org.unicorn.book.app.usuario.exception.LibroYaComentadoException;

public interface ComentarioService {

    void nuevoComentario(ComentarioForm comentarioForm) throws LibroYaComentadoException, LibroNoCompradoException;

    void editarComentario(ComentarioForm comentarioForm);

    void eliminarComentario(Long idLibro);
}
