package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.ListSong;
import com.zf1976.pojo.vo.ListSongVO;
import org.mapstruct.Mapper;


/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:36
 */
@Mapper(componentModel = "spring")
public interface ListSongConvert {

    /**
     * 转vo
     * @param listSong po
     * @return vo
     */
    ListSongVO toVo(ListSong listSong);

    /**
     * 转po
     * @param listSongVO vo
     * @return po
     */
    ListSong toPo(ListSongVO listSongVO);
}
