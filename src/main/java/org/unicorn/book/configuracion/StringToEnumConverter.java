package org.unicorn.book.configuracion;

import org.springframework.core.convert.converter.Converter;
import org.unicorn.book.app.usuario.dto.TipoOperacion;

public class StringToEnumConverter implements Converter<String, TipoOperacion> {
    @Override
    public TipoOperacion convert(String source) {
        return TipoOperacion.valueOf(source.toUpperCase());
    }
}
