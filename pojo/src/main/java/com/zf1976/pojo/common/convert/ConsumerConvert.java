package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import javax.xml.transform.Source;

/**
 * @author ant
 * Create by Ant on 2020/5/21 下午3:42
 */
@Mapper(componentModel = "spring")
public interface ConsumerConvert {
    /**
     * 转pojo
     * @param consumerDTO dto
     * @return 实体
     */
    Consumer toPo(ConsumerDTO consumerDTO);
}
