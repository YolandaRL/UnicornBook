package org.unicorn.book.app.libro.dto;

import java.util.List;

public interface AutorView {

    Long getId();

    String getNombre();

    String getApellido1();

    String getApellido2();

    String getBiografia();

    String getLinkFoto();

    List<LibroView> getLibros();
}
