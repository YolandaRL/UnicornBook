package org.unicorn.book.app.libro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.libro.model.Editorial;

@Repository
public interface EditorialRepository extends JpaRepository<Editorial, Long> {
}
