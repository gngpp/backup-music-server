package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-21T16:18:18+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_202 (Oracle Corporation)"
)
@Component
public class ConsumerConvertImpl implements ConsumerConvert {

    @Override
    public Consumer toPo(ConsumerDTO consumerDTO) {
        if ( consumerDTO == null ) {
            return null;
        }

        Consumer consumer = new Consumer();

        return consumer;
    }
}
