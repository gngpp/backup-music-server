package service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.AdminDao;
import org.springframework.beans.factory.annotation.Autowired;
import service.AdminService;
import org.springframework.stereotype.Service;
import po.Admin;


import javax.annotation.Resource;
/**
 * (Admin)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("adminService")
public class AdminServiceImpl extends ServiceImpl<AdminDao, Admin> implements AdminService {

    @Autowired
    private AdminDao adminDao;
}