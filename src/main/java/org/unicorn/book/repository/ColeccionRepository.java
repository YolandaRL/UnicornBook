package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Coleccion;

@Repository
public interface ColeccionRepository extends JpaRepository<Coleccion, Long> {
}
