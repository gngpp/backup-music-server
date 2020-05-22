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
     * @param consumer 实体
     * @return vo
     */
    ConsumerVO toVo(Consumer consumer);

    /**
     * 转List<ConsumerVO>
     * @param consumerList consumerList
     * @return List<ConsumeVOr>
     */
    List<ConsumerVO> toVoList(List<Consumer> consumerList);
}
