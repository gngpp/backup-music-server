package com.zf1976.service;

import com.zf1976.dao.CommentDao;
import com.zf1976.dao.ConsumerDao;
import com.zf1976.pojo.common.convert.CommentConvert;
import com.zf1976.pojo.dto.admin.CommentDTO;
import com.zf1976.pojo.po.Comment;
import com.zf1976.pojo.vo.CommentVO;
import com.zf1976.pojo.po.UserCommentSet;
import com.zf1976.pojo.vo.app.UserCommentSetVO;
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
    private ConsumerDao consumerDao;

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
     * 根据歌曲id获取评论列表
     *
     * @param songListId 歌曲id
     * @return 评论列表
     */
    public List<CommentVO> getCommentBySongListId(int songListId){
        final List<Comment> comments = super.lambdaQuery()
                                            .eq(Comment::getSongListId, songListId)
                                            .list();
        return commentConvert.toVoList(comments);
    }

    /**
     * 根据歌单id获取评论列表
     *
     * @param songListId 歌单id
     * @return 评论列表
     */
    public List<UserCommentSetVO> getUserCommentBySongListId(int songListId){
        final List<UserCommentSet> bySongListId = commentDao.getUserCommentBySongListId(songListId);
        return commentConvert.toUserCommentVoList(bySongListId);
    }

    /**
     * 根据歌曲id获取评论列表
     *
     * @param songId 歌曲id
     * @return 评论列表
     */
    public List<UserCommentSetVO> getUserCommentBySongId(int songId){
        final List<UserCommentSet> bySongId = commentDao.getUserCommentBySongId(songId);
        return commentConvert.toUserCommentVoList(bySongId);
    }


    /**
     * 前台用户添加评论
     * @param commentDTO dto
     * @return null
     */
    public Void addComment(CommentDTO commentDTO){
        final Comment comment = commentConvert.toPo(commentDTO);
        super.save(comment);
        return null;
    }

    /**
     * 点赞
     * @param id 评论id
     * @param up 点赞次数
     * @return null
     */
    public Void addLike(int id,int up){
        final Comment comment = Comment.builder()
                                     .id(id)
                                     .up(up)
                                     .build();
        super.lambdaUpdate()
             .eq(Comment::getId,id)
             .update(comment);
        return null;
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
     * 根据id删除评论(批量删除)
     *
     * @param id id
     * @return null
     */
    public synchronized Void deleteComment(int id){
        super.removeById(id);
        return null;
    }

}
