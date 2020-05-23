package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.po.SongList.SongListBuilder;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.pojo.vo.SongListVO.SongListVOBuilder;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-23T23:32:03+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 13-ea (Oracle Corporation)"
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
}
