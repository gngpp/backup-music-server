package service.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.ConsumerMapper;
import org.springframework.stereotype.Service;
import service.service.ConsumerService;
import web.po.Consumer;

import javax.annotation.Resource;

/**
 * (Consumer)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("consumerService")
public class ConsumerServiceImpl extends ServiceImpl<ConsumerMapper, Consumer> implements ConsumerService {
    
    @Resource
    private ConsumerMapper consumerMapper;
}