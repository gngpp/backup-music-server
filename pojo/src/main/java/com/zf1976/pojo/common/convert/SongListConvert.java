package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.SongListDTO;
import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.vo.SongListVO;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:47
 */
@Mapper(componentModel = "spring")
@Repository
public interface SongListConvert {

    /**
     * 转po
     *
     * @param songListVO vo
     * @return po
     */
    SongList toPo(SongListVO songListVO);

    /**
     * 转po
     *
     * @param songListDTO dto
     * @return po
     */
    SongList toPo(SongListDTO songListDTO);

    /**
     * 转vo
     *
     * @param songList po
     * @return vo
     */
    SongListVO toVo(SongList songList);

    /**
     * 转vo list
     *
     * @param songLists po list
     * @return vo list
     */
    List<SongListVO> toVoList(List<SongList> songLists);

}
