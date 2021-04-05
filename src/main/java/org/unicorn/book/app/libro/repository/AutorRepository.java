package org.unicorn.book.app.libro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.libro.dto.AutorView;
import org.unicorn.book.app.libro.model.Autor;

@Repository
public interface AutorRepository extends JpaRepository<Autor, Long> {

    AutorView findAutorById(Long id);
}
