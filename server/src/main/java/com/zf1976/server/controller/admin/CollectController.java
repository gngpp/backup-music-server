package com.zf1976.server.controller.admin;

import com.zf1976.dao.CollectDao;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.po.Collect;
import com.zf1976.service.CollectService;
import org.apache.ibatis.annotations.ResultMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午5:15
 */
@RestController
@RequestMapping(value = "/api/admin/collection")
public class CollectController {

    private CollectService collectService;


    @GetMapping("/detail")
    public DataResult<List<Collect>> getCollectByUserId(@RequestParam Integer id){
        return DataResult.success(null);
    }

}
