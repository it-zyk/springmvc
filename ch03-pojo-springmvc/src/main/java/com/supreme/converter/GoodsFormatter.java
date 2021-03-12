package com.supreme.converter;

import org.springframework.format.Formatter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class GoodsFormatter implements Formatter<Date> {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public Date parse(String source, Locale locale) throws ParseException {
        return dateFormat.parse(source); // Formatter只能对字符串转换
    }

    @Override
    public String print(Date date, Locale locale) {
        return dateFormat.format(date);
    }
}
