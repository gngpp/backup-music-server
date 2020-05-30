package com.zf1976.service;

import com.power.common.util.FileUtil;
import com.zf1976.dao.SongDao;
import com.zf1976.pojo.common.business.FileUploadException;
import com.zf1976.pojo.common.business.NotDataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SongConvert;
import com.zf1976.pojo.dto.admin.SongDTO;
import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.Util;
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
 * (Song)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class SongService extends BaseService<SongDao, Song> {

    public static final Logger log = LoggerFactory.getLogger(SongService.class);

    @Autowired
    private SongDao songDao;

    @Autowired
    private SongConvert songConvert;

    /**
     * 获取所有歌曲
     *
     * @return vo list
     */
    public List<SongVO> getAllSong(){
        final List<Song> songs = super.lambdaQuery()
                                     .list();
        return songConvert.toVoList(songs);
    }

    /**
     * 返回指定歌手ID的歌曲
     *
     * @param singerId singId
     * @return SongVo
     */
    public List<SongVO> getSongOfSingerId(int singerId){
        final List<Song> songs = super.lambdaQuery()
                               .eq(Song::getSingerId, singerId)
                               .list();
        return songConvert.toVoList(songs);
    }

    public Void addSong(MultipartFile uploadSong,SongDTO songDTO){

        return null;
    }

    public Void uploadSongPic(MultipartFile uploadFile,int id){

        if (uploadFile.isEmpty()) {
            throw new FileUploadException(BusinessMsgEnum.FILE_ERROR);
        }

        final Song song = super.lambdaQuery()
                               .eq(Song::getId, id)
                               .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));
        final String oldName = uploadFile.getOriginalFilename();
        final String newName = Util.rename(oldName);
        final String folderPath = Util.getUploadSongPicFolderPath();
        final String uploadSongPicPath = Util.getUploadSongPicPath(newName);

        try {
            if (!FileUtil.mkdirs(folderPath)) {
                if (log.isInfoEnabled()) {
                    log.info("歌曲图片目录：{},已存在", folderPath);
                }
                uploadFile.transferTo(Paths.get(folderPath,newName));
                song.setPic(uploadSongPicPath);
                super.updateById(song);
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
     * 根据歌曲id返回歌曲
     *
     * @param id id
     * @return SongVo
     */
    public SongVO getSongOfId(int id){
        final Song song = super.lambdaQuery()
                               .eq(Song::getId, id)
                               .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));
        return songConvert.toVo(song);
    }

    /**
     * 返回指定歌手名歌曲
     * @param name name
     * @return vo
     */
    public SongVO getSongBySingerName(String name){
        final Song song = super.lambdaQuery()
                               .like(Song::getName,name)
                               .oneOpt().orElseThrow(() -> new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION));
        return songConvert.toVo(song);
    }

    /**
     * 根据歌曲id更新信息
     *
     * @param songDTO dto
     * @return null
     */
    public Void updateSongMsg(SongDTO songDTO){
        final Song song = songConvert.toVo(songDTO);
        super.updateById(song);
        return null;
    }

    /**
     * 根据歌曲id删除歌曲
     *
     * @param id id
     * @return null
     */
    public Void deleteSong(int id){
        super.removeById(id);
        return null;
    }

}
