package com.zf1976.service;

import com.zf1976.dao.SongListDao;
import com.zf1976.service.base.BaseService;
import com.zf1976.pojo.po.SongList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (SongList)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SongListService extends BaseService<SongListDao, SongList> {
    @Autowired
    private SongListDao songListDao;
}