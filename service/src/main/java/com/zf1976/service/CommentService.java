package com.zf1976.service;

import com.zf1976.dao.CommentDao;
import com.zf1976.pojo.po.Comment;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (CommentVO)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class CommentService extends BaseService<CommentDao, Comment> {

    @Autowired
    private CommentDao commentDao;

    /**
     * 根据歌曲id获取评论列表
     * @param songId 歌曲id
     * @return 评论列表
     */
    public List<String> getCommentBySongId(Integer songId){
        return null;
    }

}