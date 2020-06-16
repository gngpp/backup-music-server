package com.zf1976.dao;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.po.UsernamePassword;
import org.apache.ibatis.annotations.Select;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

/**
 * (Consumer)表数据库访问层
 *
 * @author makejava
 * @since 2020-05-17 22:15:00
 */
@Repository
public interface ConsumerDao extends BaseMapper<Consumer> {

}
