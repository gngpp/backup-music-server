package com.zf1976.server;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.zf1976.dao.ClubCardDao;
import com.zf1976.dao.CommentDao;
import com.zf1976.dao.RankDao;
import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.common.convert.SongConvert;
import com.zf1976.pojo.po.ClubCard;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.po.Rank;
import com.zf1976.service.*;
import com.zf1976.service.aspect.impl.LogAspectHandlerImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
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

    @Autowired
    PaginationInterceptor paginationInterceptor;

    @Autowired
    private LogAspectHandlerImpl logAspectHandler;

    @Autowired
    private ClubCardDao clubCardDao;
    @Test
    void contextLoads() throws IOException {
        final InputStream resourceAsStream = com.zf1976.server.Test.class.getResourceAsStream("/card_pwd.txt");
        byte[] b = new byte[100000];
        final int read = resourceAsStream.read(b);
        final String s = new String(b, 0, read);
        final String[] split = s.split("\n");
        for (String s1 : split) {
            final String[] split1 = s1.split("\t");
            final String card = split1[0];
            final String pwd = split1[1];
            final ClubCard build = ClubCard.builder()
                                           .cardNumber(DigestUtils.md5DigestAsHex(card.getBytes()))
                                           .cardPwd(DigestUtils.md5DigestAsHex(pwd.getBytes()))
                                           .build();
            clubCardDao.insert(build);
        }
    }
}
