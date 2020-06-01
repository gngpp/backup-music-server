package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.admin.ListSongDTO;
import com.zf1976.pojo.vo.ListSongVO;
import com.zf1976.service.ListSongService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/25 上午8:33
 */
@RestController
@AdminRestController
@RequestMapping(value = "/api/admin")
@SuppressWarnings("rawtypes")
@Api("listSongController")
public class ListSongController {

    @Autowired
    private ListSongService songService;

    @ApiOperation(value = "歌单添加歌曲")
    @PostMapping("/list_song/add")
    public DataResult addListSong(@RequestBody ListSongDTO listSongDTO) {
        return DataResult.success(songService.addListSong(listSongDTO));
    }

    @ApiOperation(value = "删除歌单里的歌曲")
    @GetMapping("/list_song/delete")
    public DataResult deleteListSong(@RequestParam Integer songId,@RequestParam Integer songListId) {
        return DataResult.success(songService.deleteListSong(songId,songListId));
    }

    @ApiOperation(value = "返回歌单里指定歌单ID的歌曲")
    @GetMapping("/list_song/detail")
    public DataResult<List<ListSongVO>> getSongsBySongListId(@RequestParam Integer songListId){
        return DataResult.success(songService.getSongsBySongListId(songListId));
    }

}
