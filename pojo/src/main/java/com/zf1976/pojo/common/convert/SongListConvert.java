package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.vo.SongListVO;
import org.mapstruct.Mapper;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:47
 */
@Mapper(componentModel = "spring")
public interface SongListConvert {

    /**
     * 转po
     * @param songListVO vo
     * @return po
     */
    SongList toPo(SongListVO songListVO);

    /**
     * 转vo
     * @param songList po
     * @return vo
     */
    SongListVO toVo(SongList songList);
}
