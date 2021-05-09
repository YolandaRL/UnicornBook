package org.unicorn.book.app.usuario.dto;

import org.unicorn.book.app.validation.CustomScriptAssert;

import javax.validation.constraints.NotNull;

@CustomScriptAssert(lang = "javascript", script = "_this.idTipoEntrega==2?_this.idDireccion!=null:true", field = "idDireccion", message = "Campo oblicatorio")
public class CompraForm {

    @NotNull
    private Long idTipoEntrega;
    private Long idDireccion;
    @NotNull
    private Long idTarjeta;
    private String cuponDescuento;
    private CompraStep siguientePasoSolicitado;

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

    public CompraStep getSiguientePasoSolicitado() {
        return siguientePasoSolicitado;
    }

    public void setSiguientePasoSolicitado(CompraStep siguientePasoSolicitado) {
        this.siguientePasoSolicitado = siguientePasoSolicitado;
    }
}
