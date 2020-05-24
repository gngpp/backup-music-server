package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.po.Song.SongBuilder;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.pojo.vo.SongVO.SongVOBuilder;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-24T21:32:13+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 13-ea (Oracle Corporation)"
)
@Component
public class SongConvertImpl implements SongConvert {

    @Override
    public Song toPo(SongVO songVO) {
        if ( songVO == null ) {
            return null;
        }

        SongBuilder song = Song.builder();

        song.id( songVO.getId() );
        song.singerId( songVO.getSingerId() );
        song.name( songVO.getName() );
        song.introduction( songVO.getIntroduction() );
        song.createTime( songVO.getCreateTime() );
        song.updateTime( songVO.getUpdateTime() );
        song.pic( songVO.getPic() );
        song.lyric( songVO.getLyric() );
        song.url( songVO.getUrl() );

        return song.build();
    }

    @Override
    public SongVO toVo(Song song) {
        if ( song == null ) {
            return null;
        }

        SongVOBuilder songVO = SongVO.builder();

        songVO.id( song.getId() );
        songVO.singerId( song.getSingerId() );
        songVO.name( song.getName() );
        songVO.introduction( song.getIntroduction() );
        songVO.createTime( song.getCreateTime() );
        songVO.updateTime( song.getUpdateTime() );
        songVO.pic( song.getPic() );
        songVO.lyric( song.getLyric() );
        songVO.url( song.getUrl() );

        return songVO.build();
    }

    @Override
    public List<SongVO> toVoList(List<Song> songs) {
        if ( songs == null ) {
            return null;
        }

        List<SongVO> list = new ArrayList<SongVO>( songs.size() );
        for ( Song song : songs ) {
            list.add( toVo( song ) );
        }

        return list;
    }
}
