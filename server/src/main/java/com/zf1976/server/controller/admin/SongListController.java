package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.admin.SongListDTO;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.SongListService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;


/**
 * @author ant
 * Create by Ant on 2020/5/24 下午1:05
 */
@RestController
@RequestMapping(value = "/api/admin")
@AdminRestController
@SuppressWarnings("rawtypes")
public class SongListController {

    @Autowired
    private SongListService songListService;

    @ApiOperation(value = "获取全部歌单")
    @GetMapping("/songList")
    public DataResult<List<SongListVO>> getAllSongList(){
        return DataResult.success(songListService.getAllSongList());
    }

    @ApiOperation(value = "添加歌单")
    @PostMapping("/songList/add")
    public DataResult addSongList(@RequestBody SongListDTO songListDTO){
        return DataResult.success(songListService.addSongList(songListDTO));
    }

    @ApiOperation(value = "根据id删除歌单")
    @GetMapping("/songList/delete")
    public DataResult deleteSongList(@RequestParam Integer id){
        return DataResult.success(songListService.deleteSongList(id));
    }

    @ApiOperation(value = "更新歌单信息")
    @PostMapping("/songList/update")
    public DataResult updateSongList(@RequestBody SongListDTO songListDTO){
        return DataResult.success(songListService.updateSongListMsg(songListDTO));
    }

    @ApiOperation(value = "更新歌单封面")
    @PostMapping("/songList/img/update")
    public DataResult updateSongListPic(@RequestParam("file") MultipartFile uploadFile,@RequestParam("id") Integer id){
        return DataResult.success(songListService.updateSongListPic(uploadFile, id));
    }
}
