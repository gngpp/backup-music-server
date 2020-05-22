package com.zf1976.pojo.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModel;
import lombok.Builder;
import lombok.Data;

import java.util.Date;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午5:21
 */
@Data
@Builder
@ApiModel("用户收藏集VO")
public class CollectVO {

    @TableId(type = IdType.AUTO)
    private Integer id;

    private Integer userId;

    private Integer type;

    private Integer songId;

    private Integer songListId;

}
