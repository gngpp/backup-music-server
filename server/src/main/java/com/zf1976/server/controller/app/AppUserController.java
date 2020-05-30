package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.app.UserInfoDTO;
import com.zf1976.pojo.dto.app.UserLoginDTO;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.pojo.vo.UserInfoVo;
import com.zf1976.service.ConsumerService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/api/app")
@AppRestController
@SuppressWarnings("rawtypes")
public class AppUserController {

    @Autowired
    private ConsumerService consumerService;

    @ApiOperation(value = "用户登陆")
    @PostMapping("/user/login/status")
    public DataResult doLogin(@RequestBody UserLoginDTO userLoginDTO){
        return DataResult.success(consumerService.doLogin(userLoginDTO));
    }

    @ApiOperation(value = "前台用户注册")
    @PostMapping("/user")
    public DataResult signUp(@RequestBody UserInfoDTO userInfoDTO){
        return DataResult.success(consumerService.signUp(userInfoDTO));
    }

    @ApiOperation(value = "前台用户更新信息")
    @PostMapping("")
    public DataResult updateUserMsg(@RequestBody UserInfoDTO userInfoDTO){
        return DataResult.success(consumerService.updateUserMsg(userInfoDTO));
    }

    @ApiOperation(value = "根据用户id返回用户")
    @GetMapping("")
    public DataResult<UserInfoVo> getUserById(@RequestParam Integer id){
        return DataResult.success(consumerService.getUserById(id));
    }


}
