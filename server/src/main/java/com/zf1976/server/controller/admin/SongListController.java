package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.SongListDTO;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.SongListService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public DataResult addSongList(SongListDTO songListDTO){
        return DataResult.success(songListService.addSongList(songListDTO));
    }
}
