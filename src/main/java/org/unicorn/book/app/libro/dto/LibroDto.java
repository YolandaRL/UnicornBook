package org.unicorn.book.app.libro.dto;

public class LibroDto {

    private Long id;
    private Long isbn;
    private String titulo;
    private String subtitulo;
    private Float precio;
    private String linkPortada;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getSubtitulo() {
        return subtitulo;
    }

    public void setSubtitulo(String subtitulo) {
        this.subtitulo = subtitulo;
    }

    public Float getPrecio() {
        return precio;
    }

    public void setPrecio(Float precio) {
        this.precio = precio;
    }

    public String getLinkPortada() {
        return linkPortada;
    }

    public void setLinkPortada(String linkPortada) {
        this.linkPortada = linkPortada;
    }
}
