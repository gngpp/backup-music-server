package com.zf1976.dao;

import com.zf1976.pojo.po.Rank;
import com.zf1976.dao.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (Rank)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class RankService extends BaseService<RankDao, Rank> {
    @Autowired
    private RankDao rankDao;
}