package org.unicorn.book.app.libro.filter;

import java.util.ArrayList;
import java.util.List;

public class BusquedaSimpleFilter {

    private String termino;
    private List<Long> tematicas;
    private List<Long> colecciones;
    private List<Long> autores;
    private List<Long> editoriales;

    public String getTermino() {
        return termino;
    }

    public void setTermino(String termino) {
        this.termino = termino;
    }

    public List<Long> getTematicas() {
        return tematicas != null ? tematicas : new ArrayList<>();
    }

    public void setTematicas(List<Long> tematicas) {
        this.tematicas = tematicas;
    }

    public List<Long> getColecciones() {
        return colecciones != null ? colecciones : new ArrayList<>();
    }

    public void setColecciones(List<Long> colecciones) {
        this.colecciones = colecciones;
    }

    public List<Long> getAutores() {
        return autores != null ? autores : new ArrayList<>();
    }

    public void setAutores(List<Long> autores) {
        this.autores = autores;
    }

    public List<Long> getEditoriales() {
        return editoriales != null ? editoriales : new ArrayList<>();
    }

    public void setEditoriales(List<Long> editoriales) {
        this.editoriales = editoriales;
    }
}
