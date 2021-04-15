package org.unicorn.book.app.libro.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.libro.dto.LibroView;
import org.unicorn.book.app.libro.model.Libro;

import java.util.List;

@Repository
public interface LibroRepository extends JpaRepository<Libro, Long> {

    @Query("SELECT l.id FROM Libro l WHERE l.isbn = :isbn AND l.stock IS NOT NULL AND l.stock > 0")
    Long libroConStockByIsbn(@Param("isbn") Long isbn);

    LibroView findLibroById(Long id);

    List<LibroView> findTop3ByVisibleIsTrueOrderByFechaDisponibleDesc();

    List<LibroView> findTop20ByVisibleIsTrueOrderByFechaDisponibleDesc();

    Page<Libro> findAll(Specification<Libro> specification, Pageable pageable);
}
