package dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;

/**
 * @author ant
 * Create by Ant on 2020/5/20 上午2:45
 */
@Data
@Builder
@ApiModel(value = "后台登陆DTO")
public class AdminLoginDTO {

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "登陆密码")
    private String password;
}
