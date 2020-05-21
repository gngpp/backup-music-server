package com.zf1976.server;

import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.service.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

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

    @Test
    void contextLoads() {
        final ConsumerDTO dto = new ConsumerDTO();
        final Consumer po = consumerConvert.toPo(dto);
        System.out.println(po);
//
//        adminService.list().forEach(System.out::println);
//        collectService.list().forEach(System.out::println);
//        commentService.list().forEach(System.out::println);
//        consumerService.list().forEach(System.out::println);
//        listSongService.list().forEach(System.out::println);
//        rankService.list().forEach(System.out::println);
//        singerService.list().forEach(System.out::println);
//        songListService.list().forEach(System.out::println);
//        songService.list().forEach(System.out::println);
//        System.out.println(consumerService.getById(1));
    }
}
