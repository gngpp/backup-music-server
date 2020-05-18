package service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.CommentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CommentService;
import po.Comment;

import javax.annotation.Resource;

/**
 * (Comment)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("commentService")
public class CommentServiceImpl extends ServiceImpl<CommentDao, Comment> implements CommentService {

    @Autowired
    private CommentDao commentDao;
}