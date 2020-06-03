package com.zf1976.service;

import com.power.common.util.FileUtil;
import com.zf1976.dao.SongListDao;
import com.zf1976.pojo.common.business.FileUploadException;
import com.zf1976.pojo.common.business.DataException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.SongListConvert;
import com.zf1976.pojo.dto.admin.SongListDTO;
import com.zf1976.pojo.po.SongList;
import com.zf1976.pojo.vo.SongListVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.ResourcePathUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.util.Objects;

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
        isExistSongList(songListDTO.getTitle());
        final SongList songList = songListConvert.toPo(songListDTO);
        super.save(songList);
        return null;
    }

    /**
     * 歌单是否已存在
     *
     * @param title 标题
     * @return null
     */
    private Void isExistSongList(String title){
        SongList songList = null;
        try {
            songList = super.lambdaQuery()
                            .eq(SongList::getTitle, title)
                            .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));
        } catch (DataException e) {
            return null;
        }
        if (songList.getTitle().equals(title)) {
            throw new DataException(BusinessMsgEnum.DATA_SUCCESS);
        }
        return null;
    }

    /**
     * 标题是否更新
     * @param id
     * @param title
     * @return
     */
    private Void isUpdate(int id,String title){
        final SongList songList = super.lambdaQuery()
                                       .eq(SongList::getId, id)
                                       .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));

        final boolean b = Objects.equals(songList.getTitle(), title);
        if (!b){
            isExistSongList(title);
        }
        return null;
    }

    /**
     * 更新歌单封面
     *
     * @param uploadFile 上传封面
     * @param id 歌单id
     * @return null
     */
    public Void updateSongListPic(MultipartFile uploadFile,int id){

        ResourcePathUtil.uploadCheckEmpty(uploadFile);

        final SongList songList = super.lambdaQuery()
                                       .eq(SongList::getId, id)
                                       .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));

        final String oldName = uploadFile.getOriginalFilename();
        final String newName = ResourcePathUtil.rename(oldName);
        final String folderPath = ResourcePathUtil.getUploadSongListPicFolderPath();
        final String uploadSongListPicPath = ResourcePathUtil.getUploadSongListPicPath(newName);

        FileUtil.mkdirs(folderPath);

        try {

            if (log.isInfoEnabled()) {
                log.info("歌单图片目录：{},已存在",folderPath);
            }
            uploadFile.transferTo(Paths.get(folderPath,newName));
            songList.setPic(uploadSongListPicPath);
            super.updateById(songList);
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
        isUpdate(songListDTO.getId(),songListDTO.getTitle());
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

    /**
     * 根据歌单类型获取歌单
     *
     * @param style 类型
     * @return List<SongListVO>
     */
    public List<SongListVO> getSongListByLikeStyle(String style){
        final List<SongList> songLists = super.lambdaQuery()
                                         .like(SongList::getStyle, style)
                                         .list();
        return songListConvert.toVoList(songLists);
    }

    /**
     * 返回标题包含文字的歌单
     *
     * @param keywords 关键字
     * @return List<SongListVO>
     */
    public List<SongListVO> getSongListByLikeTitle(String keywords){
        final List<SongList> songLists = super.lambdaQuery()
                                         .like(SongList::getTitle, keywords)
                                         .list();
        return songListConvert.toVoList(songLists);
    }

    /**
     * 返回指定标题对应的歌单
     *
     * @param title 标题
     * @return List<SongListVO>
     */
    public  SongListVO getSongListByTitle(String title){
        final SongList songList = super.lambdaQuery()
                                       .eq(SongList::getTitle, title)
                                       .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));

        return songListConvert.toVo(songList);
    }


}
