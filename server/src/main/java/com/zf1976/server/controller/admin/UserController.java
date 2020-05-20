package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.ApiRestController;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.service.ConsumerService;
import com.zf1976.pojo.dto.common.DataResult;
import io.swagger.annotations.Api;
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
@Api("UserController")
public class UserController {

    @Autowired
    private ConsumerService consumerService;

    /**
     * 返回所有用户
     * @return 用户列表
     */
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public DataResult<List<Consumer>> getAllUser(){
        return DataResult.success(consumerService.list());
    }

    @RequestMapping(value = "/user/detail?id=${id}",method = RequestMethod.GET)
    public DataResult<Consumer> getUserById(@RequestPart Integer id){
        return DataResult.success(consumerService.getById(id));
    }
}
