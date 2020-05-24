package com.zf1976.service;

import com.zf1976.dao.SongListDao;
import com.zf1976.pojo.common.convert.SongListConvert;
import com.zf1976.pojo.dto.ListSongDTO;
import com.zf1976.pojo.dto.SongListDTO;
import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (SongList)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SongListService extends BaseService<SongListDao, SongList> {

    @Autowired
    private SongListDao songListDao;

    @Autowired
    private SongListConvert songListConvert;

    /**
     * 添加歌单
     *
     * @param songListDTO dto list
     * @return null
     */
    public Void addSongList(SongListDTO songListDTO){
        final SongList songList = songListConvert.toPo(songListDTO);
        songListDao.insert(songList);
        return null;
    }

    /**
     * 获取全部歌单
     *
     * @return songList vo
     */
    public List<SongListVO> getAllSongList(){
        final List<SongList> songLists = super.lambdaQuery()
                                         .list();
        return songListConvert.toVoList(songLists);
    }

    /**
     * 更新歌单信息
     *
     * @param songListDTO dto
     * @return null
     */
    public Void updateSongListMsg(SongListDTO songListDTO){
        final SongList songList = songListConvert.toPo(songListDTO);
        System.out.println(songList);
        songListDao.updateById(songList);
        return null;
    }

    /**
     * 删除歌单
     *
     * @param id 歌单id
     * @return null
     */
    public Void deleteSongList(Integer id){
        songListDao.deleteById(id);
        return null;
    }
}