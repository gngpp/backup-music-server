package service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.ListSongDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ListSongService;
import po.ListSong;

import javax.annotation.Resource;

/**
 * (ListSong)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("listSongService")
public class ListSongServiceImpl extends ServiceImpl<ListSongDao, ListSong> implements ListSongService {

    @Autowired
    private ListSongDao listSongDao;
}