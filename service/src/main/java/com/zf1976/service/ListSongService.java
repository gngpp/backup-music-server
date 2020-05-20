package com.zf1976.service;

import com.zf1976.dao.ListSongDao;
import com.zf1976.service.base.BaseService;
import com.zf1976.pojo.po.ListSong;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (ListSong)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class ListSongService extends BaseService<ListSongDao, ListSong> {
    @Autowired
    private ListSongDao listSongDao;
}