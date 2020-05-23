package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.zf1976.dao.CommentDao;
import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.convert.CommentConvert;
import com.zf1976.pojo.po.Comment;
import com.zf1976.pojo.vo.CommentVO;
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

    @Autowired
    private CommentConvert commentConvert;
    /**
     * 根据歌曲id获取评论列表
     * @param songId 歌曲id
     * @return 评论列表
     */
    public List<CommentVO> getCommentBySongId(Integer songId){
        final List<Comment> comments = super.lambdaQuery()
                                        .eq(Comment::getSongId, songId)
                                        .list();
        return commentConvert.toVoList(comments);
    }

    /**
     * 歌曲列表id获取评论列表
     * @param songListId 歌曲列表id
     * @return 评论列表
     */
    public List<CommentVO> getCommentBySongListId(Integer songListId){
        final List<Comment> comments = super.lambdaQuery()
                                        .eq(Comment::getSongListId, songListId)
                                        .list();
        return commentConvert.toVoList(comments);
    }

    /**
     * 更新评论信息
     * @param commentVO vo
     * @return null
     */
    public Void updateCommentMsg(CommentVO commentVO){
        final Comment comment = commentConvert.toPo(commentVO);
        commentDao.updateById(comment);
        return null;
    }

}