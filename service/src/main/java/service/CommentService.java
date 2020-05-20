package service;

import dao.CommentDao;
import po.Comment;
import service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (Comment)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class CommentService extends BaseService<CommentDao,Comment> {
    @Autowired
    private CommentDao commentDao;
}