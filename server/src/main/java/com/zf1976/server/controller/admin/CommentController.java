package com.zf1976.server.controller.admin;

import com.zf1976.pojo.common.DataResult;
import com.zf1976.service.CommentService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author ant
 * Create by Ant on 2020/5/23 上午8:14
 */
@RestController
@RequestMapping(value = "/api/admin")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @ApiOperation(value = "根据歌曲id获取评论")
    @GetMapping("comment/song/detail")
    public DataResult getCommentBySongId(@RequestParam Integer songId){
        return DataResult.success(commentService.getById(songId));
    }

}
