package com.zf1976.service;

import com.zf1976.dao.SingerDao;
import com.zf1976.pojo.common.convert.SingerConvert;
import com.zf1976.pojo.dto.SingerDTO;
import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.service.base.BaseService;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (Singer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SingerService extends BaseService<SingerDao, Singer> {

    @Autowired
    private SingerDao singerDao;

    @Autowired
    private SingerConvert singerConvert;

    /**
     * 返回所有歌手
     *
     * @return 所有歌手
     */
    public List<SingerVO> getAllSinger(){
        final List<Singer> singers = super.lambdaQuery()
                                       .list();
        return singerConvert.toVoList(singers);
    }

    /**
     * 添加歌手
     *
     * @param singerDTO dto
     * @return null
     */
    public Void addSinger(SingerDTO singerDTO){
        final Singer singer = singerConvert.toPo(singerDTO);
        singerDao.insert(singer);
        return null;
    }

    /**
     * 根据歌手id更新信息
     *
     * @param singerDTO dto
     * @return null
     */
    public Void updateSingerMsg(SingerDTO singerDTO){
        final Singer singer = singerConvert.toPo(singerDTO);
        singerDao.updateById(singer);
        return null;
    }

    /**
     * 根据歌手id删除歌手
     * @param id id
     * @return null
     */
    public Void deleteSinger(Integer id){
        singerDao.deleteById(id);
        return null;
    }
}