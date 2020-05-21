package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.ApiRestController;
import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.service.ConsumerService;
import com.zf1976.pojo.common.DataResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/20 上午11:27
 */
@RestController
@RequestMapping(value = "/api/admin")
@ApiRestController
@SuppressWarnings("rawtypes")
@Api("UserController")
public class UserController {

    @Autowired
    private ConsumerService consumerService;

    /**
     * 返回所有用户
     * @return 用户列表
     */
    @ApiOperation(value = "获取所有用户")
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public DataResult<List<Consumer>> getAllUser(){
        return DataResult.success(consumerService.list());
    }

    /**
     * 根据id查询用户
     * @param id 用户id
     * @return 返回用户
     */
    @ApiOperation(value = "根据id查询用户")
    @RequestMapping(value = "/user/detail",method = RequestMethod.GET)
    public DataResult<Consumer> getUserById(@RequestParam Integer id){
        return DataResult.success(consumerService.getById(id));
    }

    /**
     * 添加用户
     * @param consumerDTO 用户数据
     * @return 响应结果
     */
    @ApiOperation(value = "添加用户")
    @RequestMapping(value = "/user/add",method = RequestMethod.POST)
    public DataResult addUser(@RequestBody ConsumerDTO consumerDTO){
        return DataResult.success(consumerService.addUser(consumerDTO));
    }

    /**
     * 根据id删除用户
     * @param id 用户id
     * @return 响应结果
     */
    @ApiOperation(value = "根据id删除用户")
    @RequestMapping(value = "/user/delete",method = RequestMethod.GET)
    public DataResult deleteUser(@RequestParam Integer id){
        return DataResult.success(consumerService.removeById(id));
    }

    /**
     * 更新用户信息
     * @param consumerDTO 用户信息
     * @return 响应结果
     */
    @ApiOperation(value = "更新用户信息")
    @RequestMapping(value = "/user/update",method = RequestMethod.POST)
    public DataResult updateUser(@RequestBody ConsumerDTO consumerDTO){
        return null;
    }
}
