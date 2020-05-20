package com.zf1976.server.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zf1976.dao.AdminService;
import com.zf1976.pojo.po.Admin;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * @author ant
 * Create by Ant on 2020/5/18 下午7:43
 */
@RestController
@RequestMapping("/api/admin")
@Api("后台登陆api")
public class SecurityController {

    public static final Logger LOGGER= LoggerFactory.getLogger(SecurityController.class);

    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/login/status",method = RequestMethod.POST)
    @ApiOperation(value = "登陆接口")
    public Object doLogin(@RequestParam String username,@RequestParam String password){
        final QueryWrapper<Admin> adminQueryWrapper = new QueryWrapper<>();
        adminQueryWrapper.select()
                         .eq("username",username);
        final Admin one = adminService.getOne(adminQueryWrapper);
        Map<String,Object> map = null;
        map = new HashMap<String,Object>(2);
        if (one.getPassword().equals(password)){
            map.put("code",200);
            return map;
        }
        return null;
    }

    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String test(){
        return "hanbi";
    }
}
