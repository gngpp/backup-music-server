package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.Rank;
import com.zf1976.pojo.vo.RankVO;
import org.mapstruct.Mapper;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:44
 */
@Mapper(componentModel = "spring")
public interface RankConvert {

    /**
     * 转po
     *
     * @param rankVO vo
     * @return po
     */
    Rank toPo(RankVO rankVO);

    /**
     * 转vo
     *
     * @param rank po
     * @return vo
     */
    RankVO toVo(Rank rank);
}
