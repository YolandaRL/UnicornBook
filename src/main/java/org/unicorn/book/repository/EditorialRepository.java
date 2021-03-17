package org.unicorn.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.model.Editorial;

@Repository
public interface EditorialRepository extends JpaRepository<Editorial, Long> {
}
