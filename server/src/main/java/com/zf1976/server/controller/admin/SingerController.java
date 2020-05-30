package com.zf1976.server.controller.admin;

import com.zf1976.pojo.anno.AdminRestController;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.dto.admin.SingerDTO;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.service.SingerService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/5/24 下午7:26
 */
@RestController
@RequestMapping(value = "/api/admin")
@AdminRestController
@SuppressWarnings("rawtypes")
public class SingerController {

    @Autowired
    private SingerService singerService;

    @ApiOperation(value = "获取所有歌手")
    @GetMapping("/singer")
    public DataResult<List<SingerVO>> getAllSinger(){
        return DataResult.success(singerService.getAllSinger());
    }

    @ApiOperation(value = "添加歌手")
    @PostMapping("/singer/add")
    public DataResult addSinger(@RequestBody SingerDTO singerDTO){
        return DataResult.success(singerService.addSinger(singerDTO));
    }

    @ApiOperation(value = "根据id删除歌手")
    @GetMapping("/singer/delete")
    public DataResult deleteSinger(@RequestParam Integer id){
        return DataResult.success(singerService.deleteSinger(id));
    }

    @ApiOperation(value = "更新歌手信息")
    @PostMapping("/singer/update")
    public DataResult updateSinger(@RequestBody SingerDTO singerDTO){
        return DataResult.success(singerService.updateSingerMsg(singerDTO));
    }

    @ApiOperation(value ="更新歌手照片")
    @PostMapping("/singer/avatar/update")
    public DataResult updatePic(@RequestParam("file") MultipartFile uploadFile,@RequestParam("id") Integer id){
        return DataResult.success(singerService.updateSingerPic(uploadFile, id));
    }

}
