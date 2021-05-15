package org.unicorn.book.configuracion.converter;

import org.springframework.core.convert.converter.Converter;
import org.unicorn.book.usuario.dto.CompraStep;

/**
 * Convierte automaticamente una cadena de texto a la enumeracion CompraStep
 */
public class StringToCompraStepConverter implements Converter<String, CompraStep> {
    @Override
    public CompraStep convert(String source) {
        return CompraStep.valueOf(source.toUpperCase());
    }
}
