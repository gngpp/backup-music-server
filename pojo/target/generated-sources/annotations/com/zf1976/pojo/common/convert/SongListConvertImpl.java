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
    date = "2020-06-21T21:59:10+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
)
@Component
public class SongListConvertImpl implements SongListConvert {

    @Override
    public SongList toPo(SongListVO vo) {
        if ( vo == null ) {
            return null;
        }

        SongListBuilder songList = SongList.builder();

        songList.id( vo.getId() );
        songList.title( vo.getTitle() );
        songList.pic( vo.getPic() );
        songList.introduction( vo.getIntroduction() );
        songList.style( vo.getStyle() );

        return songList.build();
    }

    @Override
    public SongList toPo(SongListDTO dto) {
        if ( dto == null ) {
            return null;
        }

        SongListBuilder songList = SongList.builder();

        songList.id( dto.getId() );
        songList.title( dto.getTitle() );
        songList.pic( dto.getPic() );
        songList.introduction( dto.getIntroduction() );
        songList.style( dto.getStyle() );

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
    public List<SongListVO> toVoList(List<SongList> list) {
        if ( list == null ) {
            return null;
        }

        List<SongListVO> list1 = new ArrayList<SongListVO>( list.size() );
        for ( SongList songList : list ) {
            list1.add( toVo( songList ) );
        }

        return list1;
    }
}
