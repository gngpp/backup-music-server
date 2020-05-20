package com.zf1976.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author ant
 * Create by Ant on 2020/5/20 上午2:22
 */
@Configuration
@MapperScan(basePackages = "com/zf1976")
@ComponentScan(basePackages = {"com.zf1976.service","com.zf1976.server.controller"})
public class BaseConfig {
}
