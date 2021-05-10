package org.unicorn.book.superusuario.filter;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Define el filtro que es posible aplicar a la busqueda de comentarios
 */
public class ComentarioFilter implements Serializable {

    private static final long serialVersionUID = 1539544944538821091L;

    private List<Long> estados;

    public List<Long> getEstados() {
        return estados != null ? estados : new ArrayList<>();
    }

    public void setEstados(List<Long> estados) {
        this.estados = estados;
    }
}
