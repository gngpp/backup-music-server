package com.zf1976.service;

import com.zf1976.dao.CollectDao;
import com.zf1976.pojo.common.business.NotDataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.CollectConvert;
import com.zf1976.pojo.po.Collect;
import com.zf1976.pojo.vo.CollectVO;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (Collect)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class CollectService extends BaseService<CollectDao, Collect> {

    @Autowired
    private CollectDao collectDao;

    @Autowired
    private CollectConvert collectConvert;

    /**
     * 根据客户id获取收藏集
     *
     * @param userId 客户id
     * @return 收藏列表
     */
    public List<CollectVO> getCollectByUserId(int userId){
        final List<Collect> collects = super.lambdaQuery()
                                        .eq(Collect::getUserId, userId)
                                        .list();
        return collectConvert.toVoList(collects);
    }

    /**
     * 根据客户删除收藏歌曲
     *
     * @param userId 客户id
     * @param songId 歌曲id
     * @return null
     */
    public Void deleteCollect(int userId,int songId){
        final Collect collect = super.lambdaQuery()
                                    .eq(Collect::getUserId, userId)
                                    .eq(Collect::getSongId, songId)
                                    .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));
        super.removeById(collect.getId());
        return null;
    }
}
