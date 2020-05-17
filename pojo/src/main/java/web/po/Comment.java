package web.po;

import java.util.Date;
import java.io.Serializable;
import lombok.Data;
import lombok.experimental.Accessors;
import lombok.EqualsAndHashCode;
import io.swagger.annotations.ApiModelProperty;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableName;
/**
 * (Comment)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@Accessors(chain=true)
@EqualsAndHashCode(callSuper = true)
@TableName
public class Comment extends Model<Comment> implements Serializable {
    
    @ApiModelProperty(value = "id", name = "id", required = false) 
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户id", name = "userId", required = false)
    private Integer userId;
    
    @ApiModelProperty(value = "歌曲id", name = "songId", required = false)
    private Integer songId;
    
    @ApiModelProperty(value = "歌曲列表id", name = "songListId", required = false)
    private Integer songListId;
    
    @ApiModelProperty(value = "评论内容", name = "content", required = false)
    private String content;
    
    @ApiModelProperty(value = "创建时间", name = "createTime", required = false)
    private Date createTime;
    
    @ApiModelProperty(value = "类型", name = "type", required = false)
    private Integer type;
    
    @ApiModelProperty(value = "未知。。", name = "up", required = false)
    private Integer up;
    
}