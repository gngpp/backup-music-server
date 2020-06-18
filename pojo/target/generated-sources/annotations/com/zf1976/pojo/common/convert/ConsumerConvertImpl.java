package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.ConsumerDTO;
import com.zf1976.pojo.dto.app.UserInfoDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.po.Consumer.ConsumerBuilder;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.pojo.vo.ConsumerVO.ConsumerVOBuilder;
import com.zf1976.pojo.vo.app.UserInfoVO;
import com.zf1976.pojo.vo.app.UserInfoVO.UserInfoVOBuilder;
import com.zf1976.pojo.vo.app.UserMsgVO;
import com.zf1976.pojo.vo.app.UserMsgVO.UserMsgVOBuilder;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-18T19:25:47+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
)
@Component
public class ConsumerConvertImpl implements ConsumerConvert {

    @Override
    public Consumer toPo(ConsumerDTO consumerDTO) {
        if ( consumerDTO == null ) {
            return null;
        }

        ConsumerBuilder consumer = Consumer.builder();

        consumer.id( consumerDTO.getId() );
        consumer.username( consumerDTO.getUsername() );
        consumer.sex( consumerDTO.getSex() );
        consumer.phoneNum( consumerDTO.getPhoneNum() );
        consumer.email( consumerDTO.getEmail() );
        consumer.birth( consumerDTO.getBirth() );
        consumer.introduction( consumerDTO.getIntroduction() );
        consumer.location( consumerDTO.getLocation() );
        consumer.avatar( consumerDTO.getAvatar() );

        return consumer.build();
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
        consumerVO.isMember( consumer.getIsMember() );

        return consumerVO.build();
    }

    @Override
    public UserMsgVO toUserMasVo(Consumer consumer) {
        if ( consumer == null ) {
            return null;
        }

        UserMsgVOBuilder userMsgVO = UserMsgVO.builder();

        userMsgVO.id( consumer.getId() );
        userMsgVO.username( consumer.getUsername() );
        userMsgVO.avatar( consumer.getAvatar() );
        userMsgVO.isMember( consumer.getIsMember() );

        return userMsgVO.build();
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

        ConsumerBuilder consumer = Consumer.builder();

        consumer.id( consumerVO.getId() );
        consumer.username( consumerVO.getUsername() );
        consumer.sex( consumerVO.getSex() );
        consumer.phoneNum( consumerVO.getPhoneNum() );
        consumer.email( consumerVO.getEmail() );
        consumer.birth( consumerVO.getBirth() );
        consumer.introduction( consumerVO.getIntroduction() );
        consumer.location( consumerVO.getLocation() );
        consumer.avatar( consumerVO.getAvatar() );

        return consumer.build();
    }

    @Override
    public Consumer toPo(UserInfoDTO userInfoDTO) {
        if ( userInfoDTO == null ) {
            return null;
        }

        ConsumerBuilder consumer = Consumer.builder();

        consumer.id( userInfoDTO.getId() );
        consumer.username( userInfoDTO.getUsername() );
        consumer.password( userInfoDTO.getPassword() );
        consumer.sex( userInfoDTO.getSex() );
        consumer.phoneNum( userInfoDTO.getPhoneNum() );
        consumer.email( userInfoDTO.getEmail() );
        consumer.birth( userInfoDTO.getBirth() );
        consumer.introduction( userInfoDTO.getIntroduction() );
        consumer.location( userInfoDTO.getLocation() );
        consumer.avatar( userInfoDTO.getAvatar() );

        return consumer.build();
    }

    @Override
    public UserInfoVO toUserInfoVo(Consumer consumer) {
        if ( consumer == null ) {
            return null;
        }

        UserInfoVOBuilder userInfoVO = UserInfoVO.builder();

        userInfoVO.id( consumer.getId() );
        userInfoVO.username( consumer.getUsername() );
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
