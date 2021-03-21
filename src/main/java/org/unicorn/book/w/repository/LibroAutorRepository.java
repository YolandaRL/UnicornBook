package org.unicorn.book.w.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.w.model.LibroAutor;

@Repository
public interface LibroAutorRepository extends JpaRepository<LibroAutor, Long> {
}