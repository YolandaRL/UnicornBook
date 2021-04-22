package org.unicorn.book.configuracion;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

public class LongListConverter implements Converter<String, List<Long>> {
    @Override
    public List<Long> convert(String source) {
        List<Long> longs = new ArrayList<>();
        for (String s : StringUtils.delimitedListToStringArray(source, ";"))
            longs.add(Long.parseLong(s));
        return longs;
    }
}