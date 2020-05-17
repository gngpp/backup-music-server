package service.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.AdminMapper;
import service.service.AdminService;
import org.springframework.stereotype.Service;
import web.po.Admin;


import javax.annotation.Resource;
/**
 * (Admin)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("adminService")
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin> implements AdminService {
    
    @Resource
    private AdminMapper adminMapper;
}