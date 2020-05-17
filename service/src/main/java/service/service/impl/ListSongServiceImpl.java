package service.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.ListSongMapper;
import org.springframework.stereotype.Service;
import service.service.ListSongService;
import web.po.ListSong;

import javax.annotation.Resource;

/**
 * (ListSong)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("listSongService")
public class ListSongServiceImpl extends ServiceImpl<ListSongMapper, ListSong> implements ListSongService {
    
    @Resource
    private ListSongMapper listSongMapper;
}