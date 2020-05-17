package service.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.CollectMapper;
import org.springframework.stereotype.Service;
import service.service.CollectService;
import web.po.Collect;

import javax.annotation.Resource;

/**
 * (Collect)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("collectService")
public class CollectServiceImpl extends ServiceImpl<CollectMapper, Collect> implements CollectService {
    
    @Resource
    private CollectMapper collectMapper;
}