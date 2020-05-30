package com.zf1976.pojo.dto.app;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.lang.NonNull;

import java.util.Date;

@Data
@ApiModel(value = "前台用户注册dto")
public class UserInfoDTO {

    @ApiModelProperty(value = "主键")
    private Integer id;

    @ApiModelProperty(value = "用户名")
    @NonNull
    private String username;

    @ApiModelProperty(value = "密码")
    @NonNull
    private String password;

    @ApiModelProperty(value = "性别")
    @NonNull
    private Integer sex;

    @ApiModelProperty(value = "手机号")
    @NonNull
    private String phoneNum;

    @ApiModelProperty(value = "邮箱")
    @NonNull
    private String email;

    @ApiModelProperty(value = "出生年月")
    @NonNull
    private Date birth;

    @ApiModelProperty(value = "介绍")
    private String introduction;

    @ApiModelProperty(value = "地点")
    private String location;

    @ApiModelProperty(value = "头像")
    private String avatar;

}
