package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.ConsultaForm;
import org.unicorn.book.app.usuario.dto.ConsultaView;
import org.unicorn.book.app.usuario.dto.EncargoForm;
import org.unicorn.book.app.usuario.dto.EncargoView;
import org.unicorn.book.app.usuario.dto.TablaMaestraView;

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
    EncargoForm nuevoEncargo(EncargoForm consultaForm);

    /**
     * @param consultaForm
     * @return
     */
    ConsultaForm nuevaConsulta(ConsultaForm consultaForm);

}
