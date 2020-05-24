package com.zf1976.service;

import com.zf1976.dao.SongDao;
import com.zf1976.pojo.common.business.NotDataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SongConvert;
import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Autowired
    private SongConvert songConvert;

    /**
     * 获取所有歌曲
     *
     * @return vo list
     */
    public List<SongVO> getAllSong(){
        final List<Song> songs = super.lambdaQuery()
                                     .list();
        return songConvert.toVoList(songs);
    }

    /**
     * 返回指定歌手ID的歌曲
     *
     * @param singerId singId
     * @return SongVo
     */
    public SongVO getSongOfSingerId(Integer singerId){
        final Song song = super.lambdaQuery()
                               .eq(Song::getSingerId, singerId)
                               .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));
        return songConvert.toVo(song);
    }

    /**
     * 根据歌曲id返回歌曲
     * @param id id
     * @return SongVo
     */
    public SongVO getSongOfId(Integer id){
        final Song song = super.lambdaQuery()
                               .eq(Song::getId, id)
                               .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));
        return songConvert.toVo(song);
    }

}