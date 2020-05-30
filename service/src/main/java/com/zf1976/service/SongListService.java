package com.zf1976.service;

import com.power.common.util.FileUtil;
import com.zf1976.dao.SongListDao;
import com.zf1976.pojo.common.business.FileUploadException;
import com.zf1976.pojo.common.business.NotDataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SongListConvert;
import com.zf1976.pojo.dto.admin.SongListDTO;
import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * (SongList)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SongListService extends BaseService<SongListDao, SongList> {

    public static final Logger LOGGER = LoggerFactory.getLogger(SongListService.class);

    @Autowired
    private SongListDao songListDao;

    @Autowired
    private SongListConvert songListConvert;

    /**
     * 添加歌单
     *
     * @param songListDTO dto list
     * @return null
     */
    public Void addSongList(SongListDTO songListDTO){
        final SongList songList = songListConvert.toPo(songListDTO);
        songListDao.insert(songList);
        return null;
    }

    public Void updateSongListPic(MultipartFile uploadFile,Integer id){

        if (uploadFile.isEmpty()) {
            throw new FileUploadException(BusinessMsgEnum.FILE_ERROR);
        }

        final SongList songList = super.lambdaQuery()
                                       .eq(SongList::getId, id)
                                       .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));

        final String oldName = uploadFile.getOriginalFilename();
        final String newName = Util.rename(oldName);
        final String folderPath = Util.getUploadSongListPicFolderPath();
        final String uploadSongListPicPath = Util.getUploadSongListPicPath(newName);

        try {
            if (!FileUtil.mkdirs(folderPath)) {
                LOGGER.info("歌单图片目录：{},已存在",folderPath);
                final File file = new File(folderPath, newName);
                uploadFile.transferTo(file);
                songList.setPic(uploadSongListPicPath);
                songListDao.updateById(songList);
                LOGGER.info("文件存在:{}",file);
            }
        } catch (IOException e) {
            LOGGER.error(e.getMessage());
            throw new FileUploadException(BusinessMsgEnum.FILE_ERROR);
        }
        return null;
    }

    /**
     * 获取全部歌单
     *
     * @return songList vo
     */
    public List<SongListVO> getAllSongList(){
        final List<SongList> songLists = super.lambdaQuery()
                                         .list();
        return songListConvert.toVoList(songLists);
    }

    /**
     * 更新歌单信息
     *
     * @param songListDTO dto
     * @return null
     */
    public Void updateSongListMsg(SongListDTO songListDTO){
        final SongList songList = songListConvert.toPo(songListDTO);
        System.out.println(songList);
        songListDao.updateById(songList);
        return null;
    }

    /**
     * 删除歌单
     *
     * @param id 歌单id
     * @return null
     */
    public Void deleteSongList(Integer id){
        songListDao.deleteById(id);
        return null;
    }
}
