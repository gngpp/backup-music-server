package service;

import dao.AdminDao;
import po.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.base.BaseService;

/**
 * 主键(Admin)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class AdminService extends BaseService<AdminDao,Admin> {
    @Autowired
    private AdminDao adminDao;
}