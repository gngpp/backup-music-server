package com.zf1976.server;

import com.zf1976.pojo.common.business.ExistPhoneException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.server.common.SpringUtils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;

/**
 * @author ant
 * Create by Ant on 2020/5/20 下午12:11
 */
public class Test {

    @org.junit.jupiter.api.Test
    public void path() throws IOException {
        throw new ExistPhoneException(BusinessMsgEnum.EXIST_PHONE);
    }

}
