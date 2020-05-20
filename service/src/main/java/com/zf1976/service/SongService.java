package com.zf1976.service;

import com.zf1976.dao.SongDao;
import com.zf1976.pojo.po.Song;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (Song)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SongService extends BaseService<SongDao, Song> {
    @Autowired
    private SongDao songDao;
}