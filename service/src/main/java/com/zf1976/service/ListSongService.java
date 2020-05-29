package com.zf1976.service;

import com.baomidou.mybatisplus.extension.api.R;
import com.zf1976.dao.ListSongDao;
import com.zf1976.pojo.common.convert.ListSongConvert;
import com.zf1976.pojo.dto.ListSongDTO;
import com.zf1976.pojo.po.ListSong;
import com.zf1976.pojo.vo.ListSongVO;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * (ListSong)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class ListSongService extends BaseService<ListSongDao, ListSong> {

    @Autowired
    private ListSongDao listSongDao;

    @Autowired
    private ListSongConvert listSongConvert;

    /**
     * 给歌单添加歌曲
     *
     * @param listSongDTO dto
     * @return null
     */
    public Void addListSong(ListSongDTO listSongDTO){
        final ListSong listSong = listSongConvert.toPo(listSongDTO);
        listSongDao.insert(listSong);
        return null;
    }

    /**
     * 返回歌单里指定歌单ID的歌曲
     *
     * @param songListId songListId
     * @return 指定歌单ID的歌曲
     */
    public List<ListSongVO> getSongBySongListId(Integer songListId){
        final List<ListSong> listSongs = super.lambdaQuery()
                                         .eq(ListSong::getSongListId, songListId)
                                         .list();
        return listSongConvert.toVoList(listSongs);
    }

    /**
     * 删除歌单里的歌曲
     *
     * @param songId songId
     * @return null
     */
    public Void deleteListSong(Integer songId,Integer songListId){
        final List<ListSong> listSongs = super.lambdaQuery()
                                         .eq(ListSong::getSongId, songId)
                                         .eq(ListSong::getSongListId,songListId)
                                         .list();

        final List<Integer> listSongIds =  listSongs.stream()
                                       .map(ListSong::getId)
                                       .collect(Collectors.toList());

        listSongIds.forEach(System.out::println);
        listSongDao.deleteBatchIds(listSongIds);
        return null;
    }
}
