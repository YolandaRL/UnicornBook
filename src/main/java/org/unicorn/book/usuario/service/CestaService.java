package org.unicorn.book.usuario.service;

import org.unicorn.book.usuario.dto.CestaView;
import org.unicorn.book.usuario.dto.CompraForm;
import org.unicorn.book.usuario.dto.TablaMaestraView;

import java.util.List;

public interface CestaService {

    Integer countCarrito();

    List<CestaView> getCarritoCompra();

    List<CestaView> addLibroCarritoCompra(Long idLibro, Integer cantidad);

    void vaciarCesta();

    void eliminarLibro(Long idLibro);

    void confirmarPedido(CompraForm form);

    List<TablaMaestraView> getTiposTarjeta();

    List<TablaMaestraView> getTiposEntrega();
}
