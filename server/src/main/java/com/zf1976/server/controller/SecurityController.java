package com.zf1976.server.controller;


import com.zf1976.pojo.dto.common.DataResult;
import com.zf1976.service.AdminService;
import com.zf1976.pojo.dto.AdminLoginDTO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    public DataResult<Object> doLogin(@RequestBody AdminLoginDTO adminLoginDTO){
        return null;
    }

    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String test(){
        return "hanbi";
    }
}
