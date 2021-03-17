package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Rol;

@Repository
public interface RolRepository extends JpaRepository<Rol, Long> {
}
