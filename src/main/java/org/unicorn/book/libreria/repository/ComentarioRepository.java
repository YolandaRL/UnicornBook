package org.unicorn.book.libreria.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.libreria.model.Comentario;
import org.unicorn.book.libreria.model.ComentarioPk;
import org.unicorn.book.usuario.dto.ComentarioView;

import java.util.List;

@Repository
public interface ComentarioRepository extends JpaRepository<Comentario, ComentarioPk> {

    Page<Comentario> findAll(Specification<Comentario> specification, Pageable pageable);

    List<ComentarioView> findAllByUsuarioId(Long id);

    List<Comentario> findAllByLibroId(Long id);

    Comentario getFirstByLibroIdAndUsuarioId(Long idLibro, Long idUsuario);
}
