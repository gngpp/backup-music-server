package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.app.UserInfoDTO;
import com.zf1976.pojo.dto.app.UserLoginDTO;
import com.zf1976.pojo.vo.app.UserInfoVO;
import com.zf1976.pojo.vo.app.UserMsgVO;
import com.zf1976.service.ConsumerService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @author mac
 */
@RestController
@AppRestController
@RequestMapping(value = "/api/app")
@SuppressWarnings("rawtypes")
@Api("AppUserController")
public class AppUserController {

    @Autowired
    private ConsumerService consumerService;

    @ApiOperation(value = "用户登陆")
    @PostMapping("/user/login/status")
    public DataResult<UserMsgVO> doLogin(@RequestBody UserLoginDTO dto){
        return DataResult.success(consumerService.doLogin(dto));
    }

    @ApiOperation(value = "前台用户注册")
    @PostMapping("/user/add")
    public DataResult signUp(@RequestBody UserInfoDTO dto){
        return DataResult.success(consumerService.signUp(dto));
    }

    @ApiOperation(value = "前台用户更新信息")
    @PostMapping("/user/update")
    public DataResult updateUserMsg(@RequestBody UserInfoDTO dto){
        return DataResult.success(consumerService.updateUserMsg(dto));
    }

    @ApiOperation(value = "更新用户头像")
    @PostMapping("/user/avatar/update")
    public DataResult updateUserPic(@RequestParam("file")MultipartFile uploadFile, @RequestParam("id") Integer id){
        return DataResult.success(consumerService.updateAvatar(uploadFile,id));

    }

    @ApiOperation(value = "根据用户id返回用户")
    @GetMapping("/user/detail")
    public  DataResult<UserInfoVO> getUserById(@RequestParam Integer id){
        return DataResult.success(consumerService.getUserById(id));
    }

    @ApiOperation(value = "根据用户id集合返回用户")
    @GetMapping("/user/list/detail")
    public  DataResult<List<UserInfoVO>> getUserByIds(@RequestParam List<Integer> ids){
        return DataResult.success(consumerService.getUserByIds(ids));
    }

    @ApiOperation(value = "根据用户id获取头像path")
    @GetMapping("/user/avatar")
    public DataResult<String> getUserAvatar(@RequestParam Integer id){
        return DataResult.success(consumerService.getUserAvatar(id));
    }


}
