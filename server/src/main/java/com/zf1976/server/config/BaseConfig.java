package com.zf1976.server.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author ant
 * Create by Ant on 2020/5/20 上午2:22
 */
@Configuration
@MapperScan(basePackages = "dao")
@ComponentScan(basePackages = {"service","com.zf1976.server.controller"})
public class BaseConfig {
}
