package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Consulta;

@Repository
public interface ConsultaRepository extends JpaRepository<Consulta, Long> {
}
