package org.unicorn.book.libreria.dto;

import java.util.Date;
import java.util.List;

public interface LibroView {

    Long getId();

    String getIsbn();

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

    AutorView getAutor();

    EditorialView getEditorial();

    ColeccionView getColeccion();

    List<TematicaView> getTematicas();
}
