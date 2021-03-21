package org.unicorn.book.w.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.w.model.Autor;

@Repository
public interface AutorRepository extends JpaRepository<Autor, Long> {
}