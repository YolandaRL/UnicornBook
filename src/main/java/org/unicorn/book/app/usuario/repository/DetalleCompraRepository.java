package org.unicorn.book.app.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.usuario.model.DetalleCompra;

import java.util.List;

@Repository
public interface DetalleCompraRepository extends JpaRepository<DetalleCompra, Long> {

    DetalleCompra getFirstByCompraUsuarioIdAndLibroId(Long idUsuario, Long idLibro);

    List<DetalleCompra> findAllByCompraId(Long id);
}
