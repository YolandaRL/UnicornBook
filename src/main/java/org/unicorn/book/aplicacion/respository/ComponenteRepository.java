package org.unicorn.book.aplicacion.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.aplicacion.model.Componente;

@Repository
public interface ComponenteRepository extends JpaRepository<Componente, Long> {

}
