package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.ListSong;
import com.zf1976.pojo.po.ListSong.ListSongBuilder;
import com.zf1976.pojo.vo.ListSongVO;
import com.zf1976.pojo.vo.ListSongVO.ListSongVOBuilder;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-23T19:57:20+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 13-ea (Oracle Corporation)"
)
@Component
public class ListSongConvertImpl implements ListSongConvert {

    @Override
    public ListSongVO toVo(ListSong listSong) {
        if ( listSong == null ) {
            return null;
        }

        ListSongVOBuilder listSongVO = ListSongVO.builder();

        listSongVO.id( listSong.getId() );
        listSongVO.songId( listSong.getSongId() );
        listSongVO.songListId( listSong.getSongListId() );

        return listSongVO.build();
    }

    @Override
    public ListSong toPo(ListSongVO listSongVO) {
        if ( listSongVO == null ) {
            return null;
        }

        ListSongBuilder listSong = ListSong.builder();

        listSong.id( listSongVO.getId() );
        listSong.songId( listSongVO.getSongId() );
        listSong.songListId( listSongVO.getSongListId() );

        return listSong.build();
    }
}
