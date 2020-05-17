package service.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.SongMapper;
import org.springframework.stereotype.Service;
import service.service.SongService;
import web.po.Song;

import javax.annotation.Resource;

/**
 * (Song)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("songService")
public class SongServiceImpl extends ServiceImpl<SongMapper, Song> implements SongService {
    
    @Resource
    private SongMapper songMapper;
}