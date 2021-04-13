package org.unicorn.book.app.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.usuario.dto.CestaView;
import org.unicorn.book.app.usuario.model.Cesta;

import java.util.List;

@Repository
public interface CestaRepository extends JpaRepository<Cesta, Long> {

    List<CestaView> findAllByUsuarioId(Long id);
}
