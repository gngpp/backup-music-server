package service;

import po.Rank;
import service.base.BaseService;
import dao.RankDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (Rank)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class RankService extends BaseService<RankDao,Rank> {
    @Autowired
    private RankDao rankDao;
}