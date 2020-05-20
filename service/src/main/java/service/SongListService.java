package service;

import po.SongList;
import service.base.BaseService;
import dao.SongListDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (SongList)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SongListService extends BaseService<SongListDao,SongList> {
    @Autowired
    private SongListDao songListDao;
}