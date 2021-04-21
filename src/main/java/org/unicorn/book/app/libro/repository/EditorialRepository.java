package org.unicorn.book.app.libro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.libro.dto.MaestroView;
import org.unicorn.book.app.libro.model.Editorial;

import java.util.List;

@Repository
public interface EditorialRepository extends JpaRepository<Editorial, Long> {

    @Query("SELECT x.id AS id, x.nombre AS nombre, " + "(SELECT COUNT (l) FROM Libro l WHERE l.editorial.id = x.id ) AS ocurrencias FROM Editorial x")
    List<MaestroView> findAllEditoriales();
}
