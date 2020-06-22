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
    date = "2020-06-22T22:40:48+0800",
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
    public Comment toPo(CommentDTO dto) {
        if ( dto == null ) {
            return null;
        }

        CommentBuilder comment = Comment.builder();

        comment.userId( dto.getUserId() );
        comment.songId( dto.getSongId() );
        comment.songListId( dto.getSongListId() );
        comment.content( dto.getContent() );
        comment.type( dto.getType() );

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
    public List<UserCommentSetVO> toUserCommentSetVoList(List<UserCommentSet> sets) {
        if ( sets == null ) {
            return null;
        }

        List<UserCommentSetVO> list = new ArrayList<UserCommentSetVO>( sets.size() );
        for ( UserCommentSet userCommentSet : sets ) {
            list.add( toUserCommentSetVo( userCommentSet ) );
        }

        return list;
    }

    @Override
    public UserCommentSetVO toUserCommentSetVo(UserCommentSet set) {
        if ( set == null ) {
            return null;
        }

        UserCommentSetVOBuilder userCommentSetVO = UserCommentSetVO.builder();

        userCommentSetVO.id( set.getId() );
        userCommentSetVO.userId( set.getUserId() );
        userCommentSetVO.songId( set.getSongId() );
        userCommentSetVO.songListId( set.getSongListId() );
        userCommentSetVO.content( set.getContent() );
        userCommentSetVO.createTime( set.getCreateTime() );
        userCommentSetVO.type( set.getType() );
        userCommentSetVO.up( set.getUp() );
        userCommentSetVO.username( set.getUsername() );
        userCommentSetVO.avatar( set.getAvatar() );

        return userCommentSetVO.build();
    }

    @Override
    public Comment toPo(CommentVO vo) {
        if ( vo == null ) {
            return null;
        }

        CommentBuilder comment = Comment.builder();

        comment.id( vo.getId() );
        comment.userId( vo.getUserId() );
        comment.songId( vo.getSongId() );
        comment.songListId( vo.getSongListId() );
        comment.content( vo.getContent() );
        comment.createTime( vo.getCreateTime() );
        comment.type( vo.getType() );
        comment.up( vo.getUp() );

        return comment.build();
    }
}
