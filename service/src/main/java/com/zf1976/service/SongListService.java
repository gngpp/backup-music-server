package com.zf1976.service;

import com.power.common.util.FileUtil;
import com.zf1976.dao.SongListDao;
import com.zf1976.pojo.common.business.FileUploadException;
import com.zf1976.pojo.common.business.NotDataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SongListConvert;
import com.zf1976.pojo.dto.admin.SongListDTO;
import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.vo.ListSongVO;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.Util;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

/**
 * (SongList)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
@Slf4j
public class SongListService extends BaseService<SongListDao, SongList> {

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
        super.save(songList);
        return null;
    }

    public Void updateSongListPic(MultipartFile uploadFile,int id){

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
                if (log.isInfoEnabled()) {
                    log.info("歌单图片目录：{},已存在",folderPath);
                }
                uploadFile.transferTo(Paths.get(folderPath,newName));
                songList.setPic(uploadSongListPicPath);
                super.updateById(songList);
                if (log.isInfoEnabled()) {
                    log.info("文件存在:{}目录下", folderPath);
                }
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
        super.updateById(songList);
        return null;
    }

    /**
     * 删除歌单
     *
     * @param id 歌单id
     * @return null
     */
    public Void deleteSongList(int id){
        super.removeById(id);
        return null;
    }

    public List<SongListVO> getSongListByStyle(String style){
        final List<SongList> songLists = super.lambdaQuery()
                                         .like(SongList::getStyle, style)
                                         .list();
        return songListConvert.toVoList(songLists);
    }

    public List<SongListVO> getSongListByLikeTitle(String keywords){
        final List<SongList> songLists = super.lambdaQuery()
                                         .like(SongList::getTitle, keywords)
                                         .list();
        return songListConvert.toVoList(songLists);
    }

}
