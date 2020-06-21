package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.ConsumerDTO;
import com.zf1976.pojo.dto.app.UserInfoDTO;
import com.zf1976.pojo.dto.app.UserSignUpDTO;
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
    date = "2020-06-21T21:59:10+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
)
@Component
public class ConsumerConvertImpl implements ConsumerConvert {

    @Override
    public Consumer toPo(ConsumerDTO dto) {
        if ( dto == null ) {
            return null;
        }

        ConsumerBuilder consumer = Consumer.builder();

        consumer.id( dto.getId() );
        consumer.username( dto.getUsername() );
        consumer.sex( dto.getSex() );
        consumer.phoneNum( dto.getPhoneNum() );
        consumer.email( dto.getEmail() );
        consumer.birth( dto.getBirth() );
        consumer.introduction( dto.getIntroduction() );
        consumer.location( dto.getLocation() );
        consumer.avatar( dto.getAvatar() );

        return consumer.build();
    }

    @Override
    public Consumer toPo(UserSignUpDTO dto) {
        if ( dto == null ) {
            return null;
        }

        ConsumerBuilder consumer = Consumer.builder();

        consumer.username( dto.getUsername() );
        consumer.password( dto.getPassword() );
        consumer.sex( dto.getSex() );
        consumer.phoneNum( dto.getPhoneNum() );
        consumer.email( dto.getEmail() );
        consumer.birth( dto.getBirth() );
        consumer.introduction( dto.getIntroduction() );
        consumer.location( dto.getLocation() );

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
    public Consumer toPo(ConsumerVO vo) {
        if ( vo == null ) {
            return null;
        }

        ConsumerBuilder consumer = Consumer.builder();

        consumer.id( vo.getId() );
        consumer.username( vo.getUsername() );
        consumer.sex( vo.getSex() );
        consumer.phoneNum( vo.getPhoneNum() );
        consumer.email( vo.getEmail() );
        consumer.birth( vo.getBirth() );
        consumer.introduction( vo.getIntroduction() );
        consumer.location( vo.getLocation() );
        consumer.avatar( vo.getAvatar() );

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
        consumer.sex( userInfoDTO.getSex() );
        consumer.phoneNum( userInfoDTO.getPhoneNum() );
        consumer.email( userInfoDTO.getEmail() );
        consumer.birth( userInfoDTO.getBirth() );
        consumer.introduction( userInfoDTO.getIntroduction() );
        consumer.location( userInfoDTO.getLocation() );

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
    public List<ConsumerVO> toVoList(List<Consumer> consumers) {
        if ( consumers == null ) {
            return null;
        }

        List<ConsumerVO> list = new ArrayList<ConsumerVO>( consumers.size() );
        for ( Consumer consumer : consumers ) {
            list.add( toVo( consumer ) );
        }

        return list;
    }

    @Override
    public List<UserInfoVO> toUserInfoVoList(List<Consumer> consumers) {
        if ( consumers == null ) {
            return null;
        }

        List<UserInfoVO> list = new ArrayList<UserInfoVO>( consumers.size() );
        for ( Consumer consumer : consumers ) {
            list.add( toUserInfoVo( consumer ) );
        }

        return list;
    }
}
