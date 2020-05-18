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
 * (Consumer)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@TableName
public class Consumer extends Model<Consumer> {

    @TableId(type = IdType.AUTO)
    private Integer id;

    private String username;

    private String password;

    private Integer sex;

    private String phoneNum;

    private String email;

    private Date birth;

    private String introduction;

    private String location;

    private String avatar;

    private Date createTime;

    private Date updateTime;
    
}