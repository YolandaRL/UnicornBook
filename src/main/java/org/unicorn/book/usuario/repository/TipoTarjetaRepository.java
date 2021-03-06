package org.unicorn.book.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.usuario.dto.TablaMaestraView;
import org.unicorn.book.usuario.model.TipoTarjeta;

import java.util.List;

@Repository
public interface TipoTarjetaRepository extends JpaRepository<TipoTarjeta, Long> {

    List<TablaMaestraView> findAllByOrderByIdAsc();
}
