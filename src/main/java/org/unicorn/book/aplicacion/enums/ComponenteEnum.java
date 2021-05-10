package org.unicorn.book.aplicacion.enums;

public enum ComponenteEnum {
    COMENTARIO(1L), COMPRA(2L), CONSULTA(3L), ENCARGO(4L);

    private final Long id;

    ComponenteEnum(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
