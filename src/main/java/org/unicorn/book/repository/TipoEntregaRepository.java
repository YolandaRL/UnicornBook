package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.TipoEntrega;

@Repository
public interface TipoEntregaRepository extends JpaRepository<TipoEntrega, Long> {
}
