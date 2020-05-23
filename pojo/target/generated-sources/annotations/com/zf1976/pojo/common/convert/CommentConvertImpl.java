package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.CommentDTO;
import com.zf1976.pojo.po.Comment;
import com.zf1976.pojo.po.Comment.CommentBuilder;
import com.zf1976.pojo.vo.CommentVO;
import com.zf1976.pojo.vo.CommentVO.CommentVOBuilder;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-23T23:32:02+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 13-ea (Oracle Corporation)"
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

        comment.id( commentDTO.getId() );
        comment.userId( commentDTO.getUserId() );
        comment.songId( commentDTO.getSongId() );
        comment.songListId( commentDTO.getSongListId() );
        comment.content( commentDTO.getContent() );
        comment.createTime( commentDTO.getCreateTime() );
        comment.type( commentDTO.getType() );
        comment.up( commentDTO.getUp() );

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
