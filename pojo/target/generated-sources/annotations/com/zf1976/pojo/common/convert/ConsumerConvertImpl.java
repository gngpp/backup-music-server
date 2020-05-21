package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-21T16:34:01+0800",
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

        consumer.setId( consumerDTO.getId() );
        consumer.setUsername( consumerDTO.getUsername() );
        consumer.setPassword( consumerDTO.getPassword() );
        consumer.setSex( consumerDTO.getSex() );
        consumer.setPhoneNum( consumerDTO.getPhoneNum() );
        consumer.setEmail( consumerDTO.getEmail() );
        consumer.setBirth( consumerDTO.getBirth() );
        consumer.setIntroduction( consumerDTO.getIntroduction() );
        consumer.setLocation( consumerDTO.getLocation() );
        consumer.setAvatar( consumerDTO.getAvatar() );

        return consumer;
    }
}
