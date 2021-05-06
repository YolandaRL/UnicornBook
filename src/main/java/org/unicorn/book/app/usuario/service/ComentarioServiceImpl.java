package org.unicorn.book.app.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.usuario.dto.ComentarioForm;
import org.unicorn.book.app.usuario.exception.LibroYaComentadoException;

@Service
@Transactional(readOnly = true)
public class ComentarioServiceImpl implements ComentarioService{

    @Override
    public void nuevoComentario(ComentarioForm comentarioForm) throws LibroYaComentadoException {

    }
}
