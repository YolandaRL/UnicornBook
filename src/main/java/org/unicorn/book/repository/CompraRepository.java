package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Compra;

@Repository
public interface CompraRepository extends JpaRepository<Compra, Long> {
}
