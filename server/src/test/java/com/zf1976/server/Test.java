package com.zf1976.server;

import com.power.common.util.UUIDUtil;
import org.springframework.beans.factory.annotation.Value;

import java.io.IOException;


/**
 * @author ant
 * Create by Ant on 2020/5/20 下午12:11
 */

public class Test {

    @Value("${file.fileSize}")
    private Long fileSize;
    public static void main(String[] args) throws IOException {
//        System.out.println(ResourcePathUtil.getDataParentResourcesPath());
//        System.out.println(ResourcePathUtil.getFileDataResourcesPath());
//        System.out.println(ResourcePathUtil.getUploadAvatarFolderPath());
//        System.out.println(ResourcePathUtil.getUploadSingerPicFolderPath());
//        System.out.println(ResourcePathUtil.getUploadSongPicFolderPath());
//        System.out.println(ResourcePathUtil.getUploadSongListPicFolderPath());
//        String str="hanbi";
//        System.out.println(str.equals(null));
        System.out.println(UUIDUtil.getUuid32());
    }
}
