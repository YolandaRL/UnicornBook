package org.unicorn.book.configuracion;

import org.springframework.core.convert.converter.Converter;
import org.unicorn.book.app.usuario.dto.CompraStep;

public class StringToEnum2Converter implements Converter<String, CompraStep> {
    @Override
    public CompraStep convert(String source) {
        return CompraStep.valueOf(source.toUpperCase());
    }
}
