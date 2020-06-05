package com.zf1976.server.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.common.RequestPage;
import com.zf1976.pojo.common.business.ExistPhoneException;
import com.zf1976.pojo.common.business.FileUploadException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.dto.admin.ConsumerDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.service.ConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午2:53
 */
@RestController
public class TestController {

    @Autowired
    private ConsumerService service;
    @GetMapping("/test")
    public DataResult<IPage<ConsumerVO>> test(){
        final RequestPage<ConsumerDTO> consumerRequestPage = new RequestPage<>();
        consumerRequestPage.setPage(1);
        consumerRequestPage.setLimit(5);
        return DataResult.success(service.getUserPage(consumerRequestPage));
    }
}
