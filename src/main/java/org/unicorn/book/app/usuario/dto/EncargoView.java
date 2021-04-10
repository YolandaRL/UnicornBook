package org.unicorn.book.app.usuario.dto;

import java.util.Date;

public interface EncargoView {

    Long getId();

    Long getIsbn();

    Integer getCantidad();

    String getTitulo();

    Long getLibroId();

    Date getFechaEntrega();

    Date getFechaEncargo();

    Date getFechaFin();

    String getEstadoNombre();

    String getTipoEntregaNombre();
}
