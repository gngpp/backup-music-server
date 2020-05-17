package service.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import mapper.CommentMapper;
import org.springframework.stereotype.Service;
import service.service.CommentService;
import web.po.Comment;

import javax.annotation.Resource;

/**
 * (Comment)表服务实现类
 *
 * @author makejava
 * @since 2020-05-17 22:21:38
 */
@Service("commentService")
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {
    
    @Resource
    private CommentMapper commentMapper;
}