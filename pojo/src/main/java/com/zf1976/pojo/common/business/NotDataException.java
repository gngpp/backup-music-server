package com.zf1976.pojo.common.business;

import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import lombok.Data;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午7:54
 */
@Data
public class NotDataException extends RuntimeException{

    /**
     * 异常码
     */
    private Integer code;

    /**
     * 异常信息
     */
    private String msg;

    public NotDataException(BusinessMsgEnum businessMsgEnum){
        this.code=businessMsgEnum.getCode();
        this.msg=businessMsgEnum.getMsg();
    }

}
