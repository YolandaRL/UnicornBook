package org.unicorn.book.usuario.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.unicorn.book.usuario.model.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    Page<Usuario> findAll(Specification<Usuario> specification, Pageable pageable);

    Usuario findByUsuario(String usuario);

    Boolean existsByUsuario(String username);

    Boolean existsByEmail(String email);

}
