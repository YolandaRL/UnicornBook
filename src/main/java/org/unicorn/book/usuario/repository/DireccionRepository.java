package org.unicorn.book.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.usuario.model.Direccion;

@Repository
public interface DireccionRepository extends JpaRepository<Direccion, Long> {
}
