package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.admin.SongDTO;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.service.SongService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/24 下午7:25
 */
@RestController
@AdminRestController
@RequestMapping(value = "/api/admin")
@SuppressWarnings("rawtypes")
@Api("SongController")
public class SongController {

    @Autowired
    private SongService songService;

    @ApiOperation(value = "获取所有歌曲")
    @GetMapping("/song")
    public DataResult<List<SongVO>> getAllSong(){
        return DataResult.success(songService.getAllSong());
    }

    @ApiOperation(value = "返回指定歌手ID歌曲")
    @GetMapping("/song/singer/detail")
    public DataResult<List<SongVO>> getSongBySingerId(@RequestParam Integer singerId){
        return DataResult.success(songService.getSongBySingerId(singerId));
    }

    @ApiOperation(value = "返回的指定ID歌曲")
    @GetMapping("/song/detail")
    public DataResult<SongVO> getSongById(@RequestParam Integer id){
        return DataResult.success(songService.getSongById(id));
    }

    @ApiOperation(value = "返回指定歌手名歌曲")
    @GetMapping("/song/singer_name")
    public DataResult<List<SongVO>> getSongBySingerName(@RequestParam String name){
        return DataResult.success(songService.getSongBySingerName(name));
    }

    @ApiOperation(value = "根据歌曲id更新歌曲信息")
    @PostMapping("/song/update")
    public DataResult updateSong(@RequestBody SongDTO songDTO){
        return DataResult.success(songService.updateSongMsg(songDTO));
    }

    @ApiOperation(value = "根据歌曲id删除歌曲")
    @GetMapping("/song/delete")
    public DataResult deleteSong(@RequestParam Integer id){
        return DataResult.success(songService.deleteSong(id));
    }

    @ApiOperation(value = "更新歌曲封面")
    @PostMapping("/song/img/update")
    public DataResult updateSongPic(@RequestParam("file") MultipartFile uploadFile,@RequestParam("id") Integer id){
        return DataResult.success(songService.uploadSongPic(uploadFile, id));
    }
}
