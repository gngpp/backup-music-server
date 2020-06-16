package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.CommentDTO;
import com.zf1976.pojo.po.Comment;
import com.zf1976.pojo.po.Comment.CommentBuilder;
import com.zf1976.pojo.po.UserCommentSet;
import com.zf1976.pojo.vo.CommentVO;
import com.zf1976.pojo.vo.CommentVO.CommentVOBuilder;
import com.zf1976.pojo.vo.app.UserCommentSetVO;
import com.zf1976.pojo.vo.app.UserCommentSetVO.UserCommentSetVOBuilder;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-16T20:02:40+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
)
@Component
public class CommentConvertImpl implements CommentConvert {

    @Override
    public CommentVO toVo(Comment comment) {
        if ( comment == null ) {
            return null;
        }

        CommentVOBuilder commentVO = CommentVO.builder();

        commentVO.id( comment.getId() );
        commentVO.userId( comment.getUserId() );
        commentVO.songId( comment.getSongId() );
        commentVO.songListId( comment.getSongListId() );
        commentVO.content( comment.getContent() );
        commentVO.createTime( comment.getCreateTime() );
        commentVO.type( comment.getType() );
        commentVO.up( comment.getUp() );

        return commentVO.build();
    }

    @Override
    public Comment toPo(CommentDTO commentDTO) {
        if ( commentDTO == null ) {
            return null;
        }

        CommentBuilder comment = Comment.builder();

        comment.userId( commentDTO.getUserId() );
        comment.songId( commentDTO.getSongId() );
        comment.songListId( commentDTO.getSongListId() );
        comment.content( commentDTO.getContent() );
        comment.type( commentDTO.getType() );

        return comment.build();
    }

    @Override
    public List<CommentVO> toVoList(List<Comment> comments) {
        if ( comments == null ) {
            return null;
        }

        List<CommentVO> list = new ArrayList<CommentVO>( comments.size() );
        for ( Comment comment : comments ) {
            list.add( toVo( comment ) );
        }

        return list;
    }

    @Override
    public List<UserCommentSetVO> toUserCommentSetVoList(List<UserCommentSet> userCommentSets) {
        if ( userCommentSets == null ) {
            return null;
        }

        List<UserCommentSetVO> list = new ArrayList<UserCommentSetVO>( userCommentSets.size() );
        for ( UserCommentSet userCommentSet : userCommentSets ) {
            list.add( toUserCommentSetVo( userCommentSet ) );
        }

        return list;
    }

    @Override
    public UserCommentSetVO toUserCommentSetVo(UserCommentSet userCommentSet) {
        if ( userCommentSet == null ) {
            return null;
        }

        UserCommentSetVOBuilder userCommentSetVO = UserCommentSetVO.builder();

        userCommentSetVO.id( userCommentSet.getId() );
        userCommentSetVO.userId( userCommentSet.getUserId() );
        userCommentSetVO.songId( userCommentSet.getSongId() );
        userCommentSetVO.songListId( userCommentSet.getSongListId() );
        userCommentSetVO.content( userCommentSet.getContent() );
        userCommentSetVO.createTime( userCommentSet.getCreateTime() );
        userCommentSetVO.type( userCommentSet.getType() );
        userCommentSetVO.up( userCommentSet.getUp() );
        userCommentSetVO.username( userCommentSet.getUsername() );
        userCommentSetVO.avatar( userCommentSet.getAvatar() );

        return userCommentSetVO.build();
    }

    @Override
    public Comment toPo(CommentVO commentVO) {
        if ( commentVO == null ) {
            return null;
        }

        CommentBuilder comment = Comment.builder();

        comment.id( commentVO.getId() );
        comment.userId( commentVO.getUserId() );
        comment.songId( commentVO.getSongId() );
        comment.songListId( commentVO.getSongListId() );
        comment.content( commentVO.getContent() );
        comment.createTime( commentVO.getCreateTime() );
        comment.type( commentVO.getType() );
        comment.up( commentVO.getUp() );

        return comment.build();
    }
}
