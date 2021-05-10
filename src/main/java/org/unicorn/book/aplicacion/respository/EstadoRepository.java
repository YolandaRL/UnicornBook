package org.unicorn.book.aplicacion.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.aplicacion.model.Estado;

@Repository
public interface EstadoRepository extends JpaRepository<Estado, Long> {

    Estado findTopByComponenteId(Long componenteId);
}
