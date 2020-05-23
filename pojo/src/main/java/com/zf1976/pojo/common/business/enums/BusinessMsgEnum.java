package com.zf1976.pojo.common.business.enums;

import lombok.Getter;
import lombok.ToString;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午1:56
 */
@Getter
@ToString
public enum BusinessMsgEnum {

    /**
     * 空指针异常
     */
    NPE_EXCEPTION(500,"空指针异常"),

    /**
     * 查找失败异常
     */
    FAIL_EXCEPTION(500,"数据不存在"),

    /**
     * 参数异常
     */
    PARAMETER_EXCEPTION(102,"参数异常!"),

    /**
     * 手机号已存在
     */
    EXIST_PHONE(403,"手机号已存在"),

    /**
     * 邮箱已存在
     */
    EXIST_EMAIL(402,"邮箱已存在"),

    /**
     * 用户已存在
     */
    EXIST_USER(401,"用户已存在"),

    /**
     * 用户不存在
     */
    NOT_EXIST_USER(400,"用户不存在");

    /**
     * 消息码
     */
    private Integer code;

    /**
     * 消息
     */
    private String msg;

    BusinessMsgEnum(Integer code,String msg) {
        this.code=code;
        this.msg=msg;
    }

}
