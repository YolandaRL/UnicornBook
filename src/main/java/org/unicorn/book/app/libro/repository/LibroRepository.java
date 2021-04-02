package org.unicorn.book.app.libro.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.libro.dto.LibroView;
import org.unicorn.book.app.libro.model.Libro;

import java.util.List;

@Repository
public interface LibroRepository extends JpaRepository<Libro, Long> {

    List<LibroView> findTop3ByVisibleIsTrueOrderByFechaDisponibleDesc();

    List<LibroView> findTop20ByVisibleIsTrueOrderByFechaDisponibleDesc();

    Page<Libro> findAll(Specification<Libro> specification, Pageable pageable);
}
