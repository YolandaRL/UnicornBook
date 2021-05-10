package org.unicorn.book.usuario.dto;

import java.util.Date;
import java.util.List;

public class CompraDto {

    private Long id;
    private Date fechaCompra;
    private String direccionTextoDireccion;
    private Float metodoPago;
    private String estadoNombre;
    private Date fechaEntrega;
    private List<DetalleCompraDto> detalleCompraDtoList;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public String getDireccionTextoDireccion() {
        return direccionTextoDireccion;
    }

    public void setDireccionTextoDireccion(String direccionTextoDireccion) {
        this.direccionTextoDireccion = direccionTextoDireccion;
    }

    public Float getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(Float metodoPago) {
        this.metodoPago = metodoPago;
    }

    public String getEstadoNombre() {
        return estadoNombre;
    }

    public void setEstadoNombre(String estadoNombre) {
        this.estadoNombre = estadoNombre;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public List<DetalleCompraDto> getDetalleCompraDtoList() {
        return detalleCompraDtoList;
    }

    public void setDetalleCompraDtoList(List<DetalleCompraDto> detalleCompraDtoList) {
        this.detalleCompraDtoList = detalleCompraDtoList;
    }
}
