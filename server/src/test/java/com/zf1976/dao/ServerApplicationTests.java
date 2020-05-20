package com.zf1976.dao;



import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

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

    @Test
    void contextLoads() {
        adminService.list().forEach(System.out::println);
        collectService.list().forEach(System.out::println);
        commentService.list().forEach(System.out::println);
        consumerService.list().forEach(System.out::println);
        listSongService.list().forEach(System.out::println);
        rankService.list().forEach(System.out::println);
        singerService.list().forEach(System.out::println);
        songListService.list().forEach(System.out::println);
        songService.list().forEach(System.out::println);
    }

    @Test
    void encoderTest(){

    }
}
