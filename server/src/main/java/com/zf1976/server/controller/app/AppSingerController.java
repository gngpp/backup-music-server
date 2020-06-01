package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.service.SingerService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author mac
 * Create by Ant on 2020/5/31 10:27 下午
 */
@RestController
@AppRestController
@RequestMapping(value ="/api/app")
@SuppressWarnings(("rawtypes"))
@Api("AppSingerController")
public class AppSingerController {

    @Autowired
    private SingerService singerService;

    @ApiOperation(value = "获取所有歌手")
    @GetMapping("/singer")
    public DataResult<List<SingerVO>> getAllSinger(){
        return DataResult.success(singerService.getAllSinger());
    }

    @ApiOperation(value = "通过性别获取歌手")
    @GetMapping("/singer/sex/detail")
    public DataResult<List<SingerVO>> getSingerBySex(@RequestParam Integer sex){
        return DataResult.success(singerService.getSingerBySex(sex));
    }

}
