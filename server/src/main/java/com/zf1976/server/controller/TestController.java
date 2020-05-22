package com.zf1976.server.controller;

import com.zf1976.pojo.common.business.ExistPhoneException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午2:53
 */
@RestController
public class TestController {
    @GetMapping("/test")
    public void test(){
        throw new ExistPhoneException(BusinessMsgEnum.EXIST_PHONE);
    }
}
