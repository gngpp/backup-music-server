package service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.SongDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.SongService;
import po.Song;

import javax.annotation.Resource;

/**
 * (Song)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("songService")
public class SongServiceImpl extends ServiceImpl<SongDao, Song> implements SongService {
    
    @Autowired
    private SongDao songDao;
}