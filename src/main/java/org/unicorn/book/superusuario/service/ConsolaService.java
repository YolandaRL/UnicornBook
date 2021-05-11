package org.unicorn.book.superusuario.service;

/**
 * Define las operaciones disponibles que tiene el administrador para obtener estadisticas rapidas de la librería web
 */
public interface ConsolaService {

    /**
     * Obtiene un mapa donde la clave es una fecha y el valor son los ingresos obtinodos en ese día.
     * Se obtienen por defecto los registro desde la fecha actual a treinta días atrás
     *
     * @return el mapa en formato json {@link String}
     */
    String getGraficaPedidos();
}
