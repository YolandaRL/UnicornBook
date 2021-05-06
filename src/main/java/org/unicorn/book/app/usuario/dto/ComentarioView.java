package org.unicorn.book.app.usuario.dto;

import java.util.Date;

public interface ComentarioView {

    Long getLibroId();

    String getLibroTitulo();

    String getTextoComentario();

    Date getFechaComentario();

    Integer getEstrellas();

    String getEstadoNombre();

    boolean getAnonimo();

}
