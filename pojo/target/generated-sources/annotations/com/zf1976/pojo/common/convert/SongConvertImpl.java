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
    date = "2020-06-21T16:56:04+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
)
@Component
public class SongConvertImpl implements SongConvert {

    @Override
    public Song toPo(SongVO vo) {
        if ( vo == null ) {
            return null;
        }

        SongBuilder song = Song.builder();

        song.id( vo.getId() );
        song.singerId( vo.getSingerId() );
        song.name( vo.getName() );
        song.introduction( vo.getIntroduction() );
        song.createTime( vo.getCreateTime() );
        song.updateTime( vo.getUpdateTime() );
        song.pic( vo.getPic() );
        song.lyric( vo.getLyric() );
        song.url( vo.getUrl() );
        song.downloads( vo.getDownloads() );
        song.playCount( vo.getPlayCount() );
        song.isPay( vo.getIsPay() );

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
    public Song toPo(StatisticalDTO dto) {
        if ( dto == null ) {
            return null;
        }

        SongBuilder song = Song.builder();

        song.id( dto.getId() );
        song.downloads( dto.getDownloads() );
        song.playCount( dto.getPlayCount() );

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
    public Song toVo(SongDTO dto) {
        if ( dto == null ) {
            return null;
        }

        SongBuilder song = Song.builder();

        song.id( dto.getId() );
        song.singerId( dto.getSingerId() );
        song.name( dto.getName() );
        song.introduction( dto.getIntroduction() );
        song.lyric( dto.getLyric() );

        return song.build();
    }

    @Override
    public List<SongVO> toVoList(List<Song> list) {
        if ( list == null ) {
            return null;
        }

        List<SongVO> list1 = new ArrayList<SongVO>( list.size() );
        for ( Song song : list ) {
            list1.add( toVo( song ) );
        }

        return list1;
    }
}
