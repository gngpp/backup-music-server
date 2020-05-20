package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zf1976.dao.AdminDao;
import com.zf1976.pojo.dto.AdminLoginDTO;
import com.zf1976.pojo.po.Admin;

import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zf1976.service.base.BaseService;

import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

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

    public HashMap<String, Object> checkLogin(AdminLoginDTO adminLoginDTO){
        final HashMap<String, Object> map = new HashMap<>(2);
        final QueryWrapper<Admin> wrapper = new QueryWrapper<>();
        final String checkDoPassword;
        wrapper.select()
               .eq("username",adminLoginDTO.getUsername());
        try {
            checkDoPassword = adminDao.selectOne(wrapper).getPassword();
            if (checkDoPassword.equals(adminLoginDTO.getPassword())){
                map.put("code",200);
                return map;
            }
        } catch (Exception e) {
            e.printStackTrace();
            map.put("code",500);
            return map;
        }
        map.put("code",404);
        return map;
    }
}