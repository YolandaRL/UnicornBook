package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Estado;

@Repository
public interface EstadoRepository extends JpaRepository<Estado, Long> {
}
