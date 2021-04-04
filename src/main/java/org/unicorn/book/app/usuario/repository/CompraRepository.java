package org.unicorn.book.app.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.unicorn.book.app.usuario.model.Compra;
import org.unicorn.book.app.usuario.model.Usuario;

@Repository
public interface CompraRepository extends JpaRepository<Compra, Long> {
    @Modifying
    @Query("UPDATE Compra c SET c.usuario = :usuarioAnonimo WHERE c.usuario = :usuarioActual")
    void updateUsuario(@Param("usuarioActual") Usuario usuarioActual, @Param("usuarioAnonimo") Usuario usuarioAnonimo);
}
