package service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.CollectDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CollectService;
import po.Collect;

import javax.annotation.Resource;

/**
 * (Collect)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("collectService")
public class CollectServiceImpl extends ServiceImpl<CollectDao, Collect> implements CollectService {

    @Autowired
    private CollectDao collectDao;
}