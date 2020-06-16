package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.SongDTO;
import com.zf1976.pojo.dto.app.StatisticalDTO;
import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.po.Song.SongBuilder;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.pojo.vo.SongVO.SongVOBuilder;
import com.zf1976.pojo.vo.app.StatisticalVO;
import com.zf1976.pojo.vo.app.StatisticalVO.StatisticalVOBuilder;
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
        song.downloads( songVO.getDownloads() );
        song.playCount( songVO.getPlayCount() );
        song.isPay( songVO.getIsPay() );

        return song.build();
    }

    @Override
    public StatisticalVO toStatisticalVo(Song song) {
        if ( song == null ) {
            return null;
        }

        StatisticalVOBuilder statisticalVO = StatisticalVO.builder();

        statisticalVO.id( song.getId() );
        statisticalVO.downloads( song.getDownloads() );
        statisticalVO.playCount( song.getPlayCount() );

        return statisticalVO.build();
    }

    @Override
    public Song toPo(StatisticalDTO statisticalDTO) {
        if ( statisticalDTO == null ) {
            return null;
        }

        SongBuilder song = Song.builder();

        song.id( statisticalDTO.getId() );
        song.downloads( statisticalDTO.getDownloads() );
        song.playCount( statisticalDTO.getPlayCount() );

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
        songVO.downloads( song.getDownloads() );
        songVO.playCount( song.getPlayCount() );
        songVO.isPay( song.getIsPay() );

        return songVO.build();
    }

    @Override
    public Song toVo(SongDTO songDTO) {
        if ( songDTO == null ) {
            return null;
        }

        SongBuilder song = Song.builder();

        song.id( songDTO.getId() );
        song.singerId( songDTO.getSingerId() );
        song.name( songDTO.getName() );
        song.introduction( songDTO.getIntroduction() );
        song.lyric( songDTO.getLyric() );

        return song.build();
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
