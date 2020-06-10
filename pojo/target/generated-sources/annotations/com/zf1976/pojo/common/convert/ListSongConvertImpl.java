package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.ListSongDTO;
import com.zf1976.pojo.po.ListSong;
import com.zf1976.pojo.po.ListSong.ListSongBuilder;
import com.zf1976.pojo.vo.ListSongVO;
import com.zf1976.pojo.vo.ListSongVO.ListSongVOBuilder;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-10T23:50:09+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 11.0.6 (JetBrains s.r.o)"
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
    public ListSong toPo(ListSongDTO listSongDTO) {
        if ( listSongDTO == null ) {
            return null;
        }

        ListSongBuilder listSong = ListSong.builder();

        listSong.songId( listSongDTO.getSongId() );
        listSong.songListId( listSongDTO.getSongListId() );

        return listSong.build();
    }

    @Override
    public List<ListSongVO> toVoList(List<ListSong> listSongs) {
        if ( listSongs == null ) {
            return null;
        }

        List<ListSongVO> list = new ArrayList<ListSongVO>( listSongs.size() );
        for ( ListSong listSong : listSongs ) {
            list.add( toVo( listSong ) );
        }

        return list;
    }
}
