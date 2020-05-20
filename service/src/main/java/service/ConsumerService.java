package service;

import po.Consumer;
import service.base.BaseService;
import dao.ConsumerDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (Consumer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class ConsumerService extends BaseService<ConsumerDao,Consumer> {
    @Autowired
    private ConsumerDao consumerDao;
}