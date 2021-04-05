package org.unicorn.book.app.libro.dto;

import java.util.Date;
import java.util.List;

public interface LibroView {

    Long getId();

    Long getIsbn();

    String getTitulo();

    String getSubtitulo();

    String getSinopsis();

    Float getPrecio();

    String getIdioma();

    String getFormato();

    String getNotas();

    Integer getStock();

    Integer getPaginas();

    Date getFechaPublicacion();

    Date getFechaEdicion();

    Date getFechaDisponible();

    String getLinkPortada();

    Long getAutorId();

    String getAutorNombre();

    String getEditorialNombre();

    String getColeccionNombre();

    //List<TematicaView> getTematicas();
}
