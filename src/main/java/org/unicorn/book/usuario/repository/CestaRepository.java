package org.unicorn.book.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.usuario.dto.CestaView;
import org.unicorn.book.usuario.model.Cesta;

import java.util.List;

@Repository
public interface CestaRepository extends JpaRepository<Cesta, Long> {

    List<CestaView> findAllByUsuarioId(Long id);

    void deleteAllByUsuarioId(Long id);

    List<Cesta> findAllByUsuarioIdAndCantidadIsNotNull(Long id);

    Integer countByLibroId(Long id);
}
