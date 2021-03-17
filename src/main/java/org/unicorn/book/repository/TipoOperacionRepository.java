package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.TipoOperacion;

@Repository
public interface TipoOperacionRepository extends JpaRepository<TipoOperacion, Long> {
}
