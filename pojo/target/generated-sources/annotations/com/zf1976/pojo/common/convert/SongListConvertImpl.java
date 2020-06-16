package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.SongListDTO;
import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.po.SongList.SongListBuilder;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.pojo.vo.SongListVO.SongListVOBuilder;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-16T22:23:20+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
)
@Component
public class SongListConvertImpl implements SongListConvert {

    @Override
    public SongList toPo(SongListVO songListVO) {
        if ( songListVO == null ) {
            return null;
        }

        SongListBuilder songList = SongList.builder();

        songList.id( songListVO.getId() );
        songList.title( songListVO.getTitle() );
        songList.pic( songListVO.getPic() );
        songList.introduction( songListVO.getIntroduction() );
        songList.style( songListVO.getStyle() );

        return songList.build();
    }

    @Override
    public SongList toPo(SongListDTO songListDTO) {
        if ( songListDTO == null ) {
            return null;
        }

        SongListBuilder songList = SongList.builder();

        songList.id( songListDTO.getId() );
        songList.title( songListDTO.getTitle() );
        songList.pic( songListDTO.getPic() );
        songList.introduction( songListDTO.getIntroduction() );
        songList.style( songListDTO.getStyle() );

        return songList.build();
    }

    @Override
    public SongListVO toVo(SongList songList) {
        if ( songList == null ) {
            return null;
        }

        SongListVOBuilder songListVO = SongListVO.builder();

        songListVO.id( songList.getId() );
        songListVO.title( songList.getTitle() );
        songListVO.pic( songList.getPic() );
        songListVO.introduction( songList.getIntroduction() );
        songListVO.style( songList.getStyle() );

        return songListVO.build();
    }

    @Override
    public List<SongListVO> toVoList(List<SongList> songLists) {
        if ( songLists == null ) {
            return null;
        }

        List<SongListVO> list = new ArrayList<SongListVO>( songLists.size() );
        for ( SongList songList : songLists ) {
            list.add( toVo( songList ) );
        }

        return list;
    }
}
