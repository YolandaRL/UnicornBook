package org.unicorn.book.app.usuario.dto;

public enum TipoOperacion {

    CONSULTA(1L), ENCARGO(2L);

    private final Long id;

    TipoOperacion(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
