package com.zf1976.server.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import po.Admin;
import service.AdminService;

/**
 * @author ant
 * Create by Ant on 2020/5/18 下午7:43
 */
@RestController
@Api("后台登陆api")
public class SecurityController {

    public static final Logger LOGGER= LoggerFactory.getLogger(SecurityController.class);

    @RequestMapping(value = "/admin/login/status",method = RequestMethod.POST)
    @ApiOperation(value = "登陆接口")
    public Object doLogin(@RequestParam String username, @RequestParam String password){
        final QueryWrapper<Admin> stringQueryWrapper = new QueryWrapper<>();
        stringQueryWrapper.select("password")
                          .eq("username",username);
//      //  final Admin one = adminService.getOne(stringQueryWrapper);
//        Map<String,Object> map = null;
//        map = new HashMap<String,Object>(2);
//        if (one.getPassword().equals(password)){
//            map.put("code",200);
//            return map;
//        }
        return null;
    }
}
