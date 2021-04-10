package org.unicorn.book.app.usuario.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class EncargoForm {

    private final TipoOperacion tipoOperacion;

    private Long id;

    @NotNull
    private Long isbn;

    @NotNull
    private Integer cantidad;

    @NotEmpty
    private String titulo;

    @NotNull
    private Long tipoEntragaId;

    private Long idLibro;

    public EncargoForm() {
        this.tipoOperacion = TipoOperacion.ENCARGO;
    }

    public TipoOperacion getTipoOperacion() {
        return tipoOperacion;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTipoEntragaId() {
        return tipoEntragaId;
    }

    public void setTipoEntragaId(Long tipoEntragaId) {
        this.tipoEntragaId = tipoEntragaId;
    }

    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }
}
