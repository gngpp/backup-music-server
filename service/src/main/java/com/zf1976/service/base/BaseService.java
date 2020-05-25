package com.zf1976.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.util.CollectionUtils;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * 基础service
 *
 * @param <D> Dao层类
 * @param <E> 实体类
 *
 * @author lyqingye
 * @since 2020/3/27
 */
public abstract class BaseService<D extends BaseMapper<E>, E> extends ServiceImpl<D, E> {
    /**
     * 根据id集合取回对象列表
     *
     * @param idList id列表
     * @return 对象列表
     * @since 2020/04/26
     */
    @Override
    public List<E> listByIds(Collection<? extends Serializable> idList) {
        if (CollectionUtils.isEmpty(idList)) {
            return Collections.emptyList();
        }
        return baseMapper.selectBatchIds(idList);
    }

    /**
     * 对象拷贝
     *
     * @param sourcePage 原对象
     * @param translator func
     * @param <S>        目标对象
     * @return 转换结果
     */
    protected <S> IPage<S> mapPageToTarget(IPage<E> sourcePage, Function<E, S> translator) {
        final Page<S> targetPage = new Page<>(sourcePage.getCurrent(),
                                              sourcePage.getSize(),
                                              sourcePage.getTotal(),
                                              sourcePage.isSearchCount());
        final List<S> targetList = sourcePage.getRecords()
                                             .stream()
                                             .map(translator)
                                             .collect(Collectors.toList());
        targetPage.setRecords(targetList);
        return targetPage;
    }

    /**
     * 列表对象拷贝
     *
     * @param sourceList 原列表
     * @param translator func
     * @param <S>        目标对象
     * @return 转换结果
     */
    protected <S> List<S> mapListToTarget(List<E> sourceList, Function<E, S> translator) {
        return sourceList.stream()
                         .map(translator)
                         .collect(Collectors.toList());
    }

}
