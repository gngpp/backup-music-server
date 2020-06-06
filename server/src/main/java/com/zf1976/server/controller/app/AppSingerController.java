package com.zf1976.server.controller.app;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.common.RequestPage;
import com.zf1976.pojo.dto.admin.SingerDTO;
import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.service.SingerService;
import com.zf1976.service.aspect.annotation.Log;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @ApiOperation(value = "分页查询歌手")
    @PostMapping("/singer")
    public synchronized DataResult<IPage<SingerVO>> getSingerPage(@RequestBody RequestPage<SingerDTO> requestPage){
        return DataResult.success(singerService.getSingerPage(requestPage));
    }

    @ApiOperation(value = "通过性别查询歌手")
    @GetMapping("/singer/sex/detail")
    public DataResult<List<SingerVO>> getSingerBySex(@RequestParam Integer sex){
        return DataResult.success(singerService.getSingerBySex(sex));
    }

    @ApiOperation(value = "通过性别分页查询歌手")
    @PostMapping("/singer/sex/detail")
    public DataResult<IPage<SingerVO>> getSingerPageBySex(@RequestBody RequestPage<SingerDTO> requestPage){
        return DataResult.success(singerService.getSingerPageBySex(requestPage));
    }

}
