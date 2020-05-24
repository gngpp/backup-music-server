package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.ListSongDTO;
import com.zf1976.pojo.po.ListSong;
import com.zf1976.pojo.vo.ListSongVO;
import org.mapstruct.Mapper;

import java.util.List;


/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:36
 */
@Mapper(componentModel = "spring")
public interface ListSongConvert {

    /**
     * 转vo
     *
     * @param listSong po
     * @return vo
     */
    ListSongVO toVo(ListSong listSong);

    /**
     * 转po
     *
     * @param listSongDTO vo
     * @return po
     */
    ListSong toPo(ListSongDTO listSongDTO);

    /**
     * 转vo list
     *
     * @param listSongs po list
     * @return vo list
     */
    List<ListSongVO> toVoList(List<ListSong> listSongs);
}
