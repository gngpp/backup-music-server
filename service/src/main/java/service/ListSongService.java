package service;

import po.ListSong;
import service.base.BaseService;
import dao.ListSongDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (ListSong)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class ListSongService extends BaseService<ListSongDao,ListSong> {
    @Autowired
    private ListSongDao listSongDao;
}