package org.unicorn.book.usuario.dto;

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
