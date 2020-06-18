package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.app.RankDTO;
import com.zf1976.pojo.po.Rank;
import com.zf1976.pojo.po.Rank.RankBuilder;
import com.zf1976.pojo.vo.app.RankVO;
import com.zf1976.pojo.vo.app.RankVO.RankVOBuilder;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-18T19:25:47+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_231 (Oracle Corporation)"
)
@Component
public class RankConvertImpl implements RankConvert {

    @Override
    public Rank toPo(RankVO rankVO) {
        if ( rankVO == null ) {
            return null;
        }

        RankBuilder rank = Rank.builder();

        rank.id( rankVO.getId() );
        rank.songListId( rankVO.getSongListId() );
        rank.consumerId( rankVO.getConsumerId() );
        rank.score( rankVO.getScore() );

        return rank.build();
    }

    @Override
    public Rank toPo(RankDTO rankDTO) {
        if ( rankDTO == null ) {
            return null;
        }

        RankBuilder rank = Rank.builder();

        rank.songListId( rankDTO.getSongListId() );
        rank.consumerId( rankDTO.getConsumerId() );
        rank.score( rankDTO.getScore() );

        return rank.build();
    }

    @Override
    public RankVO toVo(Rank rank) {
        if ( rank == null ) {
            return null;
        }

        RankVOBuilder rankVO = RankVO.builder();

        rankVO.id( rank.getId() );
        rankVO.songListId( rank.getSongListId() );
        rankVO.consumerId( rank.getConsumerId() );
        rankVO.score( rank.getScore() );

        return rankVO.build();
    }
}
