package org.unicorn.book.app.usuario.service;

import org.unicorn.book.app.usuario.dto.CompraView;
import org.unicorn.book.app.usuario.dto.DireccionForm;
import org.unicorn.book.app.usuario.dto.TarjetaForm;
import org.unicorn.book.app.usuario.dto.UsuarioForm;
import org.unicorn.book.app.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.app.usuario.exception.UsernameDuplicatedException;

import java.util.List;

/**
 *
 */
public interface UsuarioService {

    /**
     * @param usuarioForm
     * @throws UsernameDuplicatedException
     * @throws EmailDuplicatedException
     */
    void altaUsuario(UsuarioForm usuarioForm) throws UsernameDuplicatedException, EmailDuplicatedException;

    void bajaUsuario();

    UsuarioForm getFormularioUsuario();

    UsuarioForm actualizarUsuario(UsuarioForm form);

    List<DireccionForm> getDirecciones();

    DireccionForm getDireccionFormEdicion(Long id);

    void altaOActualizarDireccion(DireccionForm form);

    void eliminarDireccion(Long idDireccion);

    List<TarjetaForm> getTarjetas();

    TarjetaForm getTarjetaFormEdicion(Long id);

    void altaOActualizarTarjeta(TarjetaForm form);

    void eliminarTarjeta(Long idTarjeta);

    List<CompraView> getPedidos();

}
