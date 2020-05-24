package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.pojo.vo.ConsumerVO.ConsumerVOBuilder;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-24T15:19:22+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 13-ea (Oracle Corporation)"
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
        consumer.setSex( consumerDTO.getSex() );
        consumer.setPhoneNum( consumerDTO.getPhoneNum() );
        consumer.setEmail( consumerDTO.getEmail() );
        consumer.setBirth( consumerDTO.getBirth() );
        consumer.setIntroduction( consumerDTO.getIntroduction() );
        consumer.setLocation( consumerDTO.getLocation() );
        consumer.setAvatar( consumerDTO.getAvatar() );

        return consumer;
    }

    @Override
    public ConsumerVO toVo(Consumer consumer) {
        if ( consumer == null ) {
            return null;
        }

        ConsumerVOBuilder consumerVO = ConsumerVO.builder();

        consumerVO.id( consumer.getId() );
        consumerVO.username( consumer.getUsername() );
        consumerVO.sex( consumer.getSex() );
        consumerVO.phoneNum( consumer.getPhoneNum() );
        consumerVO.email( consumer.getEmail() );
        consumerVO.birth( consumer.getBirth() );
        consumerVO.introduction( consumer.getIntroduction() );
        consumerVO.location( consumer.getLocation() );
        consumerVO.avatar( consumer.getAvatar() );

        return consumerVO.build();
    }

    @Override
    public Consumer toPo(ConsumerVO consumerVO) {
        if ( consumerVO == null ) {
            return null;
        }

        Consumer consumer = new Consumer();

        consumer.setId( consumerVO.getId() );
        consumer.setUsername( consumerVO.getUsername() );
        consumer.setSex( consumerVO.getSex() );
        consumer.setPhoneNum( consumerVO.getPhoneNum() );
        consumer.setEmail( consumerVO.getEmail() );
        consumer.setBirth( consumerVO.getBirth() );
        consumer.setIntroduction( consumerVO.getIntroduction() );
        consumer.setLocation( consumerVO.getLocation() );
        consumer.setAvatar( consumerVO.getAvatar() );

        return consumer;
    }

    @Override
    public List<ConsumerVO> toVoList(List<Consumer> consumerList) {
        if ( consumerList == null ) {
            return null;
        }

        List<ConsumerVO> list = new ArrayList<ConsumerVO>( consumerList.size() );
        for ( Consumer consumer : consumerList ) {
            list.add( toVo( consumer ) );
        }

        return list;
    }
}
