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
 * (Consumer)实体类
 *
 * @author makejava
 * @since 2020-05-17 22:40:41
 */
@Data
@Accessors(chain=true)
@EqualsAndHashCode(callSuper = true)
@TableName
public class Consumer extends Model<Consumer> implements Serializable {
    
    @ApiModelProperty(value = "id", name = "id", required = false) 
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户名", name = "username", required = false)
    private String username;
    
    @ApiModelProperty(value = "用户密码", name = "password", required = false)
    private String password;
    
    @ApiModelProperty(value = "性别", name = "sex", required = false)
    private Integer sex;
    
    @ApiModelProperty(value = "手机号", name = "phoneNum", required = false)
    private String phoneNum;
    
    @ApiModelProperty(value = "邮箱", name = "email", required = false)
    private String email;
    
    @ApiModelProperty(value = "出生年月", name = "birth", required = false)
    private Date birth;
    
    @ApiModelProperty(value = "介绍", name = "introduction", required = false)
    private String introduction;
    
    @ApiModelProperty(value = "地点", name = "location", required = false)
    private String location;
    
    @ApiModelProperty(value = "头像", name = "avatar", required = false)
    private String avatar;
    
    @ApiModelProperty(value = "创建时间", name = "createTime", required = false)
    private Date createTime;
    
    @ApiModelProperty(value = "更新时间", name = "updateTime", required = false)
    private Date updateTime;
    
}