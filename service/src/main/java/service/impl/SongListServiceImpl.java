package service.impl;



import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.SongListDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.SongListService;
import po.SongList;

import javax.annotation.Resource;

/**
 * (SongList)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("songListService")
public class SongListServiceImpl extends ServiceImpl<SongListDao, SongList> implements SongListService {

    @Autowired
    private SongListDao songListDao;
}