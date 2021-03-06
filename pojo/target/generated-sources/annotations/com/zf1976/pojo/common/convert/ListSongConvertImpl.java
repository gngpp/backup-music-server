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
    date = "2020-06-22T22:40:48+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
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
    public ListSong toPo(ListSongDTO dto) {
        if ( dto == null ) {
            return null;
        }

        ListSongBuilder listSong = ListSong.builder();

        listSong.songId( dto.getSongId() );
        listSong.songListId( dto.getSongListId() );

        return listSong.build();
    }

    @Override
    public List<ListSongVO> toVoList(List<ListSong> list) {
        if ( list == null ) {
            return null;
        }

        List<ListSongVO> list1 = new ArrayList<ListSongVO>( list.size() );
        for ( ListSong listSong : list ) {
            list1.add( toVo( listSong ) );
        }

        return list1;
    }
}
