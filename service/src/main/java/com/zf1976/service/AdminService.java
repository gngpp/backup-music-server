package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zf1976.dao.AdminDao;
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

    public synchronized Void checkLogin(AdminLoginDTO adminLoginDTO) {
        final QueryWrapper<Admin> wrapper = new QueryWrapper<>();
        wrapper.select()
               .eq("username",adminLoginDTO.getUsername());
        Admin admin = null;
            admin = adminDao.selectOne(wrapper);
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