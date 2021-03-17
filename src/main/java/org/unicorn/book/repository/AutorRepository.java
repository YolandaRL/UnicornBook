package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Autor;

@Repository
public interface AutorRepository extends JpaRepository<Autor, Long> {
}
