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
 * (Singer)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@Accessors(chain=true)
@EqualsAndHashCode(callSuper = true)
@TableName
public class Singer extends Model<Singer> implements Serializable {
    
    @ApiModelProperty(value = "id", name = "id", required = false) 
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "歌手名", name = "name", required = false)
    private String name;
    
    @ApiModelProperty(value = "性别", name = "sex", required = false)
    private Integer sex;
    
    @ApiModelProperty(value = "照片", name = "pic", required = false)
    private String pic;
    
    @ApiModelProperty(value = "出生年月", name = "birth", required = false)
    private Date birth;
    
    @ApiModelProperty(value = "地点", name = "location", required = false)
    private String location;
    
    @ApiModelProperty(value = "说明", name = "introduction", required = false)
    private String introduction;
    
}