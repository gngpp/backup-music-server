package po;

import lombok.Data;
import lombok.experimental.Accessors;
import io.swagger.annotations.ApiModelProperty;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableName;
/**
 * (Admin)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */


@Data
@TableName("admin")
public class Admin extends Model<Admin> {

    @TableId(type = IdType.AUTO)
    private Integer id;

    private String username;

    private String password;
    
}