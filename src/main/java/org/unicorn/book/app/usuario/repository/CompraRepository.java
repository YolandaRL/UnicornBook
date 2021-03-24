package org.unicorn.book.app.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.usuario.model.Compra;

@Repository
public interface CompraRepository extends JpaRepository<Compra, Long> {
}
