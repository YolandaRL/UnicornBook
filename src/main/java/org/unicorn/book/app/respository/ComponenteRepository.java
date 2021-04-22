package org.unicorn.book.app.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.model.Componente;

@Repository
public interface ComponenteRepository extends JpaRepository<Componente, Long> {

}
