package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.Comment;
import com.zf1976.pojo.vo.CommentVO;
import org.mapstruct.Mapper;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午11:31
 */
@Mapper(componentModel = "spring")
public interface CommentConvert {

    /**
     * 转vo
     * @param comment po
     * @return vo
     */
    CommentVO toVo(Comment comment);

    /**
     * 转po
     * @param commentVO vo
     * @return po
     */
    Comment toPo(CommentVO commentVO);

}
