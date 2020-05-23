package com.zf1976.pojo.common.convert;


import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.vo.ConsumerVO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/21 下午3:42
 */
@Mapper(componentModel = "spring")
public interface ConsumerConvert {
    /**
     * 转po
     * @param consumerDTO dto
     * @return po
     */
    @Mapping(target = "password", ignore = true)
    @Mapping(target = "updateTime", ignore = true)
    @Mapping(target = "createTime", ignore = true)
    Consumer toPo(ConsumerDTO consumerDTO);

    /**
     * 转vo
     * @param consumer po
     * @return vo
     */
    ConsumerVO toVo(Consumer consumer);

    /**
     * 转po
     * @param consumerVO vo
     * @return po
     */
    @Mapping(target = "updateTime", ignore = true)
    @Mapping(target = "password", ignore = true)
    @Mapping(target = "createTime", ignore = true)
    Consumer toPo(ConsumerVO consumerVO);

    /**
     * 转vo list
     * @param consumerList po list
     * @return vo list
     */
    List<ConsumerVO> toVoList(List<Consumer> consumerList);
}
