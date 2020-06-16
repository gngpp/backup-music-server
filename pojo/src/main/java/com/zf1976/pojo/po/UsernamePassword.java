package com.zf1976.pojo.po;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Builder;
import lombok.Data;

/**
 * @author mac
 * Create by Ant on 2020/6/15 5:51 下午
 */
@Data
@Builder
@TableName("consumer")
public class UsernamePassword {

    private String username;

    private String password;

}
