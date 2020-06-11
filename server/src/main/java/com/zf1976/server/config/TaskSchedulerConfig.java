package com.zf1976.server.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.TaskScheduler;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;

/**
 * @author mac
 * Create by Ant on 2020/6/11 11:03 上午
 */
@Configuration
@EnableScheduling
public class TaskSchedulerConfig {

    @Bean
    public TaskScheduler taskScheduler(){
        final ThreadPoolTaskScheduler scheduler = new ThreadPoolTaskScheduler();
        final int processors = Runtime.getRuntime()
                             .availableProcessors();
        scheduler.setPoolSize(processors);
        return scheduler;
    }
}
