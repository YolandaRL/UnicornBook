package org.unicorn.book.app.libro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.libro.dto.AutorView;
import org.unicorn.book.app.libro.dto.MaestroView;
import org.unicorn.book.app.libro.model.Autor;

import java.util.List;

@Repository
public interface AutorRepository extends JpaRepository<Autor, Long> {

    AutorView findAutorById(Long id);

    List<MaestroView> findAllByNombreIsNotNull();

}
