package service.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.SingerMapper;
import org.springframework.stereotype.Service;
import service.service.SingerService;
import web.po.Singer;

import javax.annotation.Resource;

/**
 * (Singer)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("singerService")
public class SingerServiceImpl extends ServiceImpl<SingerMapper, Singer> implements SingerService {
    
    @Resource
    private SingerMapper singerMapper;
}