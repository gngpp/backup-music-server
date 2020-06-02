package com.zf1976.server;

import com.zf1976.dao.CommentDao;
import com.zf1976.dao.RankDao;
import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.po.Rank;
import com.zf1976.service.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@SpringBootTest
public class ServerApplicationTests {

    @Autowired
    private AdminService adminService;

    @Autowired
    private CollectService collectService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private ConsumerService consumerService;

    @Autowired
    private ListSongService listSongService;

    @Autowired
    private RankService rankService;

    @Autowired
    private SingerService singerService;

    @Autowired
    private SongListService songListService;

    @Autowired
    private SongService songService;

    @Resource
    private ConsumerConvert consumerConvert;

    @Autowired
    private RankDao rankDao;

    @Autowired
    private CommentDao dao;
    @Test
    void contextLoads() {
        commentService.getUserCommentBySongId(0)
                      .forEach(System.out::println);
    }
}
