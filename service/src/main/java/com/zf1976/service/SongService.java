package com.zf1976.service;

import com.power.common.util.FileUtil;
import com.zf1976.dao.SongDao;
import com.zf1976.pojo.common.business.FileUploadException;
import com.zf1976.pojo.common.business.DataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SongConvert;
import com.zf1976.pojo.dto.admin.SongDTO;
import com.zf1976.pojo.po.Song;
import com.zf1976.pojo.vo.SongVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.ResourcePathUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.util.Objects;

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
    public List<SongVO> getSongBySingerId(int singerId){
        final List<Song> songs = super.lambdaQuery()
                               .eq(Song::getSingerId, singerId)
                               .list();
        return songConvert.toVoList(songs);
    }

    /**
     * 添加歌曲，附带音频
     * @param uploadFile 上传mp3文件
     * @param songDTO dto
     * @return null
     */
    public Void addSong(MultipartFile uploadFile,SongDTO songDTO){

        ResourcePathUtil.uploadCheckEmpty(uploadFile);

        isExistSong(songDTO);

        final Song song = songConvert.toVo(songDTO);
        final String oldName = uploadFile.getOriginalFilename();
        final String newName = ResourcePathUtil.rename(oldName);
        final String folderPath = ResourcePathUtil.getUploadSongFolderPath();
        final String uploadSongPath = ResourcePathUtil.getUploadSongPath(newName);

        FileUtil.mkdirs(folderPath);

            if (log.isInfoEnabled()){
                log.info("歌曲目录已存在:{}",folderPath);
            }
            try {
                uploadFile.transferTo(Paths.get(folderPath,newName));
                song.setUrl(uploadSongPath);
                super.save(song);
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
     * 更新歌曲url
     *
     * @param uploadFile 上传mp3文件
     * @param id 歌曲id
     * @return null
     */
    public Void uploadSongUrl(MultipartFile uploadFile,int id){

        ResourcePathUtil.uploadCheckEmpty(uploadFile);

        final Song song = super.lambdaQuery()
                               .eq(Song::getId, id)
                               .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));

        final String oldName = uploadFile.getOriginalFilename();
        final String newName = ResourcePathUtil.rename(oldName);
        final String folderPath = ResourcePathUtil.getUploadSongFolderPath();
        final String uploadSongPath = ResourcePathUtil.getUploadSongPath(newName);

        FileUtil.mkdirs(folderPath);

        try {
            if (log.isInfoEnabled()) {
                log.info("歌曲音频目录:{},已存在",folderPath);
            }
            uploadFile.transferTo(Paths.get(folderPath,newName));
            song.setUrl(uploadSongPath);
            super.updateById(song);
            if (log.isInfoEnabled()) {
                log.info("文件存在:{}目录下",folderPath);
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
     * 更新歌曲封面
     * @param uploadFile 上传封面
     * @param id id
     * @return null
     */
    public Void uploadSongPic(MultipartFile uploadFile,int id){

        ResourcePathUtil.uploadCheckEmpty(uploadFile);

        final Song song = super.lambdaQuery()
                               .eq(Song::getId, id)
                               .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));

        final String oldName = uploadFile.getOriginalFilename();
        final String newName = ResourcePathUtil.rename(oldName);
        final String folderPath = ResourcePathUtil.getUploadSongPicFolderPath();
        final String uploadSongPicPath = ResourcePathUtil.getUploadSongPicPath(newName);

        FileUtil.mkdirs(folderPath);

        try {
            if (log.isInfoEnabled()) {
                log.info("歌曲图片目录：{},已存在", folderPath);
            }
            uploadFile.transferTo(Paths.get(folderPath,newName));
            song.setPic(uploadSongPicPath);
            super.updateById(song);
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
     * 根据歌曲id返回歌曲
     *
     * @param id id
     * @return SongVo
     */
    public SongVO getSongById(int id){
        final Song song = super.lambdaQuery()
                               .eq(Song::getId, id)
                               .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));
        return songConvert.toVo(song);
    }

    /**
     * 返回包含歌手名歌曲
     *
     * @param name name
     * @return vo
     */
    public List<SongVO> getSongByLikeSingerName(String name){
        final List<Song> list = super.lambdaQuery()
                                     .like(Song::getName,name)
                                     .list();

        return songConvert.toVoList(list);
    }

    /**
     * 是否已存在歌曲
     *
     * @param songDTO dto
     * @return null
     */
   public Void isExistSong(SongDTO songDTO){
        Song song = null;
       try {
           song = super.lambdaQuery()
                       .eq(Song::getName, songDTO.getName())
                       .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));
       } catch (DataException e) {
           return null;
       }
       throw new DataException(BusinessMsgEnum.DATA_SUCCESS);
   }

    /**
     * 根据歌曲id更新信息
     *
     * @param songDTO dto
     * @return null
     */
    public Void updateSongMsg(SongDTO songDTO){
        isExistSong(songDTO);
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
