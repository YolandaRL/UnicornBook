package org.unicorn.book.app.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.usuario.model.TipoOperacion;

@Repository
public interface TipoOperacionRepository extends JpaRepository<TipoOperacion, Long> {
}
