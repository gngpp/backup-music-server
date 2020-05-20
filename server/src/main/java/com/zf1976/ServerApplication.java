package com.zf1976;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author ant
 */
@SpringBootApplication(scanBasePackages = "com.zf1976.*")
@MapperScan("com.zf1976.dao")
public class ServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServerApplication.class, args);
    }

}
