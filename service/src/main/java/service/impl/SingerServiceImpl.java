package service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.SingerDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.SingerService;
import po.Singer;

import javax.annotation.Resource;

/**
 * (Singer)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("singerService")
public class SingerServiceImpl extends ServiceImpl<SingerDao, Singer> implements SingerService {

    @Autowired
    private SingerDao singerDao;
}