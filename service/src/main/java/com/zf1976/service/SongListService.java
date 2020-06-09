package com.zf1976.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.power.common.util.FileUtil;
import com.zf1976.dao.SongListDao;
import com.zf1976.pojo.common.RequestPage;
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
@SuppressWarnings("rawtypes")
public class SongListService extends BaseService<SongListDao, SongList> {

    @Autowired
    private SongListDao songListDao;

    @Autowired
    private SongListConvert songListConvert;

    /**
     * 添加歌单
     *
     * @param dto dto list
     * @return null
     */
    public Void addSongList(SongListDTO dto){
        isExistSongList(dto.getTitle());
        final SongList songList = songListConvert.toPo(dto);
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
        if (Objects.equals(songList.getTitle(),title)) {
            throw new DataException(BusinessMsgEnum.DATA_SUCCESS);
        }
        return null;
    }

    /**
     * 标题是否更新
     *
     * @param id id
     * @param title 标题
     * @return null
     */
    private Void isUpdate(int id,String title){
        final SongList songList = super.lambdaQuery()
                                       .eq(SongList::getId, id)
                                       .oneOpt().orElseThrow(() -> new DataException(BusinessMsgEnum.DATA_FAIL));

        if (!Objects.equals(songList.getTitle(), title)){
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
        return super.mapListToTarget(songLists,songList -> {
            return songListConvert.toVo(songList);
        });
    }

    /**
     * 分页查询歌单
     *
     * @param requestPage page data
     * @return IPage<SongListVO>
     */
    public IPage<SongListVO> getSongListPage(RequestPage<SongListDTO> requestPage){
        final Page<SongList> page = super.lambdaQuery()
                                         .page(new Page<>(requestPage.getPageNo(),
                                                          requestPage.getPageSize()));
        return super.mapPageToTarget(page,songList -> {
            return songListConvert.toVo(songList);
        });
    }

    /**
     * 更新歌单信息
     *
     * @param dto dto
     * @return null
     */
    public Void updateSongListMsg(SongListDTO dto){
        isUpdate(dto.getId(), dto.getTitle());
        final SongList songList = songListConvert.toPo(dto);
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
     * 根据歌单类型分页获取歌单
     *
     * @param requestPage page
     * @return List<SongListVO>
     */
    public IPage<SongListVO> getSongListPageByLikeStyle(RequestPage<SongListDTO> requestPage){
        final String style = requestPage.getData()
                                        .getStyle();
        final LambdaQueryWrapper<SongList> wrapper = new LambdaQueryWrapper<SongList>().like(SongList::getStyle, style);
        final Page<SongList> page = super.page(new Page<>(requestPage.getPageNo(),
                                                        requestPage.getPageSize()), wrapper);
        return super.mapPageToTarget(page,songList -> {
            return songListConvert.toVo(songList);
        });
    }

    public List<SongListVO> getSongListByLikeStyle(String style){

        final List<SongList> list = super.lambdaQuery()
                                         .like(SongList::getStyle, style)
                                         .list();
        return super.mapListToTarget(list,songList -> {
            return songListConvert.toVo(songList);
        });
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
        return super.mapListToTarget(songLists,songList -> {
            return songListConvert.toVo(songList);
        });
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
