package com.zf1976.service;

import com.zf1976.dao.MembershipDao;
import com.zf1976.pojo.po.Membership;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author mac
 * Create by Ant on 2020/6/12 7:11 下午
 */
@Service
public class MembershipService extends BaseService<MembershipDao, Membership> {

    @Autowired
    private MembershipDao membershipDao;

    /**
     * 根据用户名开通会员
     *
     * @param username 用户名
     * @return null
     */
    public Void membershipService(String username){

        return null;
    }
}
