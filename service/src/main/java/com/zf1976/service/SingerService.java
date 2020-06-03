package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.power.common.util.FileUtil;
import com.zf1976.dao.SingerDao;
import com.zf1976.dao.SongDao;
import com.zf1976.pojo.common.business.ExistSingerException;
import com.zf1976.pojo.common.business.FileUploadException;
import com.zf1976.pojo.common.business.DataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SingerConvert;
import com.zf1976.pojo.dto.admin.SingerDTO;
import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.ResourcePathUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.util.Objects;

/**
 * (Singer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
@Slf4j
public class SingerService extends BaseService<SingerDao, Singer> {

    @Autowired
    private SingerDao singerDao;

    @Autowired
    private SongDao songDao;

    @Autowired
    private SingerConvert singerConvert;

    /**
     * 返回所有歌手
     *
     * @return 所有歌手
     */
    public List<SingerVO> getAllSinger(){
        final List<Singer> singers = super.lambdaQuery()
                                       .list();
        return singerConvert.toVoList(singers);
    }

    /**
     * 通过性别对歌手分类
     *
     * @param sex 性别
     * @return List<SingerVO>
     */
    public List<SingerVO> getSingerBySex(int sex){
        final List<Singer> singers = super.lambdaQuery()
                                       .eq(Singer::getSex, sex)
                                       .list();
        return singerConvert.toVoList(singers);
    }

    /**
     * 添加歌手
     *
     * @param singerDTO dto
     * @return null
     */
    public Void addSinger(SingerDTO singerDTO){
        isExistSinger(singerDTO.getName());
        final Singer singer = singerConvert.toPo(singerDTO);
        super.save(singer);
        return null;
    }

    /**
     * 是否更新
     * @param id id
     * @param name name
     * @return null
     */
    private Void isUpdate(int id,String name){
        final Singer singer = super.lambdaQuery()
                                   .eq(Singer::getId, id)
                                   .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));
        final boolean b = Objects.equals(singer.getName(), name);
        if (!b) {
            isExistSinger(name);
        }
        return null;
    }

    /**
     * 是否存在歌手
     *
     * @param name 歌手名
     * @return null
     */
    private Void isExistSinger(String name){
        Singer singer=null;
        try {
            singer = super.lambdaQuery()
                        .eq(Singer::getName, name)
                        .oneOpt().orElseThrow(() -> new ExistSingerException(BusinessMsgEnum.NOT_EXIST_SINGER));
        }catch (ExistSingerException e){
            return null;
        }
        if (singer.getName().equals(name)) {
            throw new ExistSingerException(BusinessMsgEnum.EXIST_SINGER);
        }
        return null;
    }

    /**
     * 更新歌手图片
     *
     * @param uploadFile 上传图片
     * @param id 歌手id
     * @return null
     */
    public Void updateSingerPic(MultipartFile uploadFile, int id){

        ResourcePathUtil.uploadCheckEmpty(uploadFile);

        final Singer singer = super.lambdaQuery()
                                   .eq(Singer::getId, id)
                                   .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));

        final String oldName = uploadFile.getOriginalFilename();
        final String newName = ResourcePathUtil.rename(oldName);
        final String folderPath = ResourcePathUtil.getUploadSingerPicFolderPath();
        final String uploadSingerPicPath = ResourcePathUtil.getUploadSingerPicPath(newName);

        FileUtil.mkdirs(folderPath);

        try {
            if (log.isInfoEnabled()) {
                log.info("歌手图片目录：{},已存在", folderPath);
            }
            uploadFile.transferTo(Paths.get(folderPath, newName));
            singer.setPic(uploadSingerPicPath);
            super.updateById(singer);
            if (log.isInfoEnabled()) {
                log.info("文件存在:{}目录下", folderPath);
            }
        } catch (IOException e) {
            if (log.isInfoEnabled()) {
                log.info("抛出异常信息:{}",e.getMessage());
            }
            throw new FileUploadException(BusinessMsgEnum.FILE_ERROR);
        }

        return null;
    }

    /**
     * 根据歌手id更新信息
     *
     * @param singerDTO dto
     * @return null
     */
    public Void updateSingerMsg(SingerDTO singerDTO){
        isUpdate(singerDTO.getId(),singerDTO.getName());
        final Singer singer = singerConvert.toPo(singerDTO);
        super.updateById(singer);
        return null;
    }

    /**
     * 根据歌手id删除歌手 两张表需要事务
     *
     * @param id id
     * @return null
     */
    @Transactional(rollbackFor = Exception.class)
    public Void deleteSinger(int id){
        final LambdaQueryWrapper<Song> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Song::getSingerId, id);
        songDao.delete(wrapper);
        super.removeById(id);
        return null;
    }
}
