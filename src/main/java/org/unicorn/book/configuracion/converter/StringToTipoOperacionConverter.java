package org.unicorn.book.configuracion.converter;

import org.springframework.core.convert.converter.Converter;
import org.unicorn.book.usuario.dto.TipoOperacion;

/**
 * Convierte automaticamente una cadena de texto a la enumeracion TipoOperacion
 */
public class StringToTipoOperacionConverter implements Converter<String, TipoOperacion> {
    @Override
    public TipoOperacion convert(String source) {
        return TipoOperacion.valueOf(source.toUpperCase());
    }
}
