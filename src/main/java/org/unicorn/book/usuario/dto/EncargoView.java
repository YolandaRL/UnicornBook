package org.unicorn.book.usuario.dto;

import java.util.Date;

public interface EncargoView {

    Long getId();

    String getIsbn();

    Integer getCantidad();

    String getTitulo();

    Long getLibroId();

    Date getFechaEntrega();

    Date getHoraEncargo();

    Date getFechaFin();

    String getEstadoNombre();

    String getTipoEntregaNombre();
}
