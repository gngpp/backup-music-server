package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.app.StatisticalDTO;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.service.SongService;
import com.zf1976.service.aspect.annotation.Log;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/6/1 上午11:22
 */
@RestController
@AppRestController
@RequestMapping(value ="/api/app")
@SuppressWarnings("rawtypes")
@Api("AppSongController")
public class AppSongController {

    @Autowired
    private SongService songService;

    @ApiOperation(value = "返回指定歌曲ID的歌曲")
    @GetMapping("/song/detail")
    public DataResult<SongVO> getSongById(@RequestParam Integer id){
        return DataResult.success(songService.getSongById(id));
    }

    @ApiOperation(value = "返回指定歌手ID的歌曲")
    @GetMapping("/song/singer/detail")
    public DataResult<List<SongVO>> getSongBySingerId(@RequestParam Integer singerId){
        return DataResult.success(songService.getSongBySingerId(singerId));
    }

    @ApiOperation(value = "返回指定歌手名的歌曲")
    @GetMapping("/song/singer_name/detail")
    public DataResult<List<SongVO>> getSongBySingerName(@RequestParam String name){
        return DataResult.success(songService.getSongByLikeSingerName(name));
    }

    @ApiOperation(value = "更新播放量下载量")
    @PostMapping("/song/update/statistical")
    @Log
    public DataResult updateStatistical(@RequestBody StatisticalDTO dto){
        return DataResult.success(songService.updateStatistical(dto));
    }
}
