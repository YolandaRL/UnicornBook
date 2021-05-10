package org.unicorn.book.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.unicorn.book.usuario.dto.EncargoView;
import org.unicorn.book.usuario.model.Encargo;
import org.unicorn.book.usuario.model.Usuario;

import java.util.List;

@Repository
public interface EncargoRepository extends JpaRepository<Encargo, Long> {

    List<EncargoView> findAllByUsuarioIdOrderByHoraEncargoAsc(Long usuarioId);

    @Modifying
    @Query("UPDATE Encargo c SET c.usuario = :usuarioAnonimo WHERE c.usuario = :usuarioActual")
    void updateUsuario(@Param("usuarioActual") Usuario usuarioActual, @Param("usuarioAnonimo") Usuario usuarioAnonimo);
}
