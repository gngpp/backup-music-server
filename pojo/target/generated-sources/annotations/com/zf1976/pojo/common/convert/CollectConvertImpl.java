package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.app.CollectDTO;
import com.zf1976.pojo.po.Collect;
import com.zf1976.pojo.po.Collect.CollectBuilder;
import com.zf1976.pojo.vo.CollectVO;
import com.zf1976.pojo.vo.CollectVO.CollectVOBuilder;
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
public class CollectConvertImpl implements CollectConvert {

    @Override
    public CollectVO toVo(Collect collect) {
        if ( collect == null ) {
            return null;
        }

        CollectVOBuilder collectVO = CollectVO.builder();

        collectVO.id( collect.getId() );
        collectVO.userId( collect.getUserId() );
        collectVO.type( collect.getType() );
        collectVO.songId( collect.getSongId() );
        collectVO.songListId( collect.getSongListId() );

        return collectVO.build();
    }

    @Override
    public Collect toPo(CollectDTO collectDTO) {
        if ( collectDTO == null ) {
            return null;
        }

        CollectBuilder collect = Collect.builder();

        collect.userId( collectDTO.getUserId() );
        collect.type( collectDTO.getType() );
        collect.songId( collectDTO.getSongId() );
        collect.songListId( collectDTO.getSongListId() );

        return collect.build();
    }

    @Override
    public List<CollectVO> toVoList(List<Collect> collectList) {
        if ( collectList == null ) {
            return null;
        }

        List<CollectVO> list = new ArrayList<CollectVO>( collectList.size() );
        for ( Collect collect : collectList ) {
            list.add( toVo( collect ) );
        }

        return list;
    }

    @Override
    public List<Collect> toPoList(List<CollectVO> collectVOList) {
        if ( collectVOList == null ) {
            return null;
        }

        List<Collect> list = new ArrayList<Collect>( collectVOList.size() );
        for ( CollectVO collectVO : collectVOList ) {
            list.add( collectVOToCollect( collectVO ) );
        }

        return list;
    }

    protected Collect collectVOToCollect(CollectVO collectVO) {
        if ( collectVO == null ) {
            return null;
        }

        CollectBuilder collect = Collect.builder();

        collect.id( collectVO.getId() );
        collect.userId( collectVO.getUserId() );
        collect.type( collectVO.getType() );
        collect.songId( collectVO.getSongId() );
        collect.songListId( collectVO.getSongListId() );

        return collect.build();
    }
}
