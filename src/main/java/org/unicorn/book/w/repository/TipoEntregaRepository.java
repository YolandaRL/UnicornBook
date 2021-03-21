package org.unicorn.book.w.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.w.model.TipoEntrega;

@Repository
public interface TipoEntregaRepository extends JpaRepository<TipoEntrega, Long> {
}
