package org.unicorn.book.libreria.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.unicorn.book.libreria.dto.LibroView;
import org.unicorn.book.libreria.model.Libro;

import java.util.List;

@Repository
public interface LibroRepository extends JpaRepository<Libro, Long> {

    @Query("SELECT l.id FROM Libro l WHERE l.isbn = :isbn AND l.stock IS NOT NULL AND l.stock > 0")
    Long libroConStockByIsbn(@Param("isbn") Long isbn);

    LibroView findLibroById(Long id);

    Libro getByIsbn(String isbn);

    List<LibroView> findTop3ByVisibleIsTrueOrderByFechaDisponibleDesc();

    List<LibroView> findTop10ByVisibleIsTrueOrderByFechaDisponibleDesc();

    Page<Libro> findAll(Specification<Libro> specification, Pageable pageable);

    @Query("SELECT max(l.precio) FROM Libro l")
    Integer getMaximoPrecio();

    @Query("SELECT min(l.precio) FROM Libro l")
    Integer getMinimoPrecio();
}
