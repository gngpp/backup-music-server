package service.service.impl;



import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.SongListMapper;
import org.springframework.stereotype.Service;
import service.service.SongListService;
import web.po.SongList;

import javax.annotation.Resource;

/**
 * (SongList)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("songListService")
public class SongListServiceImpl extends ServiceImpl<SongListMapper, SongList> implements SongListService {
    @Resource
    private SongListMapper songListMapper;
}