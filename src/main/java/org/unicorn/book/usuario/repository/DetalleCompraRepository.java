package org.unicorn.book.usuario.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.usuario.model.DetalleCompra;

import java.util.Date;
import java.util.List;

@Repository
public interface DetalleCompraRepository extends JpaRepository<DetalleCompra, Long> {

    Page<DetalleCompra> findAll(Specification<DetalleCompra> specification, Pageable pageable);

    DetalleCompra getFirstByCompraUsuarioIdAndLibroId(Long idUsuario, Long idLibro);

    List<DetalleCompra> findAllByCompraId(Long id);

    List<DetalleCompra> findAllByCompraFechaCompraBetween(Date fechaDesde, Date fechaHasta);

    Integer countByLibroId(Long id);
}
