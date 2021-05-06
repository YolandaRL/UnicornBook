package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.CestaView;
import org.unicorn.book.app.usuario.dto.CompraForm;
import org.unicorn.book.app.usuario.dto.TablaMaestraView;

import java.util.List;

public interface CestaService {

    Integer countCarrito();

    List<CestaView> getCarritoCompra();

    List<CestaView> addLibroCarritoCompra(Long idLibro, Integer cantidad);

    void vaciarCesta();

    void eliminarLibro(Long idLibro);

    void confirmarPedido(CompraForm form);

    List<TablaMaestraView> getTiposTarjeta();
}
