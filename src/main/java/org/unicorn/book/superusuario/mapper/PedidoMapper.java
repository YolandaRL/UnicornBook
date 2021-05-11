package org.unicorn.book.superusuario.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.unicorn.book.superusuario.dto.PedidoDTO;
import org.unicorn.book.usuario.model.DetalleCompra;

@Mapper
public interface PedidoMapper {

    @Mapping(target = "tipoEntrega", source = "compra.tipoEntrega.nombre")
    @Mapping(target = "libroNombre", source = "libro.titulo")
    @Mapping(target = "libroId", source = "libro.id")
    @Mapping(target = "fecha", source = "compra.fechaCompra")
    @Mapping(target = "estado", source = "compra.estado.nombre")
    @Mapping(target = "direccion", source = "compra.direccion.textoDireccion")
    @Mapping(target = "descuento", source = "pocentajeDescuento")
    PedidoDTO pedidoToDTO(DetalleCompra src);
}
