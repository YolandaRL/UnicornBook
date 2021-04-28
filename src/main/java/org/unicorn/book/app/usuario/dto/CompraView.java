package org.unicorn.book.app.usuario.dto;

import java.util.Date;

public interface CompraView {

    Long getId();

    Date getFechaCompra();

    String getDireccionTextoDireccion();

    Float getMetodoPago();

    String getEstadoNombre();

    Date getFechaEntrega();
}
