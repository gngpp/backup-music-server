package com.zf1976.server;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.zf1976.dao.CommentDao;
import com.zf1976.dao.RankDao;
import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.po.ClubCard;
import com.zf1976.service.*;
import com.zf1976.service.aspect.impl.LogAspectHandlerImpl;
import com.zf1976.service.common.ResourceUtils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.ClassUtils;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;

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
    private ClubCardService clubCardService;

    @Test
 void  cardTest() throws IOException {
        String path = ClassUtils.getDefaultClassLoader().getResource("").getPath();
        System.out.println(System.getProperty("user.dir"));
    }

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
//            clubCardDao.insert(build);
        }
    }
}
