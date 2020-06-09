package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.app.RankDTO;
import com.zf1976.service.RankService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author ant
 * Create by Ant on 2020/6/1 上午11:15
 */

@RestController
@AppRestController
@RequestMapping(value ="/api/app")
@SuppressWarnings("rawtypes")
@Api("AppRankController")
public class AppRankController {

    @Autowired
    private RankService rankService;

    @ApiOperation(value = "提交评分")
    @PostMapping("/rank/add")
    public DataResult addRank(@RequestBody RankDTO dto){
        return DataResult.success(rankService.addRank(dto));
    }

    @ApiOperation(value = "获取指定歌单的评分")
    @GetMapping("/rank")
    public DataResult<Integer> getRankBySongListId(@RequestParam Integer songListId){
        return DataResult.success(rankService.getSongListBankById(songListId));
    }

}
