package org.unicorn.book.app.enums;

public enum ComponenteEnum {
    COMENTARIO(1L), COMPRA(3L), CONSULTA(3L), ENCARGO(4L);

    private final Long id;

    ComponenteEnum(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
