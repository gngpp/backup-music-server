package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.vo.SingerVO;
import org.mapstruct.Mapper;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:46
 */
@Mapper(componentModel = "spring")
public interface SingerConvert {

    /**
     * 转po
     * @param singerVO vo
     * @return po
     */
    Singer toPo(SingerVO singerVO);

    /**
     * 转vo
     * @param singer po
     * @return vo
     */
    SingerVO toVo(Singer singer);
}
