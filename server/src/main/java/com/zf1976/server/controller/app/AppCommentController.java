package com.zf1976.server.controller.app;

import com.baomidou.mybatisplus.extension.api.R;
import com.zf1976.dao.CommentDao;
import com.zf1976.pojo.anno.AppRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.admin.CommentDTO;
import com.zf1976.pojo.vo.CommentVO;
import com.zf1976.service.CommentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/6/1 上午11:19
 */
@RestController
@AppRestController
@RequestMapping(value ="/api/app")
@SuppressWarnings("rawtypes")
@Api("AppCommentController")
public class AppCommentController {

    @Autowired
    private CommentService commentService;

    @ApiOperation(value = "添加评论")
    @PostMapping("/comment/add")
    public DataResult addComment(@RequestBody CommentDTO commentDTO){
        return DataResult.success(commentService.addComment(commentDTO));
    }

    @ApiOperation(value = "点赞")
    @PostMapping("/comment/like")
    public DataResult addLike(@RequestParam Integer id,@RequestParam Integer up){
        return DataResult.success(commentService.addLike(id,up));
    }

    @ApiOperation(value = "获取歌手评论")
    @GetMapping("/comment/song/detail")
    public DataResult<List<CommentVO>> getSongComment(@RequestParam Integer songId){
        return DataResult.success(commentService.getCommentBySongId(songId));
    }

    @ApiOperation(value = "获取歌单评论")
    @GetMapping("/comment/song_list/detail")
    public DataResult<List<CommentVO>> getSongListComment(@RequestParam Integer songListId){
        return DataResult.success(commentService.getCommentBySongListId(songListId));
    }
}
