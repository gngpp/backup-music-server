package service.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.RankMapper;
import org.springframework.stereotype.Service;
import service.service.RankService;
import web.po.Rank;

import javax.annotation.Resource;

/**
 * (Rank)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("rankService")
public class RankServiceImpl extends ServiceImpl<RankMapper, Rank> implements RankService {
    
    @Resource
    private RankMapper rankMapper;
}