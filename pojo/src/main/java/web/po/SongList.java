package web.po;

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
 * (SongList)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@Accessors(chain=true)
@EqualsAndHashCode(callSuper = true)
@TableName
public class SongList extends Model<SongList> implements Serializable {
    
    @ApiModelProperty(value = "id", name = "id", required = false) 
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "标题", name = "title", required = false)
    private String title;
    
    @ApiModelProperty(value = "照片", name = "pic", required = false)
    private String pic;
    
    @ApiModelProperty(value = "说明", name = "introduction", required = false)
    private String introduction;
    
    @ApiModelProperty(value = "样式", name = "style", required = false)
    private String style;
    
}