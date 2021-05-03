package org.unicorn.book.app.libro.dto;

public interface ComentarioView {

    Long getId();

    void setId(Long id);

    String getComentario();

    void setComentario(String comentario);

    Integer getEstrellas();

    void setEstrellas(Integer estrellas);
}
