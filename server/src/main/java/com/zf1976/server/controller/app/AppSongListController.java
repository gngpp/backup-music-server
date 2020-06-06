package com.zf1976.server.controller.app;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.common.RequestPage;
import com.zf1976.pojo.dto.admin.SongListDTO;
import com.zf1976.pojo.vo.ListSongVO;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.ListSongService;
import com.zf1976.service.SongListService;
import com.zf1976.service.aspect.annotation.Log;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author mac
 * Create by Ant on 2020/5/30 8:01 下午
 */
@RestController
@AppRestController
@RequestMapping(value ="/api/app")
@SuppressWarnings(("rawtypes"))
@Api("AppSongListController")
public class AppSongListController {

    @Autowired
    private SongListService songListService;

    @Autowired
    private ListSongService listSongService;

    @ApiOperation(value = "分页获取歌单")
    @PostMapping("/song_list")
    public DataResult<IPage<SongListVO>> getSongListPage(@RequestBody RequestPage<SongListDTO> requestPage){
        return DataResult.success(songListService.getSongListPage(requestPage));
    }

    @ApiOperation(value = "获取全部歌单")
    @GetMapping("/song_list")
    public DataResult<List<SongListVO>> getAllSongList(){
        return DataResult.success(songListService.getAllSongList());
    }

    @ApiOperation(value = "根据歌单类型获取歌单")
    @GetMapping("/song_list/style/detail")
    public DataResult<List<SongListVO>> getSongListByLikeStyle(@RequestParam String style){
        return DataResult.success(songListService.getSongListByLikeStyle(style));
    }

    @ApiOperation(value = "根据歌单类型分页获取歌单")
    @PostMapping("/song_list/style/detail")
    public DataResult<IPage<SongListVO>> getSongListPageByLikeStyle(@RequestBody RequestPage<SongListDTO> requestPage){
        return DataResult.success(songListService.getSongListPageByLikeStyle(requestPage));
    }

    @ApiOperation(value = "返回标题包含文字的歌单")
    @GetMapping("/song_list/like_title/detail")
    public DataResult<List<SongListVO>> getSongListByLikeTitle(@RequestParam String title){
        return DataResult.success(songListService.getSongListByLikeTitle(title));
    }

    @ApiOperation(value = "返回指定标题的歌单")
    @GetMapping("/song_list/title/detail")
    public DataResult<SongListVO> getSongListByTitle(@RequestParam String title){
        return DataResult.success(songListService.getSongListByTitle(title));
    }

    @ApiOperation(value = "返回歌单里指定歌单ID的歌曲")
    @GetMapping("/song_list/detail")
    public DataResult<List<ListSongVO>> getSongListBySongListId(@RequestParam Integer songListId){
        return DataResult.success(listSongService.getSongsBySongListId(songListId));
    }

}
