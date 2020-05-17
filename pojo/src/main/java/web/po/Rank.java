package web.po;

import java.io.Serializable;

import io.swagger.models.auth.In;
import lombok.Data;
import lombok.experimental.Accessors;
import lombok.EqualsAndHashCode;
import io.swagger.annotations.ApiModelProperty;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableName;
/**
 * (Rank)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@Accessors(chain=true)
@EqualsAndHashCode(callSuper = true)
@TableName
public class Rank extends Model<Rank> implements Serializable {
    
    @ApiModelProperty(value = "id", name = "id", required = false) 
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "歌曲列表id", name = "songListId", required = false)
    private Integer songListId;
    
    @ApiModelProperty(value = "用户id", name = "consumerId", required = false)
    private Integer consumerId;
    
    @ApiModelProperty(value = "评分", name = "score", required = false)
    private Integer score;
    
}