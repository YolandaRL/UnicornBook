package org.unicorn.book.app.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.usuario.model.DetalleCompra;

@Repository
public interface DetalleCompraRepository extends JpaRepository<DetalleCompra, Long> {
}
