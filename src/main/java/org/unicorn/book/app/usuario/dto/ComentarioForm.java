package org.unicorn.book.app.usuario.dto;

import javax.validation.constraints.NotNull;

public class ComentarioForm {

    @NotNull(message = "Seleccione cómo mínimo de 1 a 5 estrellas para valorar este libro")
    private Integer estrellas;
    private Long idLibro;
    private Boolean anonimo;
    private String comentario;

    public Integer getEstrellas() {
        return estrellas;
    }

    public void setEstrellas(Integer estrellas) {
        this.estrellas = estrellas;
    }

    public Long getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Long idLibro) {
        this.idLibro = idLibro;
    }

    public Boolean getAnonimo() {
        return anonimo;
    }

    public void setAnonimo(Boolean anonimo) {
        this.anonimo = anonimo;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
}
