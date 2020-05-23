package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.conditions.query.QueryChainWrapper;
import com.zf1976.dao.CollectDao;
import com.zf1976.dao.SongDao;
import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.business.NotCollectException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.CollectConvert;
import com.zf1976.pojo.po.Collect;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.vo.CollectVO;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.print.attribute.standard.PrinterURI;
import java.util.ArrayList;
import java.util.Collections;
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
     * @param userId 客户id
     * @return 收藏列表
     */
    public List<CollectVO> getCollectByUserId(Integer userId){
        final LambdaQueryChainWrapper<Collect> eq = super.lambdaQuery()
                                                         .eq(Collect::getUserId, userId);
        final List<Collect> collects = collectDao.selectList(eq);
        return collectConvert.toVOList(collects);
    }

    /**
     * 根据客户删除收藏歌曲
     * @param userId 客户id
     * @param songId 歌曲id
     * @return null
     */
    public Void deleteCollect(Integer userId,Integer songId){
        final Collect collect = super.lambdaQuery()
                                    .eq(Collect::getUserId, userId)
                                    .eq(Collect::getSongId, songId)
                                    .oneOpt()
                                    .orElseThrow(() -> new NotCollectException(BusinessMsgEnum.FAIL_EXCEPTION));

        collectDao.deleteById(collect.getId());
        return null;
    }
}