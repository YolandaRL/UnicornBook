package org.unicorn.book.app.usuario.dto;

public class CompraForm {

    private Long idUsuario;
    private Long idTipoEntrega;
    private Long idDireccion;
    private Long idTarjeta;
    private String cuponDescuento;

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Long getIdTipoEntrega() {
        return idTipoEntrega;
    }

    public void setIdTipoEntrega(Long idTipoEntrega) {
        this.idTipoEntrega = idTipoEntrega;
    }

    public Long getIdDireccion() {
        return idDireccion;
    }

    public void setIdDireccion(Long idDireccion) {
        this.idDireccion = idDireccion;
    }

    public Long getIdTarjeta() {
        return idTarjeta;
    }

    public void setIdTarjeta(Long idTarjeta) {
        this.idTarjeta = idTarjeta;
    }

    public String getCuponDescuento() {
        return cuponDescuento;
    }

    public void setCuponDescuento(String cuponDescuento) {
        this.cuponDescuento = cuponDescuento;
    }
}
