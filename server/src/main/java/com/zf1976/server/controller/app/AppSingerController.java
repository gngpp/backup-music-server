package com.zf1976.server.controller.app;

import com.zf1976.pojo.anno.AppRestController;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author mac
 * Create by Ant on 2020/5/31 10:27 下午
 */
@RestController
@AppRestController
@RequestMapping(value ="/api/app")
@SuppressWarnings(("rawtypes"))
@Api("AppSingerController")
public class AppSingerController {


}
