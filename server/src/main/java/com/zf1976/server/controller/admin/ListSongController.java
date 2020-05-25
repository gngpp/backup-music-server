package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.ListSongDTO;
import com.zf1976.pojo.vo.ListSongVO;
import com.zf1976.service.ListSongService;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/25 上午8:33
 */
@RestController
@RequestMapping(value = "/api/admin")
@AdminRestController
@SuppressWarnings("rawtypes")
public class ListSongController {

    @Autowired
    private ListSongService songService;

    @ApiOperation(value = "歌单添加歌曲")
    @PostMapping("/listSong/add")
    public DataResult addListSong(ListSongDTO listSongDTO) {
        return DataResult.success(songService.addListSong(listSongDTO));
    }

    @ApiOperation(value = "删除歌单里的歌曲")
    @GetMapping("/listSong/delete")
    public DataResult deleteListSong(@RequestParam Integer songId) {
        return DataResult.success(songService.deleteListSong(songId));
    }

    @ApiOperation(value = "返回歌单里指定歌单ID的歌曲")
    @GetMapping("/listSong/detail")
    public DataResult<List<ListSongVO>> getListSongBySongId(@RequestParam Integer songListId){
        return DataResult.success(songService.getListSongBySongId(songListId));
    }

}
