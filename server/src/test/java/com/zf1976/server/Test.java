package com.zf1976.server;

import com.zf1976.server.common.SpringUtils;
import java.io.IOException;


/**
 * @author ant
 * Create by Ant on 2020/5/20 下午12:11
 */
public class Test {
    public static void main(String[] args) {
        System.out.println(SpringUtils.getDataAvatarImagesResourcesPath());
        System.out.println(SpringUtils.getDataSingerPicResourcesPath());
        System.out.println(SpringUtils.getDataSongListPicResourcesPath());
        System.out.println(SpringUtils.getDataSongPicResourcesPath());
        System.out.println(SpringUtils.getDataSongResourcesPath());
    }
}
