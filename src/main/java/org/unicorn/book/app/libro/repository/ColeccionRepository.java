package org.unicorn.book.app.libro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.libro.dto.MaestroView;
import org.unicorn.book.app.libro.model.Coleccion;

import java.util.List;

@Repository
public interface ColeccionRepository extends JpaRepository<Coleccion, Long> {

    @Query("SELECT x.id AS id, x.nombre AS nombre, " + "(SELECT COUNT (l) FROM LibroColeccion l WHERE l.coleccion.id = x.id ) AS ocurrencias FROM Coleccion x")
    List<MaestroView> findAllColecciones();

}
