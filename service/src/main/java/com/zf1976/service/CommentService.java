package com.zf1976.service;

import com.zf1976.dao.CommentDao;
import com.zf1976.pojo.common.convert.CommentConvert;
import com.zf1976.pojo.dto.admin.CommentDTO;
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
     *
     * @param songId 歌曲id
     * @return 评论列表
     */
    public List<CommentVO> getCommentBySongId(int songId){
        final List<Comment> comments = super.lambdaQuery()
                                        .eq(Comment::getSongId, songId)
                                        .list();
        return commentConvert.toVoList(comments);
    }

    /**
     * 歌曲列表id获取评论列表
     *
     * @param songListId 歌曲列表id
     * @return 评论列表
     */
    public List<CommentVO> getCommentBySongListId(int songListId){
        final List<Comment> comments = super.lambdaQuery()
                                        .eq(Comment::getSongListId, songListId)
                                        .list();
        return commentConvert.toVoList(comments);
    }

    /**
     * 更新评论信息
     *
     * @param commentDTO dto
     * @return null
     */
    public Void updateCommentMsg(CommentDTO commentDTO){
        final Comment comment = commentConvert.toPo(commentDTO);
        super.updateById(comment);
        return null;
    }

    /**
     * 根据id删除评论
     *
     * @param id id
     * @return null
     */
    public Void deleteComment(int id){
        super.removeById(id);
        return null;
    }

}
