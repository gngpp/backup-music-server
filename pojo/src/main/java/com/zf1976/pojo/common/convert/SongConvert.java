package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.SongDTO;
import com.zf1976.pojo.dto.app.StatisticalDTO;
import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.pojo.vo.app.StatisticalVO;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:49
 */
@Mapper(componentModel = "spring")
public interface SongConvert {

    /**
     * 转po
     *
     * @param songVO vo
     * @return po
     */
    Song toPo(SongVO songVO);

    /**
     * 转vo
     *
     * @param song po
     * @return vo
     */
    StatisticalVO toStatisticalVo(Song song);

    /**
     * 转po
     *
     * @param statisticalDTO dto
     * @return po
     */
    Song toPo(StatisticalDTO statisticalDTO);
    /**
     * 转vo
     *
     * @param song po
     * @return vo
     */
    SongVO toVo(Song song);

    /**
     * 转po
     *
     * @param songDTO dto
     * @return po
     */
    Song toVo(SongDTO songDTO);

    /**
     * 转vo list
     * @param songs po list
     * @return vo list
     */
    List<SongVO> toVoList(List<Song> songs);
}
