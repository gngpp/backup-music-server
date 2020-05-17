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
 * (Song)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@Accessors(chain=true)
@EqualsAndHashCode(callSuper = true)
@TableName
public class Song extends Model<Song> implements Serializable {
    
    @ApiModelProperty(value = "id", name = "id", required = false) 
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "歌手id", name = "singerId", required = false)
    private Integer singerId;
    
    @ApiModelProperty(value = "歌曲名", name = "name", required = false)
    private String name;
    
    @ApiModelProperty(value = "说明", name = "introduction", required = false)
    private String introduction;
    
    @ApiModelProperty(value = "发行时间", name = "createTime", required = false)
    private Date createTime;
    
    @ApiModelProperty(value = "更新时间", name = "updateTime", required = false)
    private Date updateTime;
    
    @ApiModelProperty(value = "照片", name = "pic", required = false)
    private String pic;
    
    @ApiModelProperty(value = "抒情的", name = "lyric", required = false)
    private String lyric;
    
    @ApiModelProperty(value = "url", name = "url", required = false)
    private String url;
    
}