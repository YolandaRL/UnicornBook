package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.ComentarioForm;
import org.unicorn.book.app.usuario.dto.ComentarioView;
import org.unicorn.book.app.usuario.exception.LibroNoCompradoException;
import org.unicorn.book.app.usuario.exception.LibroYaComentadoException;

import java.util.List;

public interface ComentarioService {

    List<ComentarioView> getComentarios();

    void nuevoComentario(ComentarioForm comentarioForm) throws LibroYaComentadoException, LibroNoCompradoException;

    void editarComentario(ComentarioForm comentarioForm);

    void eliminarComentario(Long idLibro);
}
