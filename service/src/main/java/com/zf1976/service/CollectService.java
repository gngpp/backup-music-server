package com.zf1976.service;

import com.zf1976.dao.CollectDao;
import com.zf1976.pojo.po.Collect;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (Collect)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class CollectService extends BaseService<CollectDao, Collect> {
    @Autowired
    private CollectDao collectDao;
}