package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Libro;

@Repository
public interface LibroRepository extends JpaRepository<Libro, Long> {
}
