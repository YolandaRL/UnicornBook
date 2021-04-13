package org.unicorn.book.app.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.usuario.dto.TablaMaestraView;
import org.unicorn.book.app.usuario.model.TipoEntrega;

import java.util.List;

@Repository
public interface TipoEntregaRepository extends JpaRepository<TipoEntrega, Long> {
    List<TablaMaestraView> findAllByOrderByIdAsc();

}
