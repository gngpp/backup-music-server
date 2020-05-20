package service;

import po.Singer;
import service.base.BaseService;
import dao.SingerDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (Singer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SingerService extends BaseService<SingerDao,Singer> {
    @Autowired
    private SingerDao singerDao;
}