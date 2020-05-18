package com.zf1976.server;

import mapper.AdminMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class ServerApplicationTests {


    @Resource
    private AdminMapper mapper;

    @Test
    void contextLoads() {
        mapper.selectList(null).forEach(System.out::println);
    }

    @Test
    void encoderTest(){

    }
}
