package com.zf1976.server.controller.admin;

import com.baomidou.mybatisplus.extension.api.R;
import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.vo.CollectVO;
import com.zf1976.service.CollectService;
import io.swagger.annotations.ApiOperation;
import io.swagger.models.auth.In;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午5:15
 */
@RestController
@AdminRestController
@SuppressWarnings("rawtypes")
@RequestMapping(value = "/api/admin")
public class CollectController {

    public static final Logger LOGGER= LoggerFactory.getLogger(CollectController.class);

    @Autowired
    private CollectService collectService;

    @ApiOperation(value = "根据客户id查询收藏集")
    @GetMapping("/collection/detail")
    public DataResult<List<CollectVO>> getCollectByUserId(@RequestParam Integer userId){
        return DataResult.success(collectService.getCollectByUserId(userId));
    }

    @ApiOperation(value = "根据客户id与歌曲id删除收藏")
    @GetMapping("/collection/delete")
    public DataResult deleteCollection(@RequestParam Integer userId,@RequestParam Integer songId){
        return DataResult.success(collectService.deleteCollect(userId,songId));
    }

}
