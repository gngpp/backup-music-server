package com.zf1976.server.common;

import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.util.Base64Utils;
import org.springframework.util.CollectionUtils;
import org.springframework.util.DigestUtils;
import org.springframework.util.ReflectionUtils;

import java.io.File;
import java.io.IOException;
import java.util.Objects;

/**
 * @author ant
 * Create by Ant on 2020/5/20 下午1:36
 */
public final class SpringUtils {

    public final static PathMatchingResourcePatternResolver PATH_UTIL = new PathMatchingResourcePatternResolver();

    public static String getDataResourcesPath(){
        try {
            return "file:"+new File("").getCanonicalFile()
                                         .getParentFile()
                                         .getPath()+"/data/";
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getDataImgResourcesPath(){
        try {
            return "file:"+new File("").getCanonicalFile()
                                       .getParentFile()
                                       .getPath()+"/server/data/img/";
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getDataSongResourcesPath(){
        try {
            return "file:"+new File("").getCanonicalFile()
                                       .getParentFile()
                                       .getPath()+"/server/data/song/";
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getDataAvatarResourcesPath(){
        try {
            return "file:"+new File("").getCanonicalFile()
                                       .getParentFile()
                                       .getPath()+"/server/data/avatarImages/";
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

}
