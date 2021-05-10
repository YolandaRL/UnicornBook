package org.unicorn.book.libreria.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.unicorn.book.libreria.dto.MaestroView;
import org.unicorn.book.libreria.model.Tematica;

import java.util.List;

@Repository
public interface TematicaRepository extends JpaRepository<Tematica, Long> {

    @Query("SELECT x.id AS id, x.nombre AS nombre, " + "(SELECT COUNT (l) FROM LibroTematica l WHERE l.tematica.id = x.id ) AS ocurrencias FROM Tematica x")
    List<MaestroView> findAllTematicas();

}
