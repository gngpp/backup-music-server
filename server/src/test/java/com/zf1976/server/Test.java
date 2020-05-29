package com.zf1976.server;

import com.zf1976.service.common.Util;
import lombok.Data;
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
//        System.out.println(Util.getDataParentResourcesPath());
//        System.out.println(Util.getFileDataResourcesPath());
//        System.out.println(Util.getUploadAvatarFolderPath());
//        System.out.println(Util.getUploadSingerPicFolderPath());
//        System.out.println(Util.getUploadSongPicFolderPath());
//        System.out.println(Util.getUploadSongListPicFolderPath());
//        String str="hanbi";
//        System.out.println(str.equals(null));
    }
}
