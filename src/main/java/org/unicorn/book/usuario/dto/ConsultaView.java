package org.unicorn.book.usuario.dto;

import java.util.Date;

public interface ConsultaView {

    Long getId();

    String getNombre();

    String getApellido1();

    String getApellido2();

    String getEmail();

    Long getTelefono();

    Date getFechaConsulta();

    Date getFechaFin();

    String getTextoConsulta();

    String getEstadoNombre();

}
