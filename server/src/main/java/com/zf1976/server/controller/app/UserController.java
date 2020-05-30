package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.app.UserLoginDTO;
import com.zf1976.service.ConsumerService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/app")
@AppRestController
@SuppressWarnings("rawtypes")
public class UserController {

    @Autowired
    private ConsumerService consumerService;

    @ApiOperation(value = "用户登陆")
    @PostMapping("/user/login/status")
    public DataResult doLogin(UserLoginDTO userLoginDTO){
        return null;
    }
}
