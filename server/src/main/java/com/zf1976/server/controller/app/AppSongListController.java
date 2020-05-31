package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.SongListService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    public DataResult<List<SongListVO>> getAllSongList(){
        return DataResult.success(songListService.getAllSongList());
    }


}
