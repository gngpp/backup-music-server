package com.zf1976.pojo.common.convert;

import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.po.Singer.SingerBuilder;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.pojo.vo.SingerVO.SingerVOBuilder;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-05-23T23:32:03+0800",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 13-ea (Oracle Corporation)"
)
@Component
public class SingerConvertImpl implements SingerConvert {

    @Override
    public Singer toPo(SingerVO singerVO) {
        if ( singerVO == null ) {
            return null;
        }

        SingerBuilder singer = Singer.builder();

        singer.id( singerVO.getId() );
        singer.name( singerVO.getName() );
        singer.sex( singerVO.getSex() );
        singer.pic( singerVO.getPic() );
        singer.birth( singerVO.getBirth() );
        singer.location( singerVO.getLocation() );
        singer.introduction( singerVO.getIntroduction() );

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
}
