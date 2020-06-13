package com.zf1976.service.impl;

import com.zf1976.dao.ClubCardDao;
import com.zf1976.pojo.po.ClubCard;
import com.zf1976.service.impl.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author mac
 * Create by Ant on 2020/6/11 10:58 上午
 */
@Service
public class ClubCardService extends BaseService<ClubCardDao, ClubCard> {

    @Autowired
    private ClubCardDao clubCardDao;
}
