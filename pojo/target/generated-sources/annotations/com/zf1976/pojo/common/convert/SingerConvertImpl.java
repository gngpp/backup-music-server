package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.dto.admin.SingerDTO;
import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.po.Singer.SingerBuilder;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.pojo.vo.SingerVO.SingerVOBuilder;
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
public class SingerConvertImpl implements SingerConvert {

    @Override
    public Singer toPo(SingerDTO dto) {
        if ( dto == null ) {
            return null;
        }

        SingerBuilder singer = Singer.builder();

        singer.id( dto.getId() );
        singer.name( dto.getName() );
        singer.sex( dto.getSex() );
        singer.pic( dto.getPic() );
        singer.birth( dto.getBirth() );
        singer.location( dto.getLocation() );
        singer.introduction( dto.getIntroduction() );

        return singer.build();
    }

    @Override
    public SingerVO toVo(Singer singer) {
        if ( singer == null ) {
            return null;
        }

        SingerVOBuilder singerVO = SingerVO.builder();

        singerVO.id( singer.getId() );
        singerVO.name( singer.getName() );
        singerVO.sex( singer.getSex() );
        singerVO.pic( singer.getPic() );
        singerVO.birth( singer.getBirth() );
        singerVO.location( singer.getLocation() );
        singerVO.introduction( singer.getIntroduction() );

        return singerVO.build();
    }

    @Override
    public List<SingerVO> toVoList(List<Singer> singers) {
        if ( singers == null ) {
            return null;
        }

        List<SingerVO> list = new ArrayList<SingerVO>( singers.size() );
        for ( Singer singer : singers ) {
            list.add( toVo( singer ) );
        }

        return list;
    }
}
