package com.zf1976.service.task;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Month;
import java.time.temporal.TemporalAmount;
import java.util.Date;

/**
 * @author mac
 * Create by Ant on 2020/6/12 8:28 下午
 */

@Component
public class MembershipTask {

    @Scheduled(cron = "0 0 0 0 1/1 ? ")
    public void membershipTask(){

    }
}
