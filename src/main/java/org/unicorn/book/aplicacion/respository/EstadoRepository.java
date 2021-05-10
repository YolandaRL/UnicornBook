package org.unicorn.book.aplicacion.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.aplicacion.dto.EstadoView;
import org.unicorn.book.aplicacion.model.Estado;

import java.util.List;

@Repository
public interface EstadoRepository extends JpaRepository<Estado, Long> {

    List<EstadoView> findAllByComponenteId(Long componenteId);

    Estado findTopByComponenteId(Long componenteId);
}
