package com.zf1976.controller.admin;

import com.zf1976.ConsumerService;
import com.zf1976.po.Consumer;
import com.zf1976.dto.common.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/20 上午11:27
 */
@RestController
@RequestMapping(value = "/api/admin")
public class UserController {

    @Autowired
    private ConsumerService consumerService;

    /**
     * 返回所有用户
     * @return 用户列表
     */
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public R<List<Consumer>> getAllUser(){
        return R.success(consumerService.list());
    }
}
