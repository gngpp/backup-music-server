package po;

import java.util.Date;
import java.io.Serializable;
import lombok.Data;
import lombok.experimental.Accessors;
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
@TableName
public class Singer extends Model<Singer> {

    @TableId(type = IdType.AUTO)
    private Integer id;

    private String name;

    private Integer sex;

    private String pic;

    private Date birth;

    private String location;

    private String introduction;
    
}