package com.zf1976.server;

import mapper.AdminDao;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class ServerApplicationTests {


    @Resource
    private AdminDao mapper;

    @Test
    void contextLoads() {
        mapper.selectList(null).forEach(System.out::println);
    }

    @Test
    void encoderTest(){

    }
}
