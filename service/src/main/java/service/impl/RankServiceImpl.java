package service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.RankDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.RankService;
import po.Rank;


/**
 * (Rank)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("rankService")
public class RankServiceImpl extends ServiceImpl<RankDao, Rank> implements RankService {

    @Autowired
    private RankDao rankDao;
}