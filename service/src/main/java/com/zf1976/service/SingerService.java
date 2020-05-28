package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.zf1976.dao.SingerDao;
import com.zf1976.dao.SongDao;
import com.zf1976.pojo.common.business.NotDataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SingerConvert;
import com.zf1976.pojo.dto.SingerDTO;
import com.zf1976.pojo.po.Singer;
import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.vo.SingerVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.Util;
import io.swagger.models.auth.In;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;

/**
 * (Singer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SingerService extends BaseService<SingerDao, Singer> {

    public static final Logger LOGGER = LoggerFactory.getLogger(SingerService.class);

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
     * 添加歌手
     *
     * @param singerDTO dto
     * @return null
     */
    public Void addSinger(SingerDTO singerDTO){
        final Singer singer = singerConvert.toPo(singerDTO);
        singerDao.insert(singer);
        return null;
    }

    public Void updateSingerPic(MultipartFile multipartFile,Integer id){

        if (multipartFile.isEmpty()) {
            throw new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION);
        }

        final Singer singer = super.lambdaQuery()
                                   .eq(Singer::getId, id)
                                   .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));

        try {
            final String oldName = multipartFile.getOriginalFilename();
            final String newName = Util.rename(oldName);
            final String folderPath = Util.getUploadSingerPicFolderPath();
            final String uploadSingerPicPath = Util.getUploadSingerPicPath(newName);
            final File folder = new File(folderPath);
            singer.setPic(newName);
            if (folder.exists()){
                final File file = new File(folder, uploadSingerPicPath);
                multipartFile.transferTo(file);
                singerDao.updateById(singer);
                LOGGER.info("上传文件存在:{}",file);
            }
        } catch (Exception e) {
            e.printStackTrace();
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
        final Singer singer = singerConvert.toPo(singerDTO);
        singerDao.updateById(singer);
        return null;
    }

    /**
     * 根据歌手id删除歌手
     *
     * @param id id
     * @return null
     */
    public Void deleteSinger(Integer id){
        final LambdaQueryWrapper<Song> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Song::getSingerId, id);
        songDao.delete(wrapper);
        singerDao.deleteById(id);
        return null;
    }
}
