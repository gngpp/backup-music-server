package com.zf1976.server.controller.verifycode;

import com.zf1976.pojo.anno.AppRestController;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author ant
 * Create by Ant on 2020/6/13 下午5:22
 */
@RestController
@AppRestController
@RequestMapping(value ="/api")
@SuppressWarnings("rawtypes")
@Api(value = "验证码接口")
public class VerifyCodeController {

}
