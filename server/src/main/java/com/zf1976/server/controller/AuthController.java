package com.zf1976.server.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.common.RequestPage;
import com.zf1976.pojo.dto.admin.ConsumerDTO;
import com.zf1976.pojo.po.UsernamePassword;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.service.impl.ConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午2:53
 */
@RestController
@RequestMapping(value = "/tasks")
public class AuthController {

    @GetMapping
    public String listTasks(){
        return "任务列表";
    }

    @PostMapping
    public String newTasks(){
        return "创建了一个新的任务";
    }

    @PutMapping("/{taskId}")
    public String updateTasks(@PathVariable("taskId")Integer id){
        return "更新了一下id为:"+id+"的任务";
    }

    @DeleteMapping("/{taskId}")
    public String deleteTasks(@PathVariable("taskId")Integer id){
        return "删除了id为:"+id+"的任务";
    }

}
