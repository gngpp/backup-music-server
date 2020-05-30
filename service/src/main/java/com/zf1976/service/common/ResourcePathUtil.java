package com.zf1976.service.common;

import com.power.common.util.UUIDUtil;
import com.zf1976.pojo.common.business.enums.PathNameEnum;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.UUID;

/**
 * @author ant
 * Create by Ant on 2020/5/20 下午1:36
 */
public final class ResourcePathUtil {

    public final static PathMatchingResourcePatternResolver PATH_UTIL = new PathMatchingResourcePatternResolver();

    public static SimpleDateFormat SIMPLE_DATE_FORMAT = null;

    public static String getFileDataResourcesPath() {
        return PathNameEnum.FILE.path + getDataParentResourcesPath() + PathNameEnum.DATA.path;
    }

    public static String getDataParentResourcesPath() {

        try {
            File baseFile = new File("");
            return baseFile.getCanonicalFile()
                           .getParent();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static SimpleDateFormat getSimpleDateFormat(){
        if (SIMPLE_DATE_FORMAT == null) {
            SIMPLE_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }
        return SIMPLE_DATE_FORMAT;
    }

    public static String getUuid(){
        return UUIDUtil.getUuid32();
    }

    public static Long getCurrentTimeMillis(){
        return System.currentTimeMillis();
    }

    public static String rename(String oldName){
        final String substring = oldName.substring(oldName.lastIndexOf("."));
        return getUuid()+substring;
    }

    public static String getUploadAvatarFolderPath(){
        return getDataParentResourcesPath()+PathNameEnum.DATA.path+PathNameEnum.AVATAR_IMAGES.path;
    }

    public static String getUploadAvatarPath(String fileName){
        return PathNameEnum.AVATAR_IMAGES.path+fileName;
    }

    public static String getUploadSingerPicFolderPath(){
        return getDataParentResourcesPath()+PathNameEnum.DATA.path+PathNameEnum.IMG_SINGER_PIC.path;
    }

    public static String getUploadSingerPicPath(String fileName){
        return PathNameEnum.IMG_SINGER_PIC.path+fileName;
    }

    public static String getUploadSongPicFolderPath(){
        return getDataParentResourcesPath()+PathNameEnum.DATA.path+PathNameEnum.IMG_SONG_PIC.path;
    }

    public static String getUploadSongPicPath(String fileName){
        return PathNameEnum.IMG_SONG_PIC.path+fileName;
    }

    public static String getUploadSongListPicFolderPath(){
        return getDataParentResourcesPath()+PathNameEnum.DATA.path+PathNameEnum.IMG_SONG_LIST_PIC.path;
    }

    public static String getUploadSongListPicPath(String fileName){
        return PathNameEnum.IMG_SONG_LIST_PIC.path+fileName;
    }
}
