package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.service.SongService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
}
