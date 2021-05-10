package org.unicorn.book.usuario.service;

import org.unicorn.book.usuario.dto.ConsultaForm;
import org.unicorn.book.usuario.dto.ConsultaView;
import org.unicorn.book.usuario.dto.EncargoForm;
import org.unicorn.book.usuario.dto.EncargoView;
import org.unicorn.book.usuario.dto.TablaMaestraView;
import org.unicorn.book.usuario.exception.LibroConStockException;

import java.util.List;

/**
 *
 */
public interface ContactoService {

    /**
     * @return
     */
    List<TablaMaestraView> getTiposOperacion();

    /**
     * @return
     */
    List<TablaMaestraView> getTiposEntraga();

    /**
     * @return
     */
    List<EncargoView> getEncargos();

    /**
     * @return
     */
    List<ConsultaView> getConsultas();

    /**
     * @param consultaForm
     * @return
     */
    EncargoForm nuevoEncargo(EncargoForm consultaForm) throws LibroConStockException;

    /**
     * @param consultaForm
     * @return
     */
    ConsultaForm nuevaConsulta(ConsultaForm consultaForm);

}
