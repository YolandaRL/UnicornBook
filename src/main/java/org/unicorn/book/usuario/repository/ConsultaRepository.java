package org.unicorn.book.usuario.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.unicorn.book.usuario.dto.ConsultaView;
import org.unicorn.book.usuario.model.Consulta;
import org.unicorn.book.usuario.model.Usuario;

import java.util.List;

@Repository
public interface ConsultaRepository extends JpaRepository<Consulta, Long> {

    List<ConsultaView> findAllByUsuarioIdOrderByFechaConsultaAsc(Long usuarioId);

    @Modifying
    @Query("UPDATE Consulta c SET c.usuario = :usuarioAnonimo WHERE c.usuario = :usuarioActual")
    void updateUsuario(@Param("usuarioActual") Usuario usuarioActual, @Param("usuarioAnonimo") Usuario usuarioAnonimo);
}
