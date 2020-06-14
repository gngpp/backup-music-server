package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.app.MembershipDTO;
import com.zf1976.service.impl.MembershipService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author mac
 * Create by Ant on 2020/6/12 9:54 下午
 */
@RestController
@AppRestController
@RequestMapping(value ="/api/app")
@SuppressWarnings("rawtypes")
@Api(tags = "前台用户会员接口")
public class AppBusinessController {

    @Autowired
    private MembershipService service;

    @ApiOperation(value = "会员续费")
    @PostMapping("/club_card/membership")
    public DataResult membershipBusiness(@RequestBody MembershipDTO dto){
        return DataResult.success(service.membershipOpen(dto));
    }
}
