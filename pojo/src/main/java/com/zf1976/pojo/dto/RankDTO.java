package com.zf1976.pojo.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author ant
 * Create by Ant on 2020/5/23 下午10:56
 */
@Data
@ApiModel(value = "评分DTO")
public class RankDTO {

    @ApiModelProperty(value = "id")
    private Integer id;

    @ApiModelProperty(value = "歌曲列表id")
    private Integer songListId;

    @ApiModelProperty("客户id")
    private Integer consumerId;

    @ApiModelProperty(value = "评分")
    private Integer score;
}
