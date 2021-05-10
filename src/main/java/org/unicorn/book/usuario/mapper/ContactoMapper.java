package org.unicorn.book.usuario.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.unicorn.book.usuario.dto.ConsultaForm;
import org.unicorn.book.usuario.dto.EncargoForm;
import org.unicorn.book.usuario.model.Consulta;
import org.unicorn.book.usuario.model.Encargo;

@Mapper
public interface ContactoMapper {

    @Mapping(target = "tipoEntragaId", ignore = true)
    @Mapping(target = "idLibro", ignore = true)
    EncargoForm toEncargoForm(Encargo src);

    @Mapping(target = "usuario", ignore = true)
    @Mapping(target = "tipoEntrega", ignore = true)
    @Mapping(target = "libro", ignore = true)
    @Mapping(target = "horaEncargo", ignore = true)
    @Mapping(target = "fechaFin", ignore = true)
    @Mapping(target = "fechaEntrega", ignore = true)
    @Mapping(target = "estado", ignore = true)
    Encargo toEncargo(EncargoForm src);

    @Mapping(target = "detalleConsulta", source = "textoConsulta")
    ConsultaForm toConsultaForm(Consulta src);

    @Mapping(target = "usuario", ignore = true)
    @Mapping(target = "horaConsulta", ignore = true)
    @Mapping(target = "fechaFin", ignore = true)
    @Mapping(target = "fechaConsulta", ignore = true)
    @Mapping(target = "estado", ignore = true)
    @Mapping(target = "textoConsulta", source = "detalleConsulta")
    Consulta toConsulta(ConsultaForm src);
}
