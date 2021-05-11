package org.unicorn.book.usuario.service;

import org.unicorn.book.usuario.dto.ComentarioForm;
import org.unicorn.book.usuario.dto.ComentarioView;
import org.unicorn.book.usuario.exception.LibroNoCompradoException;
import org.unicorn.book.usuario.exception.LibroYaComentadoException;

import java.util.List;

public interface ComentarioService {

    List<ComentarioView> getComentarios();

    void nuevoComentario(ComentarioForm comentarioForm) throws LibroYaComentadoException, LibroNoCompradoException;

    ComentarioForm getComentarioForm(Long idLibro);

    void editarComentario(ComentarioForm comentarioForm);

    void eliminarComentario(Long idLibro);
}
