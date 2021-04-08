package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.CestaView;

import java.util.List;

public interface CestaService {

    List<CestaView> getCarritoCompra();

    CestaView addLibroCarritoCompra(Long idLibro, Integer cantidad);
}
