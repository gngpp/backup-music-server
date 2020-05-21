package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zf1976.dao.ConsumerDao;
import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.service.base.BaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * (Consumer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class ConsumerService extends BaseService<ConsumerDao, Consumer> {

    public static final Logger LOGGER = LoggerFactory.getLogger(ConsumerService.class);

    @Autowired
    private ConsumerDao consumerDao;

    @Autowired
    private ConsumerConvert convert;

    @Transactional(rollbackFor = Exception.class)
    public synchronized Void addUser(ConsumerDTO consumerDTO){
        final Consumer consumer = convert.toPo(consumerDTO);
        consumerDao.insert(consumer);
        return null;
    }

    @Transactional(rollbackFor = Exception.class)
    public synchronized Void updateUser(ConsumerDTO consumerDTO){
        final Consumer consumer = convert.toPo(consumerDTO);
        final QueryWrapper<Consumer> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id",consumerDTO.getId());
        update(consumer,queryWrapper);
        return null;
    }

    public Void isExistPhone(String phone) throws Exception {
        final QueryWrapper<Consumer> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("phone_num")
                    .eq("phone_num",phone);
        final Consumer one = getOne(queryWrapper);
        if (one.getEmail().equals(phone)){
            throw new Exception("手机号码已存在");
        }
        return null;

    }

    public Void isExistEmail(String email) throws Exception{
        final QueryWrapper<Consumer> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("email")
                    .eq("email",email);
        final Consumer one = getOne(queryWrapper);
        if (one.getEmail().equals(email)){
            throw new Exception("邮箱已存在");
        }
        return null;
    }
}