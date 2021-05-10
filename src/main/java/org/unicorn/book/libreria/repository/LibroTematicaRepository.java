package org.unicorn.book.libreria.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.libreria.model.LibroTematica;

@Repository
public interface LibroTematicaRepository extends JpaRepository<LibroTematica, Long> {
}
