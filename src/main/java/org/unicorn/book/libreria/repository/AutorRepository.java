package org.unicorn.book.libreria.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.unicorn.book.libreria.dto.AutorView;
import org.unicorn.book.libreria.dto.MaestroView;
import org.unicorn.book.libreria.model.Autor;

import java.util.List;

@Repository
public interface AutorRepository extends JpaRepository<Autor, Long> {

    AutorView findAutorById(Long id);

    @Query("SELECT x.id AS id, x.nombre AS nombre, " + "(SELECT COUNT (l) FROM LibroAutor l WHERE l.autor.id = x.id ) AS ocurrencias FROM Autor x")
    List<MaestroView> findAllAutores();

}
