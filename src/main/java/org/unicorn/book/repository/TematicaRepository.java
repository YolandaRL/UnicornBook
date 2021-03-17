package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Tematica;

@Repository
public interface TematicaRepository extends JpaRepository<Tematica, Long> {
}
