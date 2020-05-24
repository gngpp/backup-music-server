package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author ant
 * Create by Ant on 2020/5/24 下午7:25
 */
@RestController
@RequestMapping(value = "/api/admin")
@AdminRestController
@SuppressWarnings("rawtypes")
public class SongController {

    @Autowired
    private SongService songService;

}
