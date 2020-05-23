package com.zf1976.pojo.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author ant
 * Create by Ant on 2020/5/20 下午9:01
 */
@Data
@ApiModel("后台添加用户DTO")
public class ConsumerDTO {

    private Integer id;

    private String username;

    private String password;

    private Integer sex;

    private String phoneNum;

    private String email;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date birth;

    private String introduction;

    private String location;
    
    private String avatar;
}
