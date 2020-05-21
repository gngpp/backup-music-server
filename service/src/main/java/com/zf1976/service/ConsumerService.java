package com.zf1976.service;

import com.zf1976.dao.ConsumerDao;
import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.service.base.BaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public Void addUser(ConsumerDTO consumerDTO){
        final Consumer consumer = convert.toPo(consumerDTO);
        try {
            LOGGER.info("{}",consumerDTO);
            consumerDao.insert(consumer);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }


//    public Void updateConsumer(ConsumerDTO consumerDTO){
//        Consumer.builder()
//                .
//    }
}