package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.vo.SongVO;
import org.mapstruct.Mapper;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:49
 */
@Mapper(componentModel = "spring")
public interface SongConvert {

    /**
     * 转po
     * @param songVO vo
     * @return po
     */
    Song toPo(SongVO songVO);

    /**
     * 转vo
     * @param song po
     * @return vo
     */
    SongVO toVo(Song song);
}
