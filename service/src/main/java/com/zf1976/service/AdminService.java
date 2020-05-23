package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zf1976.dao.AdminDao;
import com.zf1976.pojo.common.business.NotExistUserException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.dto.AdminLoginDTO;
import com.zf1976.pojo.po.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zf1976.service.base.BaseService;

import java.util.HashMap;

/**
 * 主键(Admin)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class AdminService extends BaseService<AdminDao, Admin> {

    @Autowired
    private AdminDao adminDao;

    public Void checkLogin(AdminLoginDTO adminLoginDTO) {
        final Admin admin = super.lambdaQuery()
                                 .eq(Admin::getUsername, adminLoginDTO.getUsername())
                                 .oneOpt().orElseThrow(() -> new NotExistUserException(BusinessMsgEnum.NOT_EXIST_USER));

        if (admin.getPassword().equals(adminLoginDTO.getPassword())) {
                return null;
            }else {
               try {
                   throw new Exception();
               }catch (Exception e){
                   e.printStackTrace();
               }
            }
        return null;
    }
}