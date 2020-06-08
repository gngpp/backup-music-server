package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.ConsumerDTO;
import com.zf1976.pojo.dto.app.UserInfoDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.pojo.vo.ConsumerVO.ConsumerVOBuilder;
import com.zf1976.pojo.vo.app.UserInfoVO;
import com.zf1976.pojo.vo.app.UserInfoVO.UserInfoVOBuilder;
import com.zf1976.pojo.vo.app.UserMsgVO;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-08T17:28:07+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 11.0.6 (JetBrains s.r.o)"
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
    public UserMsgVO toUserMasVo(Consumer consumer) {
        if ( consumer == null ) {
            return null;
        }

        UserMsgVO userMsgVO = new UserMsgVO();

        userMsgVO.setId( consumer.getId() );
        userMsgVO.setUsername( consumer.getUsername() );
        userMsgVO.setAvatar( consumer.getAvatar() );

        return userMsgVO;
    }

    @Override
    public List<UserMsgVO> toUserMasVoList(List<Consumer> consumer) {
        if ( consumer == null ) {
            return null;
        }

        List<UserMsgVO> list = new ArrayList<UserMsgVO>( consumer.size() );
        for ( Consumer consumer1 : consumer ) {
            list.add( toUserMasVo( consumer1 ) );
        }

        return list;
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
    public Consumer toPo(UserInfoDTO userInfoDTO) {
        if ( userInfoDTO == null ) {
            return null;
        }

        Consumer consumer = new Consumer();

        consumer.setId( userInfoDTO.getId() );
        consumer.setUsername( userInfoDTO.getUsername() );
        consumer.setPassword( userInfoDTO.getPassword() );
        consumer.setSex( userInfoDTO.getSex() );
        consumer.setPhoneNum( userInfoDTO.getPhoneNum() );
        consumer.setEmail( userInfoDTO.getEmail() );
        consumer.setBirth( userInfoDTO.getBirth() );
        consumer.setIntroduction( userInfoDTO.getIntroduction() );
        consumer.setLocation( userInfoDTO.getLocation() );
        consumer.setAvatar( userInfoDTO.getAvatar() );

        return consumer;
    }

    @Override
    public UserInfoVO toUserInfoVo(Consumer consumer) {
        if ( consumer == null ) {
            return null;
        }

        UserInfoVOBuilder userInfoVO = UserInfoVO.builder();

        userInfoVO.id( consumer.getId() );
        userInfoVO.username( consumer.getUsername() );
        userInfoVO.password( consumer.getPassword() );
        userInfoVO.sex( consumer.getSex() );
        userInfoVO.phoneNum( consumer.getPhoneNum() );
        userInfoVO.email( consumer.getEmail() );
        userInfoVO.birth( consumer.getBirth() );
        userInfoVO.introduction( consumer.getIntroduction() );
        userInfoVO.location( consumer.getLocation() );
        userInfoVO.avatar( consumer.getAvatar() );

        return userInfoVO.build();
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

    @Override
    public List<UserInfoVO> toUserInfoVoList(List<Consumer> consumerList) {
        if ( consumerList == null ) {
            return null;
        }

        List<UserInfoVO> list = new ArrayList<UserInfoVO>( consumerList.size() );
        for ( Consumer consumer : consumerList ) {
            list.add( toUserInfoVo( consumer ) );
        }

        return list;
    }
}
