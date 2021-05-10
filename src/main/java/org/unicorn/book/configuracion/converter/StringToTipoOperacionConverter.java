package org.unicorn.book.configuracion.converter;

import org.springframework.core.convert.converter.Converter;
import org.unicorn.book.usuario.dto.TipoOperacion;

public class StringToTipoOperacionConverter implements Converter<String, TipoOperacion> {
    @Override
    public TipoOperacion convert(String source) {
        return TipoOperacion.valueOf(source.toUpperCase());
    }
}
