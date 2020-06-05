package com.zf1976.server.controller.admin;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zf1976.dao.ConsumerDao;
import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.RequestPage;
import com.zf1976.pojo.dto.admin.ConsumerDTO;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.service.ConsumerService;
import com.zf1976.pojo.common.DataResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.crypto.Data;
import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/20 上午11:27
 */
@RestController
@AdminRestController
@RequestMapping(value = "/api/admin")
@SuppressWarnings("rawtypes")
@Api("ConsumerController")
public class ConsumerController {

    @Autowired
    private ConsumerService consumerService;

    @ApiOperation(value = "获取所有用户")
    @GetMapping("/user/all")
    public  DataResult<List<ConsumerVO>> getAllUser(){
        return DataResult.success(consumerService.getAllUser());
    }

    @ApiOperation(value = "分页查询用户")
    @PostMapping("/user")
    public DataResult<IPage<ConsumerVO>> getUserPage(@RequestBody RequestPage page){
        return DataResult.success(consumerService.getUserPage(page));
    }

    @ApiOperation(value = "根据id查询用户")
    @GetMapping("/user/detail")
    public DataResult<ConsumerVO> getUserById(@RequestParam Integer id){
        return DataResult.success(consumerService.getConsumerById(id));
    }

    @ApiOperation(value = "添加用户")
    @PostMapping("/user/add")
    public DataResult addUser(@RequestBody ConsumerDTO consumerDTO){
        return DataResult.success(consumerService.addUser(consumerDTO));
    }

    @ApiOperation(value = "根据id删除用户")
    @GetMapping("/user/delete")
    public DataResult deleteUser(@RequestParam Integer id){
        return DataResult.success(consumerService.removeById(id));
    }

    @ApiOperation(value = "更新用户信息")
    @PostMapping("/user/update")
    public DataResult updateUser(@RequestBody ConsumerDTO consumerDTO){
        return DataResult.success(consumerService.updateUser(consumerDTO));
    }

    @ApiOperation(value = "更新用户头像")
    @PostMapping("/user/avatar/update")
    public DataResult updateAvatar(@RequestParam("file") MultipartFile uploadFile,@RequestParam("id") Integer id) {
        return DataResult.success(consumerService.updateAvatar(uploadFile, id));
    }

}
