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
 * (Admin)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@Accessors(chain=true)
@EqualsAndHashCode(callSuper = true)
@TableName
public class Admin extends Model<Admin> implements Serializable {
    
    @ApiModelProperty(value = "id", name = "id", required = false) 
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户名", name = "username", required = false)
    private String username;
    
    @ApiModelProperty(value = "密码", name = "password", required = false)
    private String password;
    
}